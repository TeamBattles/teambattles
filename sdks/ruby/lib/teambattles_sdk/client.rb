# frozen_string_literal: true

# Hand-written convenience wrapper for the TeamBattles Ruby SDK.
#
# Reconciled against the Kiota-generated client (kiota 1.32.0): the generated entry point is the class
# TeamBattlesSdk::Generated::TeamBattlesApiClient, required from generated/team_battles_api_client.rb, and
# constructed with a single request adapter (`TeamBattlesApiClient.new(adapter)`). It self-registers the
# JSON serializer/deserializer and defaults base_url to https://teambattles.gg/api/v1.

require "uri"
require "microsoft_kiota_abstractions"
require "microsoft_kiota_faraday"

require_relative "generated/team_battles_api_client"

module TeamBattlesSdk
  DEFAULT_BASE_URL = "https://teambattles.gg/api/v1"

  # Returns the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
  # matching the server's expected `Authorization: Bearer tb_<key>` header.
  #
  # kiota-ruby's BaseBearerTokenAuthenticationProvider calls
  # `get_authorization_token(...).resume` on the provider, so the method must return a
  # Fiber that yields the raw key (not the key string itself). The allowed-hosts validator
  # is exposed through the `host_validator` accessor declared by the AccessTokenProvider mixin.
  class StaticKeyAccessTokenProvider
    include MicrosoftKiotaAbstractions::AccessTokenProvider

    def initialize(api_key, host)
      @api_key = api_key
      @host_validator = MicrosoftKiotaAbstractions::AllowedHostsValidator.new([host])
    end

    def get_authorization_token(_uri, _additional_authentication_context = {})
      key = @api_key
      Fiber.new { key }
    end
  end

  # Create a fully-wired TeamBattles API client in one call.
  #
  # api_key:  Your TeamBattles API key (e.g. "tb_..."). Sent as `Authorization: Bearer <api_key>`.
  # base_url: Override the API base URL (defaults to production).
  def self.create_client(api_key, base_url = DEFAULT_BASE_URL)
    host = URI.parse(base_url).host
    token_provider = StaticKeyAccessTokenProvider.new(api_key, host)
    auth_provider = MicrosoftKiotaAbstractions::BaseBearerTokenAuthenticationProvider.new(token_provider)
    adapter = MicrosoftKiotaFaraday::FaradayRequestAdapter.new(auth_provider)
    adapter.set_base_url(base_url)
    TeamBattlesSdk::Generated::TeamBattlesApiClient.new(adapter)
  end
end

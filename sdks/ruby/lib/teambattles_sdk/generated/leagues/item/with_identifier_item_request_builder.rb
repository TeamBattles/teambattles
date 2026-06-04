require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/league_profile_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../leagues'
require_relative './bans/bans_request_builder'
require_relative './item'
require_relative './members/members_request_builder'
require_relative './penalties/penalties_request_builder'
require_relative './rules/rules_request_builder'
require_relative './seasons/seasons_request_builder'
require_relative './standings/standings_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                ## 
                # Builds and executes requests for operations under #leagues#{identifier}
                class WithIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The bans property
                    def bans()
                        return TeamBattlesSdk::Generated::Leagues::Item::Bans::BansRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The members property
                    def members()
                        return TeamBattlesSdk::Generated::Leagues::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The penalties property
                    def penalties()
                        return TeamBattlesSdk::Generated::Leagues::Item::Penalties::PenaltiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The rules property
                    def rules()
                        return TeamBattlesSdk::Generated::Leagues::Item::Rules::RulesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The seasons property
                    def seasons()
                        return TeamBattlesSdk::Generated::Leagues::Item::Seasons::SeasonsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The standings property
                    def standings()
                        return TeamBattlesSdk::Generated::Leagues::Item::Standings::StandingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}")
                    end
                    ## 
                    ## Returns the public profile for a single league, resolved by slug. Requires the leagues.league_public:read permission.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of league_profile_response
                    ## 
                    def post(request_configuration=nil)
                        request_info = self.to_post_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfileResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns the public profile for a single league, resolved by slug. Requires the leagues.league_public:read permission.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_post_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a with_identifier_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithIdentifierItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

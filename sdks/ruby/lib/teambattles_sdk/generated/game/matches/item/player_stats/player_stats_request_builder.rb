require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/game_player_stats_body'
require_relative '../../../../models/game_player_stats_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../game'
require_relative '../../matches'
require_relative '../item'
require_relative './player_stats'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                module Item
                    module PlayerStats
                        ## 
                        # Builds and executes requests for operations under #game#matches#{matchId}#player-stats
                        class PlayerStatsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new PlayerStatsRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/game/matches/{matchId}/player-stats")
                            end
                            ## 
                            ## Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
                            ## @param body Request body for submitting or updating player stats for an existing map score.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of game_player_stats_response
                            ## 
                            def post(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_post_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GamePlayerStatsResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
                            ## @param body Request body for submitting or updating player stats for an existing map score.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_post_request_information(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :POST
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a player_stats_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return PlayerStatsRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

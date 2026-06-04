require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/game_batch_scores_body'
require_relative '../../../../models/game_batch_scores_response'
require_relative '../../../../models/game_scores_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../game'
require_relative '../../matches'
require_relative '../item'
require_relative './item/with_map_index_item_request_builder'
require_relative './scores'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                module Item
                    module Scores
                        ## 
                        # Builds and executes requests for operations under #game#matches#{matchId}#scores
                        class ScoresRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Gets an item from the TeamBattlesSdk::Generated.game.matches.item.scores.item collection
                            ## @param map_index Zero-based index of the map within the series.
                            ## @return a with_map_index_item_request_builder
                            ## 
                            def by_map_index(map_index)
                                raise StandardError, 'map_index cannot be null' if map_index.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["mapIndex"] = map_index
                                return TeamBattlesSdk::Generated::Game::Matches::Item::Scores::Item::WithMapIndexItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new ScoresRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/game/matches/{matchId}/scores")
                            end
                            ## 
                            ## Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of game_scores_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameScoresResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
                            ## @param body Request body for submitting one or more map scores in a single call.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of game_batch_scores_response
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
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameBatchScoresResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_get_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :GET
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
                            ## @param body Request body for submitting one or more map scores in a single call.
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
                            ## @return a scores_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return ScoresRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

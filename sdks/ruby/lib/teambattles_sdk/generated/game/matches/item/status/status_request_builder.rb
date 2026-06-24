require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/game_status_update_body'
require_relative '../../../../models/game_status_update_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../game'
require_relative '../../matches'
require_relative '../item'
require_relative './status'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                module Item
                    module Status
                        ## 
                        # Builds and executes requests for operations under #game#matches#{matchId}#status
                        class StatusRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new StatusRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/game/matches/{matchId}/status")
                            end
                            ## 
                            ## Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
                            ## @param body Request body for updating a match's lifecycle status.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of game_status_update_response
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameStatusUpdateResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
                            ## @param body Request body for updating a match's lifecycle status.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_patch_request_information(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a status_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return StatusRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

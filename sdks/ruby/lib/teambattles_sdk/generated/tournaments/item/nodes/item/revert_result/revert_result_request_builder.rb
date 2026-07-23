require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_revert_node_result_body'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../nodes'
require_relative '../item'
require_relative './revert_result'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Nodes
                    module Item
                        module RevertResult
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#nodes#{nodeId}#revert-result
                            class RevertResultRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RevertResultRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/revert-result")
                                end
                                ## 
                                ## Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
                                ## @param body Bracket node result revert payload.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_write_ack
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
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
                                ## @param body Bracket node result revert payload.
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
                                ## @return a revert_result_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return RevertResultRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

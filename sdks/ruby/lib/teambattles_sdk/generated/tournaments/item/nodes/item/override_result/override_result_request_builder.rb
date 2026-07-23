require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_override_node_result_body'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../nodes'
require_relative '../item'
require_relative './override_result'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Nodes
                    module Item
                        module OverrideResult
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#nodes#{nodeId}#override-result
                            class OverrideResultRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new OverrideResultRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result")
                                end
                                ## 
                                ## Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
                                ## @param body Bracket node result override payload.
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
                                ## Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
                                ## @param body Bracket node result override payload.
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
                                ## @return a override_result_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return OverrideResultRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

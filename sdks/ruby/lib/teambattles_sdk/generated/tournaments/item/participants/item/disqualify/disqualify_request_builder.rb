require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_disqualify_participant_body'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../participants'
require_relative '../item'
require_relative './disqualify'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Participants
                    module Item
                        module Disqualify
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#participants#{participantId}#disqualify
                            class DisqualifyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new DisqualifyRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/disqualify")
                                end
                                ## 
                                ## Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
                                ## @param body Participant disqualification payload.
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
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
                                ## @param body Participant disqualification payload.
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
                                ## @return a disqualify_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return DisqualifyRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

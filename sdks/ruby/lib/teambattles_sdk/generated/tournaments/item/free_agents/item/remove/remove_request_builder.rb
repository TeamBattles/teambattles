require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../free_agents'
require_relative '../item'
require_relative './remove'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgents
                    module Item
                        module Remove
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#free-agents#{freeAgentId}#remove
                            class RemoveRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RemoveRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove")
                                end
                                ## 
                                ## Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of tournament_write_ack
                                ## 
                                def post(request_configuration=nil)
                                    request_info = self.to_post_request_information(
                                        request_configuration
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
                                ## Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
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
                                ## @return a remove_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return RemoveRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

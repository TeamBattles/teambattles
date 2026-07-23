require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/tournament_send_offer_body'
require_relative '../../../../../models/tournament_write_ack'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../free_agents'
require_relative '../item'
require_relative './offers'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgents
                    module Item
                        module Offers
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#free-agents#{freeAgentId}#offers
                            class OffersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new OffersRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers")
                                end
                                ## 
                                ## Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
                                ## @param body Free-agent pickup offer payload.
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
                                ## Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
                                ## @param body Free-agent pickup offer payload.
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
                                ## @return a offers_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return OffersRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

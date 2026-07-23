require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/error'
require_relative '../../../../../../models/tournament_write_ack'
require_relative '../../../../../../team_battles_sdk::_generated'
require_relative '../../../../../tournaments'
require_relative '../../../../item'
require_relative '../../../free_agency'
require_relative '../../offers'
require_relative '../item'
require_relative './revoke'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    module Offers
                        module Item
                            module Revoke
                                ## 
                                # Builds and executes requests for operations under #tournaments#{identifier}#free-agency#offers#{offerId}#revoke
                                class RevokeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new RevokeRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke")
                                    end
                                    ## 
                                    ## Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
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
                                        error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentWriteAck.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
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
                                    ## @return a revoke_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return RevokeRequestBuilder.new(raw_url, @request_adapter)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

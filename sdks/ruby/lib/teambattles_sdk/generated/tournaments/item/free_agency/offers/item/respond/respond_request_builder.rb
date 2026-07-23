require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/error'
require_relative '../../../../../../models/tournament_offer_respond_body'
require_relative '../../../../../../models/tournament_offer_respond_response'
require_relative '../../../../../../team_battles_sdk::_generated'
require_relative '../../../../../tournaments'
require_relative '../../../../item'
require_relative '../../../free_agency'
require_relative '../../offers'
require_relative '../item'
require_relative './respond'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    module Offers
                        module Item
                            module Respond
                                ## 
                                # Builds and executes requests for operations under #tournaments#{identifier}#free-agency#offers#{offerId}#respond
                                class RespondRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new RespondRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond")
                                    end
                                    ## 
                                    ## Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
                                    ## @param body Free agent's response to a pickup offer.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of tournament_offer_respond_response
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
                                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentOfferRespondResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
                                    ## @param body Free agent's response to a pickup offer.
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
                                    ## @return a respond_request_builder
                                    ## 
                                    def with_url(raw_url)
                                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                        return RespondRequestBuilder.new(raw_url, @request_adapter)
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

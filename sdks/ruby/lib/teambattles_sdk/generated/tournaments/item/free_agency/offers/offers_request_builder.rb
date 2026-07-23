require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../free_agency'
require_relative './item/with_offer_item_request_builder'
require_relative './offers'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    module Offers
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#free-agency#offers
                        class OffersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.freeAgency.offers.item collection
                            ## @param offer_id Free-agent pickup offer ID, as returned by GET /tournaments/{identifier}/me - inbound offers under `offers`.
                            ## @return a with_offer_item_request_builder
                            ## 
                            def by_offer_id(offer_id)
                                raise StandardError, 'offer_id cannot be null' if offer_id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["offerId"] = offer_id
                                return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::Offers::Item::WithOfferItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new OffersRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers")
                            end
                        end
                    end
                end
            end
        end
    end
end

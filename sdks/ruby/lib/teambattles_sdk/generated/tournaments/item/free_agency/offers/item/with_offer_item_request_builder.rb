require 'microsoft_kiota_abstractions'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../tournaments'
require_relative '../../../item'
require_relative '../../free_agency'
require_relative '../offers'
require_relative './item'
require_relative './respond/respond_request_builder'
require_relative './revoke/revoke_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    module Offers
                        module Item
                            ## 
                            # Builds and executes requests for operations under #tournaments#{identifier}#free-agency#offers#{offerId}
                            class WithOfferItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # The respond property
                                def respond()
                                    return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::Offers::Item::Respond::RespondRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # The revoke property
                                def revoke()
                                    return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::Offers::Item::Revoke::RevokeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new WithOfferItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

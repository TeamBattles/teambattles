require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './free_agency'
require_relative './me/me_request_builder'
require_relative './offers/offers_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgency
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#free-agency
                    class FreeAgencyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The me property
                        def me()
                            return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::Me::MeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The offers property
                        def offers()
                            return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgency::Offers::OffersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new FreeAgencyRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agency")
                        end
                    end
                end
            end
        end
    end
end

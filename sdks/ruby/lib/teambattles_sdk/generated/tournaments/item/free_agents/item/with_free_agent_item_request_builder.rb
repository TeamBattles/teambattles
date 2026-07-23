require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../free_agents'
require_relative './item'
require_relative './offers/offers_request_builder'
require_relative './remove/remove_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module FreeAgents
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#free-agents#{freeAgentId}
                        class WithFreeAgentItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The offers property
                            def offers()
                                return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgents::Item::Offers::OffersRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The remove property
                            def remove()
                                return TeamBattlesSdk::Generated::Tournaments::Item::FreeAgents::Item::Remove::RemoveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithFreeAgentItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

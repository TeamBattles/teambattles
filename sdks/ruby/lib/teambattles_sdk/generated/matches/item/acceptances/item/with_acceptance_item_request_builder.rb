require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../matches'
require_relative '../../item'
require_relative '../acceptances'
require_relative './approve/approve_request_builder'
require_relative './decline/decline_request_builder'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                module Acceptances
                    module Item
                        ## 
                        # Builds and executes requests for operations under #matches#{matchId}#acceptances#{acceptanceId}
                        class WithAcceptanceItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The approve property
                            def approve()
                                return TeamBattlesSdk::Generated::Matches::Item::Acceptances::Item::Approve::ApproveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The decline property
                            def decline()
                                return TeamBattlesSdk::Generated::Matches::Item::Acceptances::Item::Decline::DeclineRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithAcceptanceItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

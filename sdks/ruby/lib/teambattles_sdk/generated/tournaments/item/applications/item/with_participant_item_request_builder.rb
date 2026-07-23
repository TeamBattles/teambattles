require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../applications'
require_relative './approve/approve_request_builder'
require_relative './deny/deny_request_builder'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Applications
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#applications#{participantId}
                        class WithParticipantItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The approve property
                            def approve()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Applications::Item::Approve::ApproveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The deny property
                            def deny()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Applications::Item::Deny::DenyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithParticipantItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

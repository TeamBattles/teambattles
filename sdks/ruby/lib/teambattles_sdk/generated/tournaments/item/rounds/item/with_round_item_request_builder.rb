require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../rounds'
require_relative './item'
require_relative './schedule/schedule_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Rounds
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#rounds#{roundId}
                        class WithRoundItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The schedule property
                            def schedule()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Rounds::Item::Schedule::ScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithRoundItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

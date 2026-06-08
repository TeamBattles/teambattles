require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../cooldowns'
require_relative './clear/clear_request_builder'
require_relative './item'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Cooldowns
                    module Item
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#cooldowns#{cooldownId}
                        class WithCooldownItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The clear property
                            def clear()
                                return TeamBattlesSdk::Generated::Leagues::Item::Cooldowns::Item::Clear::ClearRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithCooldownItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

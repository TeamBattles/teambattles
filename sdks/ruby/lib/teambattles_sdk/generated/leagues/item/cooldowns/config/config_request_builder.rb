require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../cooldowns'
require_relative './config'
require_relative './update/update_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Cooldowns
                    module Config
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#cooldowns#config
                        class ConfigRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The update property
                            def update()
                                return TeamBattlesSdk::Generated::Leagues::Item::Cooldowns::Config::Update::UpdateRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new ConfigRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/cooldowns/config")
                            end
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './close/close_request_builder'
require_relative './open/open_request_builder'
require_relative './registration'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Registration
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#registration
                    class RegistrationRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The close property
                        def close()
                            return TeamBattlesSdk::Generated::Tournaments::Item::Registration::Close::CloseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The open property
                        def open()
                            return TeamBattlesSdk::Generated::Tournaments::Item::Registration::Open::OpenRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new RegistrationRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/registration")
                        end
                    end
                end
            end
        end
    end
end

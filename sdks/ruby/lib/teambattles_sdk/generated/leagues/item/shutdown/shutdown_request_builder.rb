require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './request/request_request_builder'
require_relative './shutdown'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Shutdown
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#shutdown
                    class ShutdownRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The request property
                        def request()
                            return TeamBattlesSdk::Generated::Leagues::Item::Shutdown::Request::RequestRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ShutdownRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/shutdown")
                        end
                    end
                end
            end
        end
    end
end

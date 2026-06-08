require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './ownership'
require_relative './transfer/transfer_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Ownership
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#ownership
                    class OwnershipRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The transfer property
                        def transfer()
                            return TeamBattlesSdk::Generated::Leagues::Item::Ownership::Transfer::TransferRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new OwnershipRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/ownership")
                        end
                    end
                end
            end
        end
    end
end

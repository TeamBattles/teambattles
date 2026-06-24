require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../teams'
require_relative '../item'
require_relative './captaincy'
require_relative './transfer/transfer_request_builder'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                module Captaincy
                    ## 
                    # Builds and executes requests for operations under #teams#{identifier}#captaincy
                    class CaptaincyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The transfer property
                        def transfer()
                            return TeamBattlesSdk::Generated::Teams::Item::Captaincy::Transfer::TransferRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new CaptaincyRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}/captaincy")
                        end
                    end
                end
            end
        end
    end
end

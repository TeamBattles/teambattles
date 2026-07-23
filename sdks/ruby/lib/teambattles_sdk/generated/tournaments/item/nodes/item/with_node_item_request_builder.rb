require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../nodes'
require_relative './item'
require_relative './override_result/override_result_request_builder'
require_relative './revert_result/revert_result_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Nodes
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#nodes#{nodeId}
                        class WithNodeItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The overrideResult property
                            def override_result()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Nodes::Item::OverrideResult::OverrideResultRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The revertResult property
                            def revert_result()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Nodes::Item::RevertResult::RevertResultRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithNodeItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

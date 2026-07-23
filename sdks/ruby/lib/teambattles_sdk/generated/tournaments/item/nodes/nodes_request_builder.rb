require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './item/with_node_item_request_builder'
require_relative './nodes'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Nodes
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#nodes
                    class NodesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.nodes.item collection
                        ## @param node_id Bracket node ID.
                        ## @return a with_node_item_request_builder
                        ## 
                        def by_node_id(node_id)
                            raise StandardError, 'node_id cannot be null' if node_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["nodeId"] = node_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::Nodes::Item::WithNodeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new NodesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/nodes")
                        end
                    end
                end
            end
        end
    end
end

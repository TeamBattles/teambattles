require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './item/with_round_item_request_builder'
require_relative './rounds'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Rounds
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#rounds
                    class RoundsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.rounds.item collection
                        ## @param round_id Tournament round id.
                        ## @return a with_round_item_request_builder
                        ## 
                        def by_round_id(round_id)
                            raise StandardError, 'round_id cannot be null' if round_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["roundId"] = round_id
                            return TeamBattlesSdk::Generated::Tournaments::Item::Rounds::Item::WithRoundItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new RoundsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/rounds")
                        end
                    end
                end
            end
        end
    end
end

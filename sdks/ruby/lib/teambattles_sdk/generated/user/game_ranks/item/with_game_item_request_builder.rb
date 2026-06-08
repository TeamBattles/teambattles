require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../user'
require_relative '../game_ranks'
require_relative './item'
require_relative './item/with_mode_item_request_builder'

module TeamBattlesSdk
    module Generated
        module User
            module GameRanks
                module Item
                    ## 
                    # Builds and executes requests for operations under #user#game-ranks#{gameId}
                    class WithGameItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.user.gameRanks.item.item collection
                        ## @param mode Game mode / playlist of the rank to delete.
                        ## @return a with_mode_item_request_builder
                        ## 
                        def by_mode(mode)
                            raise StandardError, 'mode cannot be null' if mode.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["mode"] = mode
                            return TeamBattlesSdk::Generated::User::GameRanks::Item::Item::WithModeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new WithGameItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/user/game-ranks/{gameId}")
                        end
                    end
                end
            end
        end
    end
end

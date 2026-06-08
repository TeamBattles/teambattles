require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './config/config_request_builder'
require_relative './cooldowns'
require_relative './issue/issue_request_builder'
require_relative './item/with_cooldown_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Cooldowns
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#cooldowns
                    class CooldownsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The config property
                        def config()
                            return TeamBattlesSdk::Generated::Leagues::Item::Cooldowns::Config::ConfigRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The issue property
                        def issue()
                            return TeamBattlesSdk::Generated::Leagues::Item::Cooldowns::Issue::IssueRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.cooldowns.item collection
                        ## @param cooldown_id League member cooldown ID.
                        ## @return a with_cooldown_item_request_builder
                        ## 
                        def by_cooldown_id(cooldown_id)
                            raise StandardError, 'cooldown_id cannot be null' if cooldown_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["cooldownId"] = cooldown_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Cooldowns::Item::WithCooldownItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new CooldownsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/cooldowns")
                        end
                    end
                end
            end
        end
    end
end

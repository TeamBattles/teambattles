require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './item/with_league_team_item_request_builder'
require_relative './teams'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Teams
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#teams
                    class TeamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.teams.item collection
                        ## @param league_team_id League team application ID.
                        ## @return a with_league_team_item_request_builder
                        ## 
                        def by_league_team_id(league_team_id)
                            raise StandardError, 'league_team_id cannot be null' if league_team_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["leagueTeamId"] = league_team_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Teams::Item::WithLeagueTeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new TeamsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/teams")
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './item/with_team_identifier_item_request_builder'
require_relative './teams'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Teams
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#teams
                    class TeamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.tournaments.item.teams.item collection
                        ## @param team_identifier Slug of the team to act as. You must be its captain, co-captain, or the owner of the organization that owns it. A team you do not lead and a slug that does not resolve BOTH answer 403 error_not_team_leader, so that this path is not a team-slug enumeration oracle.
                        ## @return a with_team_identifier_item_request_builder
                        ## 
                        def by_team_identifier(team_identifier)
                            raise StandardError, 'team_identifier cannot be null' if team_identifier.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["teamIdentifier"] = team_identifier
                            return TeamBattlesSdk::Generated::Tournaments::Item::Teams::Item::WithTeamIdentifierItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new TeamsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/teams")
                        end
                    end
                end
            end
        end
    end
end

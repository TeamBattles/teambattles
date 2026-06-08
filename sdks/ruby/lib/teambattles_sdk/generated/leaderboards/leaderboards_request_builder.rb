require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './leaderboards'
require_relative './organizations/organizations_request_builder'
require_relative './players/players_request_builder'
require_relative './teams/teams_request_builder'

module TeamBattlesSdk
    module Generated
        module Leaderboards
            ## 
            # Builds and executes requests for operations under #leaderboards
            class LeaderboardsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The organizations property
                def organizations()
                    return TeamBattlesSdk::Generated::Leaderboards::Organizations::OrganizationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The players property
                def players()
                    return TeamBattlesSdk::Generated::Leaderboards::Players::PlayersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The teams property
                def teams()
                    return TeamBattlesSdk::Generated::Leaderboards::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new LeaderboardsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/leaderboards")
                end
            end
        end
    end
end

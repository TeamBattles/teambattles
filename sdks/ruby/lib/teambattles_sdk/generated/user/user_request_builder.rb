require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './connections/connections_request_builder'
require_relative './game_ranks/game_ranks_request_builder'
require_relative './matches/matches_request_builder'
require_relative './ongoing_matches/ongoing_matches_request_builder'
require_relative './user'

module TeamBattlesSdk
    module Generated
        module User
            ## 
            # Builds and executes requests for operations under #user
            class UserRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The connections property
                def connections()
                    return TeamBattlesSdk::Generated::User::Connections::ConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The gameRanks property
                def game_ranks()
                    return TeamBattlesSdk::Generated::User::GameRanks::GameRanksRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The matches property
                def matches()
                    return TeamBattlesSdk::Generated::User::Matches::MatchesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The ongoingMatches property
                def ongoing_matches()
                    return TeamBattlesSdk::Generated::User::OngoingMatches::OngoingMatchesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new UserRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/user")
                end
            end
        end
    end
end

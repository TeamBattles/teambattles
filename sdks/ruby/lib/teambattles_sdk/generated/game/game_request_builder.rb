require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './game'
require_relative './matches/matches_request_builder'

module TeamBattlesSdk
    module Generated
        module Game
            ## 
            # Builds and executes requests for operations under #game
            class GameRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The matches property
                def matches()
                    return TeamBattlesSdk::Generated::Game::Matches::MatchesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new GameRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/game")
                end
            end
        end
    end
end

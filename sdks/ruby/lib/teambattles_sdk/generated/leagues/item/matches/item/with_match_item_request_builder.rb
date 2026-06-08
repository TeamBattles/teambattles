require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../matches'
require_relative './item'
require_relative './player_stats/player_stats_request_builder'
require_relative './scores/scores_request_builder'
require_relative './status/status_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Matches
                    module Item
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#matches#{matchId}
                        class WithMatchItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The playerStats property
                            def player_stats()
                                return TeamBattlesSdk::Generated::Leagues::Item::Matches::Item::PlayerStats::PlayerStatsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The scores property
                            def scores()
                                return TeamBattlesSdk::Generated::Leagues::Item::Matches::Item::Scores::ScoresRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The status property
                            def status()
                                return TeamBattlesSdk::Generated::Leagues::Item::Matches::Item::Status::StatusRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithMatchItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

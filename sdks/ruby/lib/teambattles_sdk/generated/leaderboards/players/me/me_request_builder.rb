require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leaderboards'
require_relative '../players'
require_relative './me'
require_relative './rank/rank_request_builder'

module TeamBattlesSdk
    module Generated
        module Leaderboards
            module Players
                module Me
                    ##
                    # Builds and executes requests for operations under #leaderboards#players#me
                    class MeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                        ##
                        # The rank property
                        def rank()
                            return TeamBattlesSdk::Generated::Leaderboards::Players::Me::Rank::RankRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        ## Instantiates a new MeRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ##
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leaderboards/players/me")
                        end
                    end
                end
            end
        end
    end
end

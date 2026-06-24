require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../matches'
require_relative '../item'
require_relative './accept/accept_request_builder'
require_relative './challenges'
require_relative './refuse/refuse_request_builder'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                module Challenges
                    ## 
                    # Builds and executes requests for operations under #matches#{matchId}#challenges
                    class ChallengesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The accept property
                        def accept()
                            return TeamBattlesSdk::Generated::Matches::Item::Challenges::Accept::AcceptRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The refuse property
                        def refuse()
                            return TeamBattlesSdk::Generated::Matches::Item::Challenges::Refuse::RefuseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ChallengesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/matches/{matchId}/challenges")
                        end
                    end
                end
            end
        end
    end
end

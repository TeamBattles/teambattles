require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../matches'
require_relative './item'
require_relative './scores/scores_request_builder'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                ## 
                # Builds and executes requests for operations under #matches#{matchId}
                class WithMatchItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The scores property
                    def scores()
                        return TeamBattlesSdk::Generated::Matches::Item::Scores::ScoresRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithMatchItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/matches/{matchId}")
                    end
                end
            end
        end
    end
end

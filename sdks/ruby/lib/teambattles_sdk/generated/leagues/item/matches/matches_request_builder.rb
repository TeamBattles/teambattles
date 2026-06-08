require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './batch_scores/batch_scores_request_builder'
require_relative './item/with_match_item_request_builder'
require_relative './matches'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Matches
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#matches
                    class MatchesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The batchScores property
                        def batch_scores()
                            return TeamBattlesSdk::Generated::Leagues::Item::Matches::BatchScores::BatchScoresRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.matches.item collection
                        ## @param match_id Match ID.
                        ## @return a with_match_item_request_builder
                        ## 
                        def by_match_id(match_id)
                            raise StandardError, 'match_id cannot be null' if match_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["matchId"] = match_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Matches::Item::WithMatchItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new MatchesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/matches")
                        end
                    end
                end
            end
        end
    end
end

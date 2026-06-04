require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './item/with_match_item_request_builder'
require_relative './matches'

module TeamBattlesSdk
    module Generated
        module Matches
            ## 
            # Builds and executes requests for operations under #matches
            class MatchesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.matches.item collection
                ## @param match_id Match id.
                ## @return a with_match_item_request_builder
                ## 
                def by_match_id(match_id)
                    raise StandardError, 'match_id cannot be null' if match_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["matchId"] = match_id
                    return TeamBattlesSdk::Generated::Matches::Item::WithMatchItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new MatchesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/matches")
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../matches'
require_relative '../item'
require_relative './acceptances'
require_relative './item/with_acceptance_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                module Acceptances
                    ## 
                    # Builds and executes requests for operations under #matches#{matchId}#acceptances
                    class AcceptancesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.matches.item.acceptances.item collection
                        ## @param acceptance_id Match acceptance ID.
                        ## @return a with_acceptance_item_request_builder
                        ## 
                        def by_acceptance_id(acceptance_id)
                            raise StandardError, 'acceptance_id cannot be null' if acceptance_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["acceptanceId"] = acceptance_id
                            return TeamBattlesSdk::Generated::Matches::Item::Acceptances::Item::WithAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new AcceptancesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/matches/{matchId}/acceptances")
                        end
                    end
                end
            end
        end
    end
end

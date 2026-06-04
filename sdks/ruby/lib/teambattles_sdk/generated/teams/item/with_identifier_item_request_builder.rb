require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../teams'
require_relative './item'
require_relative './matches/matches_request_builder'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                ## 
                # Builds and executes requests for operations under #teams#{identifier}
                class WithIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The matches property
                    def matches()
                        return TeamBattlesSdk::Generated::Teams::Item::Matches::MatchesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}")
                    end
                end
            end
        end
    end
end

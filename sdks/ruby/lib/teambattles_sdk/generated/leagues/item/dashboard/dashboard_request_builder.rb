require 'microsoft_kiota_abstractions'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './dashboard'
require_relative './stats/stats_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Dashboard
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#dashboard
                    class DashboardRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The stats property
                        def stats()
                            return TeamBattlesSdk::Generated::Leagues::Item::Dashboard::Stats::StatsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DashboardRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/dashboard")
                        end
                    end
                end
            end
        end
    end
end

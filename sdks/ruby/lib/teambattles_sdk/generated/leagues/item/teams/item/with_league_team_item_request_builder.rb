require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../teams'
require_relative './approve/approve_request_builder'
require_relative './deny/deny_request_builder'
require_relative './item'
require_relative './remove/remove_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Teams
                    module Item
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#teams#{leagueTeamId}
                        class WithLeagueTeamItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The approve property
                            def approve()
                                return TeamBattlesSdk::Generated::Leagues::Item::Teams::Item::Approve::ApproveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The deny property
                            def deny()
                                return TeamBattlesSdk::Generated::Leagues::Item::Teams::Item::Deny::DenyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The remove property
                            def remove()
                                return TeamBattlesSdk::Generated::Leagues::Item::Teams::Item::Remove::RemoveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithLeagueTeamItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

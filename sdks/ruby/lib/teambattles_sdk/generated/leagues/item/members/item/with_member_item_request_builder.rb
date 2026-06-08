require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './remove/remove_request_builder'
require_relative './role/role_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Members
                    module Item
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#members#{memberId}
                        class WithMemberItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The remove property
                            def remove()
                                return TeamBattlesSdk::Generated::Leagues::Item::Members::Item::Remove::RemoveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The role property
                            def role()
                                return TeamBattlesSdk::Generated::Leagues::Item::Members::Item::Role::RoleRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithMemberItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/members/{memberId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

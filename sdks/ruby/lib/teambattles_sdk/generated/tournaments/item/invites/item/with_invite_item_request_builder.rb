require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../invites'
require_relative './item'
require_relative './respond/respond_request_builder'
require_relative './revoke/revoke_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Invites
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#invites#{inviteId}
                        class WithInviteItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The respond property
                            def respond()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Invites::Item::Respond::RespondRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The revoke property
                            def revoke()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Invites::Item::Revoke::RevokeRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithInviteItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

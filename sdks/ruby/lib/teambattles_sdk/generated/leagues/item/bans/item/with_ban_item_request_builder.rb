require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leagues'
require_relative '../../item'
require_relative '../bans'
require_relative './item'
require_relative './revoke/revoke_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Bans
                    module Item
                        ## 
                        # Builds and executes requests for operations under #leagues#{identifier}#bans#{banId}
                        class WithBanItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The revoke property
                            def revoke()
                                return TeamBattlesSdk::Generated::Leagues::Item::Bans::Item::Revoke::RevokeRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithBanItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/bans/{banId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

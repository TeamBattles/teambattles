require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../teams'
require_relative './apply/apply_request_builder'
require_relative './enter/enter_request_builder'
require_relative './item'
require_relative './roster/roster_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Teams
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#teams#{teamIdentifier}
                        class WithTeamIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The apply property
                            def apply()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Teams::Item::Apply::ApplyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The enter property
                            def enter()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Teams::Item::Enter::EnterRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The roster property
                            def roster()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Teams::Item::Roster::RosterRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithTeamIdentifierItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}")
                            end
                        end
                    end
                end
            end
        end
    end
end

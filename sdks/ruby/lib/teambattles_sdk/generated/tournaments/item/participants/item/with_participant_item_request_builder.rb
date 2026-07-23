require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../tournaments'
require_relative '../../item'
require_relative '../participants'
require_relative './check_in/check_in_request_builder'
require_relative './disqualify/disqualify_request_builder'
require_relative './item'
require_relative './remove/remove_request_builder'
require_relative './roster/roster_request_builder'
require_relative './withdraw/withdraw_request_builder'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module Participants
                    module Item
                        ## 
                        # Builds and executes requests for operations under #tournaments#{identifier}#participants#{participantId}
                        class WithParticipantItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The checkIn property
                            def check_in()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::CheckIn::CheckInRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The disqualify property
                            def disqualify()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::Disqualify::DisqualifyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The remove property
                            def remove()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::Remove::RemoveRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The roster property
                            def roster()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::Roster::RosterRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The withdraw property
                            def withdraw()
                                return TeamBattlesSdk::Generated::Tournaments::Item::Participants::Item::Withdraw::WithdrawRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithParticipantItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './badges/badges_request_builder'
require_relative './twitch'

module TeamBattlesSdk
    module Generated
        module Twitch
            ## 
            # Builds and executes requests for operations under #twitch
            class TwitchRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The badges property
                def badges()
                    return TeamBattlesSdk::Generated::Twitch::Badges::BadgesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new TwitchRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/twitch")
                end
            end
        end
    end
end

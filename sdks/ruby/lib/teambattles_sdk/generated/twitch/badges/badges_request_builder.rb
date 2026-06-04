require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../twitch'
require_relative './badges'
require_relative './channel/channel_request_builder'
require_relative './global/global_request_builder'

module TeamBattlesSdk
    module Generated
        module Twitch
            module Badges
                ## 
                # Builds and executes requests for operations under #twitch#badges
                class BadgesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The channel property
                    def channel()
                        return TeamBattlesSdk::Generated::Twitch::Badges::Channel::ChannelRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The global property
                    def global()
                        return TeamBattlesSdk::Generated::Twitch::Badges::Global::GlobalRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new BadgesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/twitch/badges")
                    end
                end
            end
        end
    end
end

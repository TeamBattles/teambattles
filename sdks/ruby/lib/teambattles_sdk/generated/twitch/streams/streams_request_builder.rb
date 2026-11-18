require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../twitch'
require_relative './history/history_request_builder'
require_relative './signals/signals_request_builder'
require_relative './streams'

module TeamBattlesSdk
    module Generated
        module Twitch
            module Streams
                ## 
                # Builds and executes requests for operations under #twitch#streams
                class StreamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The history property
                    def history()
                        return TeamBattlesSdk::Generated::Twitch::Streams::History::HistoryRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The signals property
                    def signals()
                        return TeamBattlesSdk::Generated::Twitch::Streams::Signals::SignalsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new StreamsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/twitch/streams")
                    end
                end
            end
        end
    end
end

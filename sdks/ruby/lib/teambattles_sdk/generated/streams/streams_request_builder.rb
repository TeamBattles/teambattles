require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './live_status/live_status_request_builder'
require_relative './streams'

module TeamBattlesSdk
    module Generated
        module Streams
            ## 
            # Builds and executes requests for operations under #streams
            class StreamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The liveStatus property
                def live_status()
                    return TeamBattlesSdk::Generated::Streams::LiveStatus::LiveStatusRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new StreamsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/streams")
                end
            end
        end
    end
end

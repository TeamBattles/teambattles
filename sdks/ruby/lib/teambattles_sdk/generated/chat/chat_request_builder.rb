require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './chat'
require_relative './messages/messages_request_builder'

module TeamBattlesSdk
    module Generated
        module Chat
            ## 
            # Builds and executes requests for operations under #chat
            class ChatRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The messages property
                def messages()
                    return TeamBattlesSdk::Generated::Chat::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new ChatRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/chat")
                end
            end
        end
    end
end

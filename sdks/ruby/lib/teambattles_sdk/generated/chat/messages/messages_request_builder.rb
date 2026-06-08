require 'microsoft_kiota_abstractions'
require_relative '../../team_battles_sdk::_generated'
require_relative '../chat'
require_relative './item/with_message_item_request_builder'
require_relative './messages'

module TeamBattlesSdk
    module Generated
        module Chat
            module Messages
                ## 
                # Builds and executes requests for operations under #chat#messages
                class MessagesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Gets an item from the TeamBattlesSdk::Generated.chat.messages.item collection
                    ## @param message_id ID of the chat message to report.
                    ## @return a with_message_item_request_builder
                    ## 
                    def by_message_id(message_id)
                        raise StandardError, 'message_id cannot be null' if message_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["messageId"] = message_id
                        return TeamBattlesSdk::Generated::Chat::Messages::Item::WithMessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new MessagesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/chat/messages")
                    end
                end
            end
        end
    end
end

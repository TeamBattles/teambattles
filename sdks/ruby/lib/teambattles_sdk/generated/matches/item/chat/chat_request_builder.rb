require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/send_chat_message_request_body'
require_relative '../../../models/send_chat_message_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../matches'
require_relative '../item'
require_relative './chat'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                module Chat
                    ## 
                    # Builds and executes requests for operations under #matches#{matchId}#chat
                    class ChatRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new ChatRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "")
                        end
                        ## 
                        ## Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of chat_get_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Matches::Item::Chat::ChatGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
                        ## @param body Sends a message to the match chat room as the API key owner.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of send_chat_message_response
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::SendChatMessageResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
                        ## @param body Sends a message to the match chat room as the API key owner.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a chat_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ChatRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
                        class ChatRequestBuilderGetQueryParameters
                            
                            ## 
                            # Opaque continuation cursor from a prior page's nextCursor.
                            attr_accessor :cursor
                            ## 
                            # Page size (1-100). Defaults to 50.
                            attr_accessor :limit
                        end
                    end
                end
            end
        end
    end
end

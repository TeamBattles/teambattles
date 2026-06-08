require 'microsoft_kiota_abstractions'
require_relative '../../../models/chat_message'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../matches'
require_relative '../item'
require_relative './chat'

module TeamBattlesSdk
    module Generated
        module Matches
            module Item
                module Chat
                    class ChatGetResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The data property
                        @data
                        ## 
                        # The hasMore property
                        @has_more
                        ## 
                        # The nextCursor property
                        @next_cursor
                        ## 
                        # The timestamp property
                        @timestamp
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a chat_get_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ChatGetResponse.new
                        end
                        ## 
                        ## Gets the data property value. The data property
                        ## @return a chat_message
                        ## 
                        def data
                            return @data
                        end
                        ## 
                        ## Sets the data property value. The data property
                        ## @param value Value to set for the data property.
                        ## @return a void
                        ## 
                        def data=(value)
                            @data = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "data" => lambda {|n| @data = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                                "hasMore" => lambda {|n| @has_more = n.get_boolean_value() },
                                "nextCursor" => lambda {|n| @next_cursor = n.get_object_value(lambda {|pn| ChatGetResponse::ChatGetResponseNextCursor.create_from_discriminator_value(pn) }) },
                                "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the hasMore property value. The hasMore property
                        ## @return a boolean
                        ## 
                        def has_more
                            return @has_more
                        end
                        ## 
                        ## Sets the hasMore property value. The hasMore property
                        ## @param value Value to set for the hasMore property.
                        ## @return a void
                        ## 
                        def has_more=(value)
                            @has_more = value
                        end
                        ## 
                        ## Gets the nextCursor property value. The nextCursor property
                        ## @return a chat_get_response_next_cursor
                        ## 
                        def next_cursor
                            return @next_cursor
                        end
                        ## 
                        ## Sets the nextCursor property value. The nextCursor property
                        ## @param value Value to set for the nextCursor property.
                        ## @return a void
                        ## 
                        def next_cursor=(value)
                            @next_cursor = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("data", @data)
                            writer.write_boolean_value("hasMore", @has_more)
                            writer.write_object_value("nextCursor", @next_cursor)
                            writer.write_string_value("timestamp", @timestamp)
                        end
                        ## 
                        ## Gets the timestamp property value. The timestamp property
                        ## @return a string
                        ## 
                        def timestamp
                            return @timestamp
                        end
                        ## 
                        ## Sets the timestamp property value. The timestamp property
                        ## @param value Value to set for the timestamp property.
                        ## @return a void
                        ## 
                        def timestamp=(value)
                            @timestamp = value
                        end

                        ## 
                        # Composed type wrapper for classes ChatGetResponseNextCursorMember1, string
                        class ChatGetResponseNextCursor
                            include MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Composed type representation for type ChatGetResponseNextCursorMember1
                            @chat_get_response_next_cursor_member1
                            ## 
                            # Composed type representation for type string
                            @string
                            ## 
                            ## Gets the chatGetResponse_nextCursorMember1 property value. Composed type representation for type ChatGetResponseNextCursorMember1
                            ## @return a chat_get_response_next_cursor_member1
                            ## 
                            def chat_get_response_next_cursor_member1
                                return @chat_get_response_next_cursor_member1
                            end
                            ## 
                            ## Sets the chatGetResponse_nextCursorMember1 property value. Composed type representation for type ChatGetResponseNextCursorMember1
                            ## @param value Value to set for the chatGetResponse_nextCursorMember1 property.
                            ## @return a void
                            ## 
                            def chat_get_response_next_cursor_member1=(value)
                                @chat_get_response_next_cursor_member1 = value
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a chat_get_response_next_cursor
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ChatGetResponseNextCursor.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "chatGetResponse_nextCursorMember1" => lambda {|n| @chat_get_response_next_cursor_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Matches::Item::Chat::ChatGetResponseNextCursorMember1.create_from_discriminator_value(pn) }) },
                                    "string" => lambda {|n| @string = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_object_value("chatGetResponse_nextCursorMember1", @chat_get_response_next_cursor_member1)
                                writer.write_string_value("string", @string)
                            end
                            ## 
                            ## Gets the string property value. Composed type representation for type string
                            ## @return a string
                            ## 
                            def string
                                return @string
                            end
                            ## 
                            ## Sets the string property value. Composed type representation for type string
                            ## @param value Value to set for the string property.
                            ## @return a void
                            ## 
                            def string=(value)
                                @string = value
                            end
                        end
                    end
                end
            end
        end
    end
end

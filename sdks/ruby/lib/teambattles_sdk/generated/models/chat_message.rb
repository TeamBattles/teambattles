require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class ChatMessage
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The content property
                @content
                ## 
                # The createdAt property
                @created_at
                ## 
                # The id property
                @id
                ## 
                # The replyToId property
                @reply_to_id
                ## 
                # The senderUserId property
                @sender_user_id
                ## 
                # The senderUsername property
                @sender_username
                ## 
                # The teamId property
                @team_id
                ## 
                ## Gets the content property value. The content property
                ## @return a string
                ## 
                def content
                    return @content
                end
                ## 
                ## Sets the content property value. The content property
                ## @param value Value to set for the content property.
                ## @return a void
                ## 
                def content=(value)
                    @content = value
                end
                ## 
                ## Gets the createdAt property value. The createdAt property
                ## @return a chat_message_created_at
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. The createdAt property
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a chat_message
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ChatMessage.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "content" => lambda {|n| @content = n.get_string_value() },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ChatMessage::ChatMessageCreatedAt.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "replyToId" => lambda {|n| @reply_to_id = n.get_object_value(lambda {|pn| ChatMessage::ChatMessageReplyToId.create_from_discriminator_value(pn) }) },
                        "senderUserId" => lambda {|n| @sender_user_id = n.get_string_value() },
                        "senderUsername" => lambda {|n| @sender_username = n.get_object_value(lambda {|pn| ChatMessage::ChatMessageSenderUsername.create_from_discriminator_value(pn) }) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. The id property
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the replyToId property value. The replyToId property
                ## @return a chat_message_reply_to_id
                ## 
                def reply_to_id
                    return @reply_to_id
                end
                ## 
                ## Sets the replyToId property value. The replyToId property
                ## @param value Value to set for the replyToId property.
                ## @return a void
                ## 
                def reply_to_id=(value)
                    @reply_to_id = value
                end
                ## 
                ## Gets the senderUserId property value. The senderUserId property
                ## @return a string
                ## 
                def sender_user_id
                    return @sender_user_id
                end
                ## 
                ## Sets the senderUserId property value. The senderUserId property
                ## @param value Value to set for the senderUserId property.
                ## @return a void
                ## 
                def sender_user_id=(value)
                    @sender_user_id = value
                end
                ## 
                ## Gets the senderUsername property value. The senderUsername property
                ## @return a chat_message_sender_username
                ## 
                def sender_username
                    return @sender_username
                end
                ## 
                ## Sets the senderUsername property value. The senderUsername property
                ## @param value Value to set for the senderUsername property.
                ## @return a void
                ## 
                def sender_username=(value)
                    @sender_username = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("content", @content)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("replyToId", @reply_to_id)
                    writer.write_string_value("senderUserId", @sender_user_id)
                    writer.write_object_value("senderUsername", @sender_username)
                    writer.write_string_value("teamId", @team_id)
                end
                ## 
                ## Gets the teamId property value. The teamId property
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. The teamId property
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end

                ## 
                # Composed type wrapper for classes ChatMessageCreatedAtMember1, string
                class ChatMessageCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ChatMessageCreatedAtMember1
                    @chat_message_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ChatMessage_createdAtMember1 property value. Composed type representation for type ChatMessageCreatedAtMember1
                    ## @return a chat_message_created_at_member1
                    ## 
                    def chat_message_created_at_member1
                        return @chat_message_created_at_member1
                    end
                    ## 
                    ## Sets the ChatMessage_createdAtMember1 property value. Composed type representation for type ChatMessageCreatedAtMember1
                    ## @param value Value to set for the ChatMessage_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def chat_message_created_at_member1=(value)
                        @chat_message_created_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a chat_message_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ChatMessageCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ChatMessage_createdAtMember1" => lambda {|n| @chat_message_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ChatMessageCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ChatMessage_createdAtMember1", @chat_message_created_at_member1)
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

                ## 
                # Composed type wrapper for classes ChatMessageReplyToIdMember1, string
                class ChatMessageReplyToId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ChatMessageReplyToIdMember1
                    @chat_message_reply_to_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ChatMessage_replyToIdMember1 property value. Composed type representation for type ChatMessageReplyToIdMember1
                    ## @return a chat_message_reply_to_id_member1
                    ## 
                    def chat_message_reply_to_id_member1
                        return @chat_message_reply_to_id_member1
                    end
                    ## 
                    ## Sets the ChatMessage_replyToIdMember1 property value. Composed type representation for type ChatMessageReplyToIdMember1
                    ## @param value Value to set for the ChatMessage_replyToIdMember1 property.
                    ## @return a void
                    ## 
                    def chat_message_reply_to_id_member1=(value)
                        @chat_message_reply_to_id_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a chat_message_reply_to_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ChatMessageReplyToId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ChatMessage_replyToIdMember1" => lambda {|n| @chat_message_reply_to_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ChatMessageReplyToIdMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ChatMessage_replyToIdMember1", @chat_message_reply_to_id_member1)
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

                ## 
                # Composed type wrapper for classes ChatMessageSenderUsernameMember1, string
                class ChatMessageSenderUsername
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ChatMessageSenderUsernameMember1
                    @chat_message_sender_username_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type ChatMessageSenderUsernameMember1
                    ## @return a chat_message_sender_username_member1
                    ## 
                    def chat_message_sender_username_member1
                        return @chat_message_sender_username_member1
                    end
                    ## 
                    ## Sets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type ChatMessageSenderUsernameMember1
                    ## @param value Value to set for the ChatMessage_senderUsernameMember1 property.
                    ## @return a void
                    ## 
                    def chat_message_sender_username_member1=(value)
                        @chat_message_sender_username_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a chat_message_sender_username
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ChatMessageSenderUsername.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ChatMessage_senderUsernameMember1" => lambda {|n| @chat_message_sender_username_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ChatMessageSenderUsernameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ChatMessage_senderUsernameMember1", @chat_message_sender_username_member1)
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

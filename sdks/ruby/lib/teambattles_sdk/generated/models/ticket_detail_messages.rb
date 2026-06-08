require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class TicketDetailMessages
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
                # The isOwnMessage property
                @is_own_message
                ## 
                # The isSystem property
                @is_system
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
                ## @return a ticket_detail_messages_created_at
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
                ## @return a ticket_detail_messages
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TicketDetailMessages.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "content" => lambda {|n| @content = n.get_string_value() },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| TicketDetailMessages::TicketDetailMessagesCreatedAt.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isOwnMessage" => lambda {|n| @is_own_message = n.get_boolean_value() },
                        "isSystem" => lambda {|n| @is_system = n.get_boolean_value() },
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
                ## Gets the isOwnMessage property value. The isOwnMessage property
                ## @return a boolean
                ## 
                def is_own_message
                    return @is_own_message
                end
                ## 
                ## Sets the isOwnMessage property value. The isOwnMessage property
                ## @param value Value to set for the isOwnMessage property.
                ## @return a void
                ## 
                def is_own_message=(value)
                    @is_own_message = value
                end
                ## 
                ## Gets the isSystem property value. The isSystem property
                ## @return a boolean
                ## 
                def is_system
                    return @is_system
                end
                ## 
                ## Sets the isSystem property value. The isSystem property
                ## @param value Value to set for the isSystem property.
                ## @return a void
                ## 
                def is_system=(value)
                    @is_system = value
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
                    writer.write_boolean_value("isOwnMessage", @is_own_message)
                    writer.write_boolean_value("isSystem", @is_system)
                end

                ## 
                # Composed type wrapper for classes string, TicketDetailMessagesCreatedAtMember1
                class TicketDetailMessagesCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketDetailMessagesCreatedAtMember1
                    @ticket_detail_messages_created_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ticket_detail_messages_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketDetailMessagesCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TicketDetail_messages_createdAtMember1" => lambda {|n| @ticket_detail_messages_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailMessagesCreatedAtMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("TicketDetail_messages_createdAtMember1", @ticket_detail_messages_created_at_member1)
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
                    ## 
                    ## Gets the TicketDetail_messages_createdAtMember1 property value. Composed type representation for type TicketDetailMessagesCreatedAtMember1
                    ## @return a ticket_detail_messages_created_at_member1
                    ## 
                    def ticket_detail_messages_created_at_member1
                        return @ticket_detail_messages_created_at_member1
                    end
                    ## 
                    ## Sets the TicketDetail_messages_createdAtMember1 property value. Composed type representation for type TicketDetailMessagesCreatedAtMember1
                    ## @param value Value to set for the TicketDetail_messages_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def ticket_detail_messages_created_at_member1=(value)
                        @ticket_detail_messages_created_at_member1 = value
                    end
                end
            end
        end
    end
end

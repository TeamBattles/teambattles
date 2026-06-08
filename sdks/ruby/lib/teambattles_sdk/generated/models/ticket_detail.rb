require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class TicketDetail
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The category property
                @category
                ## 
                # The closedAt property
                @closed_at
                ## 
                # The createdAt property
                @created_at
                ## 
                # The description property
                @description
                ## 
                # The id property
                @id
                ## 
                # The messages property
                @messages
                ## 
                # The priority property
                @priority
                ## 
                # The resolvedAt property
                @resolved_at
                ## 
                # The status property
                @status
                ## 
                # The subject property
                @subject
                ## 
                # The ticketNumber property
                @ticket_number
                ## 
                # The timestamp property
                @timestamp
                ## 
                # The updatedAt property
                @updated_at
                ## 
                ## Gets the category property value. The category property
                ## @return a string
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The category property
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Gets the closedAt property value. The closedAt property
                ## @return a ticket_detail_closed_at
                ## 
                def closed_at
                    return @closed_at
                end
                ## 
                ## Sets the closedAt property value. The closedAt property
                ## @param value Value to set for the closedAt property.
                ## @return a void
                ## 
                def closed_at=(value)
                    @closed_at = value
                end
                ## 
                ## Gets the createdAt property value. The createdAt property
                ## @return a ticket_detail_created_at
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
                ## @return a ticket_detail
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TicketDetail.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "closedAt" => lambda {|n| @closed_at = n.get_object_value(lambda {|pn| TicketDetail::TicketDetailClosedAt.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| TicketDetail::TicketDetailCreatedAt.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "messages" => lambda {|n| @messages = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailMessages.create_from_discriminator_value(pn) }) },
                        "priority" => lambda {|n| @priority = n.get_enum_value(TeamBattlesSdk::Generated::Models::TicketDetailPriority) },
                        "resolvedAt" => lambda {|n| @resolved_at = n.get_object_value(lambda {|pn| TicketDetail::TicketDetailResolvedAt.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TicketDetailStatus) },
                        "subject" => lambda {|n| @subject = n.get_string_value() },
                        "ticketNumber" => lambda {|n| @ticket_number = n.get_number_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| TicketDetail::TicketDetailUpdatedAt.create_from_discriminator_value(pn) }) },
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
                ## Gets the messages property value. The messages property
                ## @return a ticket_detail_messages
                ## 
                def messages
                    return @messages
                end
                ## 
                ## Sets the messages property value. The messages property
                ## @param value Value to set for the messages property.
                ## @return a void
                ## 
                def messages=(value)
                    @messages = value
                end
                ## 
                ## Gets the priority property value. The priority property
                ## @return a ticket_detail_priority
                ## 
                def priority
                    return @priority
                end
                ## 
                ## Sets the priority property value. The priority property
                ## @param value Value to set for the priority property.
                ## @return a void
                ## 
                def priority=(value)
                    @priority = value
                end
                ## 
                ## Gets the resolvedAt property value. The resolvedAt property
                ## @return a ticket_detail_resolved_at
                ## 
                def resolved_at
                    return @resolved_at
                end
                ## 
                ## Sets the resolvedAt property value. The resolvedAt property
                ## @param value Value to set for the resolvedAt property.
                ## @return a void
                ## 
                def resolved_at=(value)
                    @resolved_at = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("category", @category)
                    writer.write_object_value("closedAt", @closed_at)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("id", @id)
                    writer.write_collection_of_object_values("messages", @messages)
                    writer.write_enum_value("priority", @priority)
                    writer.write_object_value("resolvedAt", @resolved_at)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("subject", @subject)
                    writer.write_number_value("ticketNumber", @ticket_number)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_object_value("updatedAt", @updated_at)
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a ticket_detail_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. The status property
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the subject property value. The subject property
                ## @return a string
                ## 
                def subject
                    return @subject
                end
                ## 
                ## Sets the subject property value. The subject property
                ## @param value Value to set for the subject property.
                ## @return a void
                ## 
                def subject=(value)
                    @subject = value
                end
                ## 
                ## Gets the ticketNumber property value. The ticketNumber property
                ## @return a integer
                ## 
                def ticket_number
                    return @ticket_number
                end
                ## 
                ## Sets the ticketNumber property value. The ticketNumber property
                ## @param value Value to set for the ticketNumber property.
                ## @return a void
                ## 
                def ticket_number=(value)
                    @ticket_number = value
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
                ## Gets the updatedAt property value. The updatedAt property
                ## @return a ticket_detail_updated_at
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. The updatedAt property
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end

                ## 
                # Composed type wrapper for classes string, TicketDetailClosedAtMember1
                class TicketDetailClosedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketDetailClosedAtMember1
                    @ticket_detail_closed_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ticket_detail_closed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketDetailClosedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TicketDetail_closedAtMember1" => lambda {|n| @ticket_detail_closed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailClosedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TicketDetail_closedAtMember1", @ticket_detail_closed_at_member1)
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
                    ## Gets the TicketDetail_closedAtMember1 property value. Composed type representation for type TicketDetailClosedAtMember1
                    ## @return a ticket_detail_closed_at_member1
                    ## 
                    def ticket_detail_closed_at_member1
                        return @ticket_detail_closed_at_member1
                    end
                    ## 
                    ## Sets the TicketDetail_closedAtMember1 property value. Composed type representation for type TicketDetailClosedAtMember1
                    ## @param value Value to set for the TicketDetail_closedAtMember1 property.
                    ## @return a void
                    ## 
                    def ticket_detail_closed_at_member1=(value)
                        @ticket_detail_closed_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TicketDetailCreatedAtMember1
                class TicketDetailCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketDetailCreatedAtMember1
                    @ticket_detail_created_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ticket_detail_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketDetailCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TicketDetail_createdAtMember1" => lambda {|n| @ticket_detail_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TicketDetail_createdAtMember1", @ticket_detail_created_at_member1)
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
                    ## Gets the TicketDetail_createdAtMember1 property value. Composed type representation for type TicketDetailCreatedAtMember1
                    ## @return a ticket_detail_created_at_member1
                    ## 
                    def ticket_detail_created_at_member1
                        return @ticket_detail_created_at_member1
                    end
                    ## 
                    ## Sets the TicketDetail_createdAtMember1 property value. Composed type representation for type TicketDetailCreatedAtMember1
                    ## @param value Value to set for the TicketDetail_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def ticket_detail_created_at_member1=(value)
                        @ticket_detail_created_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TicketDetailResolvedAtMember1
                class TicketDetailResolvedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketDetailResolvedAtMember1
                    @ticket_detail_resolved_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ticket_detail_resolved_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketDetailResolvedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TicketDetail_resolvedAtMember1" => lambda {|n| @ticket_detail_resolved_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailResolvedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TicketDetail_resolvedAtMember1", @ticket_detail_resolved_at_member1)
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
                    ## Gets the TicketDetail_resolvedAtMember1 property value. Composed type representation for type TicketDetailResolvedAtMember1
                    ## @return a ticket_detail_resolved_at_member1
                    ## 
                    def ticket_detail_resolved_at_member1
                        return @ticket_detail_resolved_at_member1
                    end
                    ## 
                    ## Sets the TicketDetail_resolvedAtMember1 property value. Composed type representation for type TicketDetailResolvedAtMember1
                    ## @param value Value to set for the TicketDetail_resolvedAtMember1 property.
                    ## @return a void
                    ## 
                    def ticket_detail_resolved_at_member1=(value)
                        @ticket_detail_resolved_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TicketDetailUpdatedAtMember1
                class TicketDetailUpdatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TicketDetailUpdatedAtMember1
                    @ticket_detail_updated_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ticket_detail_updated_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TicketDetailUpdatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TicketDetail_updatedAtMember1" => lambda {|n| @ticket_detail_updated_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TicketDetailUpdatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TicketDetail_updatedAtMember1", @ticket_detail_updated_at_member1)
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
                    ## Gets the TicketDetail_updatedAtMember1 property value. Composed type representation for type TicketDetailUpdatedAtMember1
                    ## @return a ticket_detail_updated_at_member1
                    ## 
                    def ticket_detail_updated_at_member1
                        return @ticket_detail_updated_at_member1
                    end
                    ## 
                    ## Sets the TicketDetail_updatedAtMember1 property value. Composed type representation for type TicketDetailUpdatedAtMember1
                    ## @param value Value to set for the TicketDetail_updatedAtMember1 property.
                    ## @return a void
                    ## 
                    def ticket_detail_updated_at_member1=(value)
                        @ticket_detail_updated_at_member1 = value
                    end
                end
            end
        end
    end
end

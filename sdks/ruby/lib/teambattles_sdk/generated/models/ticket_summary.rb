require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class TicketSummary
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The category property
                @category
                ## 
                # The createdAt property
                @created_at
                ## 
                # The id property
                @id
                ## 
                # The priority property
                @priority
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
                ## Gets the createdAt property value. The createdAt property
                ## @return a string
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
                ## @return a ticket_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TicketSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "createdAt" => lambda {|n| @created_at = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "priority" => lambda {|n| @priority = n.get_enum_value(TeamBattlesSdk::Generated::Models::TicketSummaryPriority) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TicketSummaryStatus) },
                        "subject" => lambda {|n| @subject = n.get_string_value() },
                        "ticketNumber" => lambda {|n| @ticket_number = n.get_number_value() },
                        "updatedAt" => lambda {|n| @updated_at = n.get_string_value() },
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
                ## Gets the priority property value. The priority property
                ## @return a ticket_summary_priority
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("category", @category)
                    writer.write_string_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_enum_value("priority", @priority)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("subject", @subject)
                    writer.write_number_value("ticketNumber", @ticket_number)
                    writer.write_string_value("updatedAt", @updated_at)
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a ticket_summary_status
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
                ## Gets the updatedAt property value. The updatedAt property
                ## @return a string
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
            end
        end
    end
end

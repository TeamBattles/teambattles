require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class ReportChatMessageResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # True if the owner had already reported this message.
                @already_reported
                ## 
                # Report ID (existing one if already reported).
                @report_id
                ## 
                # The success property
                @success
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the alreadyReported property value. True if the owner had already reported this message.
                ## @return a boolean
                ## 
                def already_reported
                    return @already_reported
                end
                ## 
                ## Sets the alreadyReported property value. True if the owner had already reported this message.
                ## @param value Value to set for the alreadyReported property.
                ## @return a void
                ## 
                def already_reported=(value)
                    @already_reported = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a report_chat_message_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ReportChatMessageResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "alreadyReported" => lambda {|n| @already_reported = n.get_boolean_value() },
                        "reportId" => lambda {|n| @report_id = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the reportId property value. Report ID (existing one if already reported).
                ## @return a string
                ## 
                def report_id
                    return @report_id
                end
                ## 
                ## Sets the reportId property value. Report ID (existing one if already reported).
                ## @param value Value to set for the reportId property.
                ## @return a void
                ## 
                def report_id=(value)
                    @report_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("alreadyReported", @already_reported)
                    writer.write_string_value("reportId", @report_id)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
                end
                ## 
                ## Gets the timestamp property value. Response generation time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Response generation time (ISO 8601).
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end

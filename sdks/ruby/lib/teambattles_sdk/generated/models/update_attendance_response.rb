require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpdateAttendanceResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The message property
                @message
                ## 
                # The reclaimedSpot property
                @reclaimed_spot
                ## 
                # The replacedBy property
                @replaced_by
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_attendance_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateAttendanceResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "message" => lambda {|n| @message = n.get_string_value() },
                        "reclaimedSpot" => lambda {|n| @reclaimed_spot = n.get_boolean_value() },
                        "replacedBy" => lambda {|n| @replaced_by = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the message property value. The message property
                ## @return a string
                ## 
                def message
                    return @message
                end
                ## 
                ## Sets the message property value. The message property
                ## @param value Value to set for the message property.
                ## @return a void
                ## 
                def message=(value)
                    @message = value
                end
                ## 
                ## Gets the reclaimedSpot property value. The reclaimedSpot property
                ## @return a boolean
                ## 
                def reclaimed_spot
                    return @reclaimed_spot
                end
                ## 
                ## Sets the reclaimedSpot property value. The reclaimedSpot property
                ## @param value Value to set for the reclaimedSpot property.
                ## @return a void
                ## 
                def reclaimed_spot=(value)
                    @reclaimed_spot = value
                end
                ## 
                ## Gets the replacedBy property value. The replacedBy property
                ## @return a string
                ## 
                def replaced_by
                    return @replaced_by
                end
                ## 
                ## Sets the replacedBy property value. The replacedBy property
                ## @param value Value to set for the replacedBy property.
                ## @return a void
                ## 
                def replaced_by=(value)
                    @replaced_by = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("message", @message)
                    writer.write_boolean_value("reclaimedSpot", @reclaimed_spot)
                    writer.write_string_value("replacedBy", @replaced_by)
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
            end
        end
    end
end

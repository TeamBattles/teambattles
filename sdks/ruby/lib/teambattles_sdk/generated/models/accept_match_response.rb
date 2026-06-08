require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class AcceptMatchResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The acceptanceId property
                @acceptance_id
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Gets the acceptanceId property value. The acceptanceId property
                ## @return a string
                ## 
                def acceptance_id
                    return @acceptance_id
                end
                ## 
                ## Sets the acceptanceId property value. The acceptanceId property
                ## @param value Value to set for the acceptanceId property.
                ## @return a void
                ## 
                def acceptance_id=(value)
                    @acceptance_id = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a accept_match_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AcceptMatchResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "acceptanceId" => lambda {|n| @acceptance_id = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("acceptanceId", @acceptance_id)
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

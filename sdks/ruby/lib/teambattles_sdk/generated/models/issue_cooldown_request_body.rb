require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Issues or updates a manual league member cooldown.
            class IssueCooldownRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Cooldown length in hours, from 1 to 8760.
                @cooldown_hours
                ## 
                # Optional admin note.
                @note
                ## 
                # User ID receiving the cooldown.
                @user_id
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new IssueCooldownRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the cooldownHours property value. Cooldown length in hours, from 1 to 8760.
                ## @return a integer
                ## 
                def cooldown_hours
                    return @cooldown_hours
                end
                ## 
                ## Sets the cooldownHours property value. Cooldown length in hours, from 1 to 8760.
                ## @param value Value to set for the cooldownHours property.
                ## @return a void
                ## 
                def cooldown_hours=(value)
                    @cooldown_hours = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a issue_cooldown_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IssueCooldownRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "cooldownHours" => lambda {|n| @cooldown_hours = n.get_number_value() },
                        "note" => lambda {|n| @note = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the note property value. Optional admin note.
                ## @return a string
                ## 
                def note
                    return @note
                end
                ## 
                ## Sets the note property value. Optional admin note.
                ## @param value Value to set for the note property.
                ## @return a void
                ## 
                def note=(value)
                    @note = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("cooldownHours", @cooldown_hours)
                    writer.write_string_value("note", @note)
                    writer.write_string_value("userId", @user_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the userId property value. User ID receiving the cooldown.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. User ID receiving the cooldown.
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
            end
        end
    end
end

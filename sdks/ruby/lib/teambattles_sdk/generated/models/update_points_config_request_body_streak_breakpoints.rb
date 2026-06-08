require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpdatePointsConfigRequestBodyStreakBreakpoints
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The bonus property
                @bonus
                ## 
                # The count property
                @count
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
                ## Gets the bonus property value. The bonus property
                ## @return a double
                ## 
                def bonus
                    return @bonus
                end
                ## 
                ## Sets the bonus property value. The bonus property
                ## @param value Value to set for the bonus property.
                ## @return a void
                ## 
                def bonus=(value)
                    @bonus = value
                end
                ## 
                ## Instantiates a new UpdatePointsConfigRequestBodyStreakBreakpoints and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the count property value. The count property
                ## @return a double
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. The count property
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_points_config_request_body_streak_breakpoints
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdatePointsConfigRequestBodyStreakBreakpoints.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "bonus" => lambda {|n| @bonus = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "count" => lambda {|n| @count = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("bonus", @bonus)
                    writer.write_object_value("count", @count)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

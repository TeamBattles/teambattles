require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpdateGameRulesRequestBodyTeamSize
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The max property
                @max
                ## 
                # The min property
                @min
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
                ## Instantiates a new UpdateGameRulesRequestBodyTeamSize and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_game_rules_request_body_team_size
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateGameRulesRequestBodyTeamSize.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "max" => lambda {|n| @max = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "min" => lambda {|n| @min = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the max property value. The max property
                ## @return a double
                ## 
                def max
                    return @max
                end
                ## 
                ## Sets the max property value. The max property
                ## @param value Value to set for the max property.
                ## @return a void
                ## 
                def max=(value)
                    @max = value
                end
                ## 
                ## Gets the min property value. The min property
                ## @return a double
                ## 
                def min
                    return @min
                end
                ## 
                ## Sets the min property value. The min property
                ## @param value Value to set for the min property.
                ## @return a void
                ## 
                def min=(value)
                    @min = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("max", @max)
                    writer.write_object_value("min", @min)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

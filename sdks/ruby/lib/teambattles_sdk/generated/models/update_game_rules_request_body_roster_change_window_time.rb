require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpdateGameRulesRequestBodyRosterChangeWindowTime
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The end property
                @end_escaped
                ## 
                # The start property
                @start
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
                ## Instantiates a new UpdateGameRulesRequestBodyRosterChangeWindowTime and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_game_rules_request_body_roster_change_window_time
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateGameRulesRequestBodyRosterChangeWindowTime.new
                end
                ## 
                ## Gets the end property value. The end property
                ## @return a string
                ## 
                def end_escaped
                    return @end_escaped
                end
                ## 
                ## Sets the end property value. The end property
                ## @param value Value to set for the end property.
                ## @return a void
                ## 
                def end_escaped=(value)
                    @end_escaped = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "end" => lambda {|n| @end_escaped = n.get_string_value() },
                        "start" => lambda {|n| @start = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("end", @end_escaped)
                    writer.write_string_value("start", @start)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the start property value. The start property
                ## @return a string
                ## 
                def start
                    return @start
                end
                ## 
                ## Sets the start property value. The start property
                ## @param value Value to set for the start property.
                ## @return a void
                ## 
                def start=(value)
                    @start = value
                end
            end
        end
    end
end

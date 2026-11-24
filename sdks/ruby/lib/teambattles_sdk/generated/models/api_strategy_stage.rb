require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A single playback stage of a strategy.
            class ApiStrategyStage
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stage playback duration in milliseconds.
                @duration_ms
                ## 
                # Stable stage id within the strategy.
                @id
                ## 
                # Author stage label, when set.
                @label
                ## 
                # Registered map level for this stage. Omitted values use the map default.
                @level_id
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_strategy_stage
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiStrategyStage.new
                end
                ## 
                ## Gets the durationMs property value. Stage playback duration in milliseconds.
                ## @return a integer
                ## 
                def duration_ms
                    return @duration_ms
                end
                ## 
                ## Sets the durationMs property value. Stage playback duration in milliseconds.
                ## @param value Value to set for the durationMs property.
                ## @return a void
                ## 
                def duration_ms=(value)
                    @duration_ms = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "durationMs" => lambda {|n| @duration_ms = n.get_number_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "label" => lambda {|n| @label = n.get_string_value() },
                        "levelId" => lambda {|n| @level_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Stable stage id within the strategy.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Stable stage id within the strategy.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the label property value. Author stage label, when set.
                ## @return a string
                ## 
                def label
                    return @label
                end
                ## 
                ## Sets the label property value. Author stage label, when set.
                ## @param value Value to set for the label property.
                ## @return a void
                ## 
                def label=(value)
                    @label = value
                end
                ## 
                ## Gets the levelId property value. Registered map level for this stage. Omitted values use the map default.
                ## @return a string
                ## 
                def level_id
                    return @level_id
                end
                ## 
                ## Sets the levelId property value. Registered map level for this stage. Omitted values use the map default.
                ## @param value Value to set for the levelId property.
                ## @return a void
                ## 
                def level_id=(value)
                    @level_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("durationMs", @duration_ms)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("label", @label)
                    writer.write_string_value("levelId", @level_id)
                end
            end
        end
    end
end

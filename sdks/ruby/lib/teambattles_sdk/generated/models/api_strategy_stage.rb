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
                        "label" => lambda {|n| @label = n.get_object_value(lambda {|pn| ApiStrategyStage::ApiStrategyStageLabel.create_from_discriminator_value(pn) }) },
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
                ## @return a api_strategy_stage_label
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("durationMs", @duration_ms)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("label", @label)
                end

                ## 
                # Composed type wrapper for classes ApiStrategyStageLabelMember1, string
                class ApiStrategyStageLabel
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyStageLabelMember1
                    @api_strategy_stage_label_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategyStage_labelMember1 property value. Composed type representation for type ApiStrategyStageLabelMember1
                    ## @return a api_strategy_stage_label_member1
                    ## 
                    def api_strategy_stage_label_member1
                        return @api_strategy_stage_label_member1
                    end
                    ## 
                    ## Sets the ApiStrategyStage_labelMember1 property value. Composed type representation for type ApiStrategyStageLabelMember1
                    ## @param value Value to set for the ApiStrategyStage_labelMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_stage_label_member1=(value)
                        @api_strategy_stage_label_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_stage_label
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyStageLabel.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategyStage_labelMember1" => lambda {|n| @api_strategy_stage_label_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyStageLabelMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiStrategyStage_labelMember1", @api_strategy_stage_label_member1)
                        writer.write_string_value("string", @string)
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
                end
            end
        end
    end
end

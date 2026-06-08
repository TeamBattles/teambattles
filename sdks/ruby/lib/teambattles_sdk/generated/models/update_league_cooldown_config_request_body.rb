require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Updates league member cooldown configuration.
            class UpdateLeagueCooldownConfigRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The kickCooldownHours property
                @kick_cooldown_hours
                ## 
                # The maxCooldownHours property
                @max_cooldown_hours
                ## 
                # The repeatLeaveCooldownMultiplier property
                @repeat_leave_cooldown_multiplier
                ## 
                # The repeatLeavePenaltyEnabled property
                @repeat_leave_penalty_enabled
                ## 
                # The selfLeaveCooldownHours property
                @self_leave_cooldown_hours
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
                ## Instantiates a new UpdateLeagueCooldownConfigRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_league_cooldown_config_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateLeagueCooldownConfigRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "kickCooldownHours" => lambda {|n| @kick_cooldown_hours = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxCooldownHours" => lambda {|n| @max_cooldown_hours = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "repeatLeaveCooldownMultiplier" => lambda {|n| @repeat_leave_cooldown_multiplier = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "repeatLeavePenaltyEnabled" => lambda {|n| @repeat_leave_penalty_enabled = n.get_boolean_value() },
                        "selfLeaveCooldownHours" => lambda {|n| @self_leave_cooldown_hours = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the kickCooldownHours property value. The kickCooldownHours property
                ## @return a double
                ## 
                def kick_cooldown_hours
                    return @kick_cooldown_hours
                end
                ## 
                ## Sets the kickCooldownHours property value. The kickCooldownHours property
                ## @param value Value to set for the kickCooldownHours property.
                ## @return a void
                ## 
                def kick_cooldown_hours=(value)
                    @kick_cooldown_hours = value
                end
                ## 
                ## Gets the maxCooldownHours property value. The maxCooldownHours property
                ## @return a double
                ## 
                def max_cooldown_hours
                    return @max_cooldown_hours
                end
                ## 
                ## Sets the maxCooldownHours property value. The maxCooldownHours property
                ## @param value Value to set for the maxCooldownHours property.
                ## @return a void
                ## 
                def max_cooldown_hours=(value)
                    @max_cooldown_hours = value
                end
                ## 
                ## Gets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
                ## @return a double
                ## 
                def repeat_leave_cooldown_multiplier
                    return @repeat_leave_cooldown_multiplier
                end
                ## 
                ## Sets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
                ## @param value Value to set for the repeatLeaveCooldownMultiplier property.
                ## @return a void
                ## 
                def repeat_leave_cooldown_multiplier=(value)
                    @repeat_leave_cooldown_multiplier = value
                end
                ## 
                ## Gets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
                ## @return a boolean
                ## 
                def repeat_leave_penalty_enabled
                    return @repeat_leave_penalty_enabled
                end
                ## 
                ## Sets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
                ## @param value Value to set for the repeatLeavePenaltyEnabled property.
                ## @return a void
                ## 
                def repeat_leave_penalty_enabled=(value)
                    @repeat_leave_penalty_enabled = value
                end
                ## 
                ## Gets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
                ## @return a double
                ## 
                def self_leave_cooldown_hours
                    return @self_leave_cooldown_hours
                end
                ## 
                ## Sets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
                ## @param value Value to set for the selfLeaveCooldownHours property.
                ## @return a void
                ## 
                def self_leave_cooldown_hours=(value)
                    @self_leave_cooldown_hours = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("kickCooldownHours", @kick_cooldown_hours)
                    writer.write_object_value("maxCooldownHours", @max_cooldown_hours)
                    writer.write_object_value("repeatLeaveCooldownMultiplier", @repeat_leave_cooldown_multiplier)
                    writer.write_boolean_value("repeatLeavePenaltyEnabled", @repeat_leave_penalty_enabled)
                    writer.write_object_value("selfLeaveCooldownHours", @self_leave_cooldown_hours)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

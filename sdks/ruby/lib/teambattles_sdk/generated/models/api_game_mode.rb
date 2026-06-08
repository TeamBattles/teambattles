require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Static game mode definition.
            class ApiGameMode
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The descriptionKey property
                @description_key
                ## 
                # The id property
                @id
                ## 
                # The image property
                @image
                ## 
                # The mapIds property
                @map_ids
                ## 
                # The nameKey property
                @name_key
                ## 
                # The rewardBonus property
                @reward_bonus
                ## 
                # The shortName property
                @short_name
                ## 
                # The supportsDraftToggle property
                @supports_draft_toggle
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_mode
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameMode.new
                end
                ## 
                ## Gets the descriptionKey property value. The descriptionKey property
                ## @return a api_game_mode_description_key
                ## 
                def description_key
                    return @description_key
                end
                ## 
                ## Sets the descriptionKey property value. The descriptionKey property
                ## @param value Value to set for the descriptionKey property.
                ## @return a void
                ## 
                def description_key=(value)
                    @description_key = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "descriptionKey" => lambda {|n| @description_key = n.get_object_value(lambda {|pn| ApiGameMode::ApiGameModeDescriptionKey.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| ApiGameMode::ApiGameModeImage.create_from_discriminator_value(pn) }) },
                        "mapIds" => lambda {|n| @map_ids = n.get_collection_of_primitive_values(String) },
                        "nameKey" => lambda {|n| @name_key = n.get_string_value() },
                        "rewardBonus" => lambda {|n| @reward_bonus = n.get_object_value(lambda {|pn| ApiGameMode::ApiGameModeRewardBonus.create_from_discriminator_value(pn) }) },
                        "shortName" => lambda {|n| @short_name = n.get_object_value(lambda {|pn| ApiGameMode::ApiGameModeShortName.create_from_discriminator_value(pn) }) },
                        "supportsDraftToggle" => lambda {|n| @supports_draft_toggle = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the id property value. The id property
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the image property value. The image property
                ## @return a api_game_mode_image
                ## 
                def image
                    return @image
                end
                ## 
                ## Sets the image property value. The image property
                ## @param value Value to set for the image property.
                ## @return a void
                ## 
                def image=(value)
                    @image = value
                end
                ## 
                ## Gets the mapIds property value. The mapIds property
                ## @return a string
                ## 
                def map_ids
                    return @map_ids
                end
                ## 
                ## Sets the mapIds property value. The mapIds property
                ## @param value Value to set for the mapIds property.
                ## @return a void
                ## 
                def map_ids=(value)
                    @map_ids = value
                end
                ## 
                ## Gets the nameKey property value. The nameKey property
                ## @return a string
                ## 
                def name_key
                    return @name_key
                end
                ## 
                ## Sets the nameKey property value. The nameKey property
                ## @param value Value to set for the nameKey property.
                ## @return a void
                ## 
                def name_key=(value)
                    @name_key = value
                end
                ## 
                ## Gets the rewardBonus property value. The rewardBonus property
                ## @return a api_game_mode_reward_bonus
                ## 
                def reward_bonus
                    return @reward_bonus
                end
                ## 
                ## Sets the rewardBonus property value. The rewardBonus property
                ## @param value Value to set for the rewardBonus property.
                ## @return a void
                ## 
                def reward_bonus=(value)
                    @reward_bonus = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("descriptionKey", @description_key)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("image", @image)
                    writer.write_collection_of_primitive_values("mapIds", @map_ids)
                    writer.write_string_value("nameKey", @name_key)
                    writer.write_object_value("rewardBonus", @reward_bonus)
                    writer.write_object_value("shortName", @short_name)
                    writer.write_boolean_value("supportsDraftToggle", @supports_draft_toggle)
                end
                ## 
                ## Gets the shortName property value. The shortName property
                ## @return a api_game_mode_short_name
                ## 
                def short_name
                    return @short_name
                end
                ## 
                ## Sets the shortName property value. The shortName property
                ## @param value Value to set for the shortName property.
                ## @return a void
                ## 
                def short_name=(value)
                    @short_name = value
                end
                ## 
                ## Gets the supportsDraftToggle property value. The supportsDraftToggle property
                ## @return a boolean
                ## 
                def supports_draft_toggle
                    return @supports_draft_toggle
                end
                ## 
                ## Sets the supportsDraftToggle property value. The supportsDraftToggle property
                ## @param value Value to set for the supportsDraftToggle property.
                ## @return a void
                ## 
                def supports_draft_toggle=(value)
                    @supports_draft_toggle = value
                end

                ## 
                # Composed type wrapper for classes ApiGameModeDescriptionKeyMember1, string
                class ApiGameModeDescriptionKey
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameModeDescriptionKeyMember1
                    @api_game_mode_description_key_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type ApiGameModeDescriptionKeyMember1
                    ## @return a api_game_mode_description_key_member1
                    ## 
                    def api_game_mode_description_key_member1
                        return @api_game_mode_description_key_member1
                    end
                    ## 
                    ## Sets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type ApiGameModeDescriptionKeyMember1
                    ## @param value Value to set for the ApiGameMode_descriptionKeyMember1 property.
                    ## @return a void
                    ## 
                    def api_game_mode_description_key_member1=(value)
                        @api_game_mode_description_key_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_mode_description_key
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameModeDescriptionKey.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameMode_descriptionKeyMember1" => lambda {|n| @api_game_mode_description_key_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameModeDescriptionKeyMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameMode_descriptionKeyMember1", @api_game_mode_description_key_member1)
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

                ## 
                # Composed type wrapper for classes ApiGameModeImageMember1, string
                class ApiGameModeImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameModeImageMember1
                    @api_game_mode_image_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameMode_imageMember1 property value. Composed type representation for type ApiGameModeImageMember1
                    ## @return a api_game_mode_image_member1
                    ## 
                    def api_game_mode_image_member1
                        return @api_game_mode_image_member1
                    end
                    ## 
                    ## Sets the ApiGameMode_imageMember1 property value. Composed type representation for type ApiGameModeImageMember1
                    ## @param value Value to set for the ApiGameMode_imageMember1 property.
                    ## @return a void
                    ## 
                    def api_game_mode_image_member1=(value)
                        @api_game_mode_image_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_mode_image
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameModeImage.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameMode_imageMember1" => lambda {|n| @api_game_mode_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameModeImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameMode_imageMember1", @api_game_mode_image_member1)
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

                ## 
                # Composed type wrapper for classes ApiGameModeRewardBonusMember1, Double
                class ApiGameModeRewardBonus
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameModeRewardBonusMember1
                    @api_game_mode_reward_bonus_member1
                    ## 
                    # Composed type representation for type Double
                    @double
                    ## 
                    ## Gets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type ApiGameModeRewardBonusMember1
                    ## @return a api_game_mode_reward_bonus_member1
                    ## 
                    def api_game_mode_reward_bonus_member1
                        return @api_game_mode_reward_bonus_member1
                    end
                    ## 
                    ## Sets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type ApiGameModeRewardBonusMember1
                    ## @param value Value to set for the ApiGameMode_rewardBonusMember1 property.
                    ## @return a void
                    ## 
                    def api_game_mode_reward_bonus_member1=(value)
                        @api_game_mode_reward_bonus_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_mode_reward_bonus
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameModeRewardBonus.new
                    end
                    ## 
                    ## Gets the double property value. Composed type representation for type Double
                    ## @return a double
                    ## 
                    def double
                        return @double
                    end
                    ## 
                    ## Sets the double property value. Composed type representation for type Double
                    ## @param value Value to set for the double property.
                    ## @return a void
                    ## 
                    def double=(value)
                        @double = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameMode_rewardBonusMember1" => lambda {|n| @api_game_mode_reward_bonus_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameModeRewardBonusMember1.create_from_discriminator_value(pn) }) },
                            "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiGameMode_rewardBonusMember1", @api_game_mode_reward_bonus_member1)
                        writer.write_object_value("double", @double)
                    end
                end

                ## 
                # Composed type wrapper for classes ApiGameModeShortNameMember1, string
                class ApiGameModeShortName
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameModeShortNameMember1
                    @api_game_mode_short_name_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameMode_shortNameMember1 property value. Composed type representation for type ApiGameModeShortNameMember1
                    ## @return a api_game_mode_short_name_member1
                    ## 
                    def api_game_mode_short_name_member1
                        return @api_game_mode_short_name_member1
                    end
                    ## 
                    ## Sets the ApiGameMode_shortNameMember1 property value. Composed type representation for type ApiGameModeShortNameMember1
                    ## @param value Value to set for the ApiGameMode_shortNameMember1 property.
                    ## @return a void
                    ## 
                    def api_game_mode_short_name_member1=(value)
                        @api_game_mode_short_name_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_mode_short_name
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameModeShortName.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameMode_shortNameMember1" => lambda {|n| @api_game_mode_short_name_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameModeShortNameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameMode_shortNameMember1", @api_game_mode_short_name_member1)
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

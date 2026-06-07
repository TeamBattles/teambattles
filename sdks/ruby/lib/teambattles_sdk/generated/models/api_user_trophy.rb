require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # API-safe user trophy. Event linkage fields are intentionally omitted.
            class ApiUserTrophy
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The awardedAt property
                @awarded_at
                ##
                # The description property
                @description
                ##
                # The iconUrl property
                @icon_url
                ##
                # Trophy award ID.
                @id
                ##
                # The rarity property
                @rarity
                ##
                # The title property
                @title
                ##
                # Trophy definition ID.
                @trophy_id
                ##
                ## Gets the awardedAt property value. The awardedAt property
                ## @return a api_user_trophy_awarded_at
                ##
                def awarded_at
                    return @awarded_at
                end
                ##
                ## Sets the awardedAt property value. The awardedAt property
                ## @param value Value to set for the awardedAt property.
                ## @return a void
                ##
                def awarded_at=(value)
                    @awarded_at = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_user_trophy
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserTrophy.new
                end
                ##
                ## Gets the description property value. The description property
                ## @return a api_user_trophy_description
                ##
                def description
                    return @description
                end
                ##
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ##
                def description=(value)
                    @description = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "awardedAt" => lambda {|n| @awarded_at = n.get_object_value(lambda {|pn| ApiUserTrophy::ApiUserTrophyAwardedAt.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| ApiUserTrophy::ApiUserTrophyDescription.create_from_discriminator_value(pn) }) },
                        "iconUrl" => lambda {|n| @icon_url = n.get_object_value(lambda {|pn| ApiUserTrophy::ApiUserTrophyIconUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "rarity" => lambda {|n| @rarity = n.get_object_value(lambda {|pn| ApiUserTrophy::ApiUserTrophyRarity.create_from_discriminator_value(pn) }) },
                        "title" => lambda {|n| @title = n.get_object_value(lambda {|pn| ApiUserTrophy::ApiUserTrophyTitle.create_from_discriminator_value(pn) }) },
                        "trophyId" => lambda {|n| @trophy_id = n.get_string_value() },
                    }
                end
                ##
                ## Gets the iconUrl property value. The iconUrl property
                ## @return a api_user_trophy_icon_url
                ##
                def icon_url
                    return @icon_url
                end
                ##
                ## Sets the iconUrl property value. The iconUrl property
                ## @param value Value to set for the iconUrl property.
                ## @return a void
                ##
                def icon_url=(value)
                    @icon_url = value
                end
                ##
                ## Gets the id property value. Trophy award ID.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. Trophy award ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the rarity property value. The rarity property
                ## @return a api_user_trophy_rarity
                ##
                def rarity
                    return @rarity
                end
                ##
                ## Sets the rarity property value. The rarity property
                ## @param value Value to set for the rarity property.
                ## @return a void
                ##
                def rarity=(value)
                    @rarity = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("awardedAt", @awarded_at)
                    writer.write_object_value("description", @description)
                    writer.write_object_value("iconUrl", @icon_url)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("rarity", @rarity)
                    writer.write_object_value("title", @title)
                    writer.write_string_value("trophyId", @trophy_id)
                end
                ##
                ## Gets the title property value. The title property
                ## @return a api_user_trophy_title
                ##
                def title
                    return @title
                end
                ##
                ## Sets the title property value. The title property
                ## @param value Value to set for the title property.
                ## @return a void
                ##
                def title=(value)
                    @title = value
                end
                ##
                ## Gets the trophyId property value. Trophy definition ID.
                ## @return a string
                ##
                def trophy_id
                    return @trophy_id
                end
                ##
                ## Sets the trophyId property value. Trophy definition ID.
                ## @param value Value to set for the trophyId property.
                ## @return a void
                ##
                def trophy_id=(value)
                    @trophy_id = value
                end

                ##
                # Composed type wrapper for classes ApiUserTrophyAwardedAtMember1, string
                class ApiUserTrophyAwardedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserTrophyAwardedAtMember1
                    @api_user_trophy_awarded_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserTrophy_awardedAtMember1 property value. Composed type representation for type ApiUserTrophyAwardedAtMember1
                    ## @return a api_user_trophy_awarded_at_member1
                    ##
                    def api_user_trophy_awarded_at_member1
                        return @api_user_trophy_awarded_at_member1
                    end
                    ##
                    ## Sets the ApiUserTrophy_awardedAtMember1 property value. Composed type representation for type ApiUserTrophyAwardedAtMember1
                    ## @param value Value to set for the ApiUserTrophy_awardedAtMember1 property.
                    ## @return a void
                    ##
                    def api_user_trophy_awarded_at_member1=(value)
                        @api_user_trophy_awarded_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_trophy_awarded_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTrophyAwardedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserTrophy_awardedAtMember1" => lambda {|n| @api_user_trophy_awarded_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTrophyAwardedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTrophy_awardedAtMember1", @api_user_trophy_awarded_at_member1)
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
                # Composed type wrapper for classes ApiUserTrophyDescriptionMember1, string
                class ApiUserTrophyDescription
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserTrophyDescriptionMember1
                    @api_user_trophy_description_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserTrophy_descriptionMember1 property value. Composed type representation for type ApiUserTrophyDescriptionMember1
                    ## @return a api_user_trophy_description_member1
                    ##
                    def api_user_trophy_description_member1
                        return @api_user_trophy_description_member1
                    end
                    ##
                    ## Sets the ApiUserTrophy_descriptionMember1 property value. Composed type representation for type ApiUserTrophyDescriptionMember1
                    ## @param value Value to set for the ApiUserTrophy_descriptionMember1 property.
                    ## @return a void
                    ##
                    def api_user_trophy_description_member1=(value)
                        @api_user_trophy_description_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_trophy_description
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTrophyDescription.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserTrophy_descriptionMember1" => lambda {|n| @api_user_trophy_description_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTrophyDescriptionMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTrophy_descriptionMember1", @api_user_trophy_description_member1)
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
                # Composed type wrapper for classes ApiUserTrophyIconUrlMember1, string
                class ApiUserTrophyIconUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserTrophyIconUrlMember1
                    @api_user_trophy_icon_url_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type ApiUserTrophyIconUrlMember1
                    ## @return a api_user_trophy_icon_url_member1
                    ##
                    def api_user_trophy_icon_url_member1
                        return @api_user_trophy_icon_url_member1
                    end
                    ##
                    ## Sets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type ApiUserTrophyIconUrlMember1
                    ## @param value Value to set for the ApiUserTrophy_iconUrlMember1 property.
                    ## @return a void
                    ##
                    def api_user_trophy_icon_url_member1=(value)
                        @api_user_trophy_icon_url_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_trophy_icon_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTrophyIconUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserTrophy_iconUrlMember1" => lambda {|n| @api_user_trophy_icon_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTrophyIconUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTrophy_iconUrlMember1", @api_user_trophy_icon_url_member1)
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
                # Composed type wrapper for classes ApiUserTrophyRarityMember1, string
                class ApiUserTrophyRarity
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserTrophyRarityMember1
                    @api_user_trophy_rarity_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type ApiUserTrophyRarityMember1
                    ## @return a api_user_trophy_rarity_member1
                    ##
                    def api_user_trophy_rarity_member1
                        return @api_user_trophy_rarity_member1
                    end
                    ##
                    ## Sets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type ApiUserTrophyRarityMember1
                    ## @param value Value to set for the ApiUserTrophy_rarityMember1 property.
                    ## @return a void
                    ##
                    def api_user_trophy_rarity_member1=(value)
                        @api_user_trophy_rarity_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_trophy_rarity
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTrophyRarity.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserTrophy_rarityMember1" => lambda {|n| @api_user_trophy_rarity_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTrophyRarityMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTrophy_rarityMember1", @api_user_trophy_rarity_member1)
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
                # Composed type wrapper for classes ApiUserTrophyTitleMember1, string
                class ApiUserTrophyTitle
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserTrophyTitleMember1
                    @api_user_trophy_title_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserTrophy_titleMember1 property value. Composed type representation for type ApiUserTrophyTitleMember1
                    ## @return a api_user_trophy_title_member1
                    ##
                    def api_user_trophy_title_member1
                        return @api_user_trophy_title_member1
                    end
                    ##
                    ## Sets the ApiUserTrophy_titleMember1 property value. Composed type representation for type ApiUserTrophyTitleMember1
                    ## @param value Value to set for the ApiUserTrophy_titleMember1 property.
                    ## @return a void
                    ##
                    def api_user_trophy_title_member1=(value)
                        @api_user_trophy_title_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_trophy_title
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserTrophyTitle.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserTrophy_titleMember1" => lambda {|n| @api_user_trophy_title_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserTrophyTitleMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserTrophy_titleMember1", @api_user_trophy_title_member1)
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

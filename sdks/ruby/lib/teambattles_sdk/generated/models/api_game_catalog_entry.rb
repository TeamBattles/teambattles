require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Static public game catalog entry.
            class ApiGameCatalogEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The bannerImage property
                @banner_image
                ## 
                # The category property
                @category
                ## 
                # Active Convex games-table ID, when available for match APIs.
                @convex_id
                ## 
                # The coverImage property
                @cover_image
                ## 
                # The defaultTeamSize property
                @default_team_size
                ## 
                # The descriptionKey property
                @description_key
                ## 
                # The hasCompetitiveMode property
                @has_competitive_mode
                ## 
                # Static public game ID/slug.
                @id
                ## 
                # The isAvailableForMatchApi property
                @is_available_for_match_api
                ## 
                # The isComingSoon property
                @is_coming_soon
                ## 
                # The maps property
                @maps
                ## 
                # The modeMapPools property
                @mode_map_pools
                ## 
                # The modes property
                @modes
                ## 
                # The nameKey property
                @name_key
                ## 
                # The playlists property
                @playlists
                ## 
                # The rulesLink property
                @rules_link
                ## 
                # The shortNameKey property
                @short_name_key
                ## 
                ## Gets the bannerImage property value. The bannerImage property
                ## @return a api_game_catalog_entry_banner_image
                ## 
                def banner_image
                    return @banner_image
                end
                ## 
                ## Sets the bannerImage property value. The bannerImage property
                ## @param value Value to set for the bannerImage property.
                ## @return a void
                ## 
                def banner_image=(value)
                    @banner_image = value
                end
                ## 
                ## Gets the category property value. The category property
                ## @return a string
                ## 
                def category
                    return @category
                end
                ## 
                ## Sets the category property value. The category property
                ## @param value Value to set for the category property.
                ## @return a void
                ## 
                def category=(value)
                    @category = value
                end
                ## 
                ## Gets the convexId property value. Active Convex games-table ID, when available for match APIs.
                ## @return a api_game_catalog_entry_convex_id
                ## 
                def convex_id
                    return @convex_id
                end
                ## 
                ## Sets the convexId property value. Active Convex games-table ID, when available for match APIs.
                ## @param value Value to set for the convexId property.
                ## @return a void
                ## 
                def convex_id=(value)
                    @convex_id = value
                end
                ## 
                ## Gets the coverImage property value. The coverImage property
                ## @return a api_game_catalog_entry_cover_image
                ## 
                def cover_image
                    return @cover_image
                end
                ## 
                ## Sets the coverImage property value. The coverImage property
                ## @param value Value to set for the coverImage property.
                ## @return a void
                ## 
                def cover_image=(value)
                    @cover_image = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_catalog_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameCatalogEntry.new
                end
                ## 
                ## Gets the defaultTeamSize property value. The defaultTeamSize property
                ## @return a integer
                ## 
                def default_team_size
                    return @default_team_size
                end
                ## 
                ## Sets the defaultTeamSize property value. The defaultTeamSize property
                ## @param value Value to set for the defaultTeamSize property.
                ## @return a void
                ## 
                def default_team_size=(value)
                    @default_team_size = value
                end
                ## 
                ## Gets the descriptionKey property value. The descriptionKey property
                ## @return a api_game_catalog_entry_description_key
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
                        "bannerImage" => lambda {|n| @banner_image = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryBannerImage.create_from_discriminator_value(pn) }) },
                        "category" => lambda {|n| @category = n.get_string_value() },
                        "convexId" => lambda {|n| @convex_id = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryConvexId.create_from_discriminator_value(pn) }) },
                        "coverImage" => lambda {|n| @cover_image = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryCoverImage.create_from_discriminator_value(pn) }) },
                        "defaultTeamSize" => lambda {|n| @default_team_size = n.get_number_value() },
                        "descriptionKey" => lambda {|n| @description_key = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryDescriptionKey.create_from_discriminator_value(pn) }) },
                        "hasCompetitiveMode" => lambda {|n| @has_competitive_mode = n.get_boolean_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isAvailableForMatchApi" => lambda {|n| @is_available_for_match_api = n.get_boolean_value() },
                        "isComingSoon" => lambda {|n| @is_coming_soon = n.get_boolean_value() },
                        "maps" => lambda {|n| @maps = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameMap.create_from_discriminator_value(pn) }) },
                        "modeMapPools" => lambda {|n| @mode_map_pools = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameModeMapPool.create_from_discriminator_value(pn) }) },
                        "modes" => lambda {|n| @modes = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameMode.create_from_discriminator_value(pn) }) },
                        "nameKey" => lambda {|n| @name_key = n.get_string_value() },
                        "playlists" => lambda {|n| @playlists = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGamePlaylist.create_from_discriminator_value(pn) }) },
                        "rulesLink" => lambda {|n| @rules_link = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryRulesLink.create_from_discriminator_value(pn) }) },
                        "shortNameKey" => lambda {|n| @short_name_key = n.get_object_value(lambda {|pn| ApiGameCatalogEntry::ApiGameCatalogEntryShortNameKey.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the hasCompetitiveMode property value. The hasCompetitiveMode property
                ## @return a boolean
                ## 
                def has_competitive_mode
                    return @has_competitive_mode
                end
                ## 
                ## Sets the hasCompetitiveMode property value. The hasCompetitiveMode property
                ## @param value Value to set for the hasCompetitiveMode property.
                ## @return a void
                ## 
                def has_competitive_mode=(value)
                    @has_competitive_mode = value
                end
                ## 
                ## Gets the id property value. Static public game ID/slug.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Static public game ID/slug.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
                ## @return a boolean
                ## 
                def is_available_for_match_api
                    return @is_available_for_match_api
                end
                ## 
                ## Sets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
                ## @param value Value to set for the isAvailableForMatchApi property.
                ## @return a void
                ## 
                def is_available_for_match_api=(value)
                    @is_available_for_match_api = value
                end
                ## 
                ## Gets the isComingSoon property value. The isComingSoon property
                ## @return a boolean
                ## 
                def is_coming_soon
                    return @is_coming_soon
                end
                ## 
                ## Sets the isComingSoon property value. The isComingSoon property
                ## @param value Value to set for the isComingSoon property.
                ## @return a void
                ## 
                def is_coming_soon=(value)
                    @is_coming_soon = value
                end
                ## 
                ## Gets the maps property value. The maps property
                ## @return a api_game_map
                ## 
                def maps
                    return @maps
                end
                ## 
                ## Sets the maps property value. The maps property
                ## @param value Value to set for the maps property.
                ## @return a void
                ## 
                def maps=(value)
                    @maps = value
                end
                ## 
                ## Gets the modeMapPools property value. The modeMapPools property
                ## @return a api_game_mode_map_pool
                ## 
                def mode_map_pools
                    return @mode_map_pools
                end
                ## 
                ## Sets the modeMapPools property value. The modeMapPools property
                ## @param value Value to set for the modeMapPools property.
                ## @return a void
                ## 
                def mode_map_pools=(value)
                    @mode_map_pools = value
                end
                ## 
                ## Gets the modes property value. The modes property
                ## @return a api_game_mode
                ## 
                def modes
                    return @modes
                end
                ## 
                ## Sets the modes property value. The modes property
                ## @param value Value to set for the modes property.
                ## @return a void
                ## 
                def modes=(value)
                    @modes = value
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
                ## Gets the playlists property value. The playlists property
                ## @return a api_game_playlist
                ## 
                def playlists
                    return @playlists
                end
                ## 
                ## Sets the playlists property value. The playlists property
                ## @param value Value to set for the playlists property.
                ## @return a void
                ## 
                def playlists=(value)
                    @playlists = value
                end
                ## 
                ## Gets the rulesLink property value. The rulesLink property
                ## @return a api_game_catalog_entry_rules_link
                ## 
                def rules_link
                    return @rules_link
                end
                ## 
                ## Sets the rulesLink property value. The rulesLink property
                ## @param value Value to set for the rulesLink property.
                ## @return a void
                ## 
                def rules_link=(value)
                    @rules_link = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("bannerImage", @banner_image)
                    writer.write_string_value("category", @category)
                    writer.write_object_value("convexId", @convex_id)
                    writer.write_object_value("coverImage", @cover_image)
                    writer.write_number_value("defaultTeamSize", @default_team_size)
                    writer.write_object_value("descriptionKey", @description_key)
                    writer.write_boolean_value("hasCompetitiveMode", @has_competitive_mode)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isAvailableForMatchApi", @is_available_for_match_api)
                    writer.write_boolean_value("isComingSoon", @is_coming_soon)
                    writer.write_collection_of_object_values("maps", @maps)
                    writer.write_collection_of_object_values("modeMapPools", @mode_map_pools)
                    writer.write_collection_of_object_values("modes", @modes)
                    writer.write_string_value("nameKey", @name_key)
                    writer.write_collection_of_object_values("playlists", @playlists)
                    writer.write_object_value("rulesLink", @rules_link)
                    writer.write_object_value("shortNameKey", @short_name_key)
                end
                ## 
                ## Gets the shortNameKey property value. The shortNameKey property
                ## @return a api_game_catalog_entry_short_name_key
                ## 
                def short_name_key
                    return @short_name_key
                end
                ## 
                ## Sets the shortNameKey property value. The shortNameKey property
                ## @param value Value to set for the shortNameKey property.
                ## @return a void
                ## 
                def short_name_key=(value)
                    @short_name_key = value
                end

                ## 
                # Composed type wrapper for classes ApiGameCatalogEntryBannerImageMember1, string
                class ApiGameCatalogEntryBannerImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryBannerImageMember1
                    @api_game_catalog_entry_banner_image_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type ApiGameCatalogEntryBannerImageMember1
                    ## @return a api_game_catalog_entry_banner_image_member1
                    ## 
                    def api_game_catalog_entry_banner_image_member1
                        return @api_game_catalog_entry_banner_image_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type ApiGameCatalogEntryBannerImageMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_bannerImageMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_banner_image_member1=(value)
                        @api_game_catalog_entry_banner_image_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_banner_image
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryBannerImage.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_bannerImageMember1" => lambda {|n| @api_game_catalog_entry_banner_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryBannerImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_bannerImageMember1", @api_game_catalog_entry_banner_image_member1)
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
                # Composed type wrapper for classes ApiGameCatalogEntryConvexIdMember1, string
                class ApiGameCatalogEntryConvexId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryConvexIdMember1
                    @api_game_catalog_entry_convex_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_convexIdMember1 property value. Composed type representation for type ApiGameCatalogEntryConvexIdMember1
                    ## @return a api_game_catalog_entry_convex_id_member1
                    ## 
                    def api_game_catalog_entry_convex_id_member1
                        return @api_game_catalog_entry_convex_id_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_convexIdMember1 property value. Composed type representation for type ApiGameCatalogEntryConvexIdMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_convexIdMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_convex_id_member1=(value)
                        @api_game_catalog_entry_convex_id_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_convex_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryConvexId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_convexIdMember1" => lambda {|n| @api_game_catalog_entry_convex_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryConvexIdMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_convexIdMember1", @api_game_catalog_entry_convex_id_member1)
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
                # Composed type wrapper for classes ApiGameCatalogEntryCoverImageMember1, string
                class ApiGameCatalogEntryCoverImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryCoverImageMember1
                    @api_game_catalog_entry_cover_image_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type ApiGameCatalogEntryCoverImageMember1
                    ## @return a api_game_catalog_entry_cover_image_member1
                    ## 
                    def api_game_catalog_entry_cover_image_member1
                        return @api_game_catalog_entry_cover_image_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type ApiGameCatalogEntryCoverImageMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_coverImageMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_cover_image_member1=(value)
                        @api_game_catalog_entry_cover_image_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_cover_image
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryCoverImage.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_coverImageMember1" => lambda {|n| @api_game_catalog_entry_cover_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryCoverImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_coverImageMember1", @api_game_catalog_entry_cover_image_member1)
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
                # Composed type wrapper for classes ApiGameCatalogEntryDescriptionKeyMember1, string
                class ApiGameCatalogEntryDescriptionKey
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryDescriptionKeyMember1
                    @api_game_catalog_entry_description_key_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_descriptionKeyMember1 property value. Composed type representation for type ApiGameCatalogEntryDescriptionKeyMember1
                    ## @return a api_game_catalog_entry_description_key_member1
                    ## 
                    def api_game_catalog_entry_description_key_member1
                        return @api_game_catalog_entry_description_key_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_descriptionKeyMember1 property value. Composed type representation for type ApiGameCatalogEntryDescriptionKeyMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_descriptionKeyMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_description_key_member1=(value)
                        @api_game_catalog_entry_description_key_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_description_key
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryDescriptionKey.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_descriptionKeyMember1" => lambda {|n| @api_game_catalog_entry_description_key_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryDescriptionKeyMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_descriptionKeyMember1", @api_game_catalog_entry_description_key_member1)
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
                # Composed type wrapper for classes ApiGameCatalogEntryRulesLinkMember1, string
                class ApiGameCatalogEntryRulesLink
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryRulesLinkMember1
                    @api_game_catalog_entry_rules_link_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type ApiGameCatalogEntryRulesLinkMember1
                    ## @return a api_game_catalog_entry_rules_link_member1
                    ## 
                    def api_game_catalog_entry_rules_link_member1
                        return @api_game_catalog_entry_rules_link_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type ApiGameCatalogEntryRulesLinkMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_rulesLinkMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_rules_link_member1=(value)
                        @api_game_catalog_entry_rules_link_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_rules_link
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryRulesLink.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_rulesLinkMember1" => lambda {|n| @api_game_catalog_entry_rules_link_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryRulesLinkMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_rulesLinkMember1", @api_game_catalog_entry_rules_link_member1)
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
                # Composed type wrapper for classes ApiGameCatalogEntryShortNameKeyMember1, string
                class ApiGameCatalogEntryShortNameKey
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiGameCatalogEntryShortNameKeyMember1
                    @api_game_catalog_entry_short_name_key_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiGameCatalogEntry_shortNameKeyMember1 property value. Composed type representation for type ApiGameCatalogEntryShortNameKeyMember1
                    ## @return a api_game_catalog_entry_short_name_key_member1
                    ## 
                    def api_game_catalog_entry_short_name_key_member1
                        return @api_game_catalog_entry_short_name_key_member1
                    end
                    ## 
                    ## Sets the ApiGameCatalogEntry_shortNameKeyMember1 property value. Composed type representation for type ApiGameCatalogEntryShortNameKeyMember1
                    ## @param value Value to set for the ApiGameCatalogEntry_shortNameKeyMember1 property.
                    ## @return a void
                    ## 
                    def api_game_catalog_entry_short_name_key_member1=(value)
                        @api_game_catalog_entry_short_name_key_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_catalog_entry_short_name_key
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameCatalogEntryShortNameKey.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiGameCatalogEntry_shortNameKeyMember1" => lambda {|n| @api_game_catalog_entry_short_name_key_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntryShortNameKeyMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameCatalogEntry_shortNameKeyMember1", @api_game_catalog_entry_short_name_key_member1)
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

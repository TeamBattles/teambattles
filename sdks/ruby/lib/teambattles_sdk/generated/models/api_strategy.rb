require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe shareable strategy.
            class ApiStrategy
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The createdAt property
                @created_at
                ## 
                # Author description, when set.
                @description
                ## 
                # Game slug the strategy targets.
                @game
                ## 
                # Strategy ID.
                @id
                ## 
                # Built-in map slug, or the sentinel "__custom" for a custom map.
                @map_id
                ## 
                # Map render orientation in degrees (0, 90, 180, or 270).
                @map_rotation
                ## 
                # Strategy name.
                @name
                ## 
                # Owning user ID.
                @owner_id
                ## 
                # Whether frame playback wraps from the last stage to the first.
                @playback_loop
                ## 
                # Freshly signed preview image URL, when a preview has been rendered.
                @preview_url
                ## 
                # Public share slug.
                @share_slug
                ## 
                # The stageCount property
                @stage_count
                ## 
                # The stages property
                @stages
                ## 
                # The updatedAt property
                @updated_at
                ## 
                # Strategy share visibility setting.
                @visibility
                ## 
                ## Gets the createdAt property value. The createdAt property
                ## @return a api_strategy_created_at
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. The createdAt property
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_strategy
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiStrategy.new
                end
                ## 
                ## Gets the description property value. Author description, when set.
                ## @return a api_strategy_description
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Author description, when set.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the game property value. Game slug the strategy targets.
                ## @return a string
                ## 
                def game
                    return @game
                end
                ## 
                ## Sets the game property value. Game slug the strategy targets.
                ## @param value Value to set for the game property.
                ## @return a void
                ## 
                def game=(value)
                    @game = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| ApiStrategy::ApiStrategyCreatedAt.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_object_value(lambda {|pn| ApiStrategy::ApiStrategyDescription.create_from_discriminator_value(pn) }) },
                        "game" => lambda {|n| @game = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "mapId" => lambda {|n| @map_id = n.get_string_value() },
                        "mapRotation" => lambda {|n| @map_rotation = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "ownerId" => lambda {|n| @owner_id = n.get_string_value() },
                        "playbackLoop" => lambda {|n| @playback_loop = n.get_boolean_value() },
                        "previewUrl" => lambda {|n| @preview_url = n.get_object_value(lambda {|pn| ApiStrategy::ApiStrategyPreviewUrl.create_from_discriminator_value(pn) }) },
                        "shareSlug" => lambda {|n| @share_slug = n.get_string_value() },
                        "stageCount" => lambda {|n| @stage_count = n.get_number_value() },
                        "stages" => lambda {|n| @stages = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyStage.create_from_discriminator_value(pn) }) },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| ApiStrategy::ApiStrategyUpdatedAt.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_enum_value(TeamBattlesSdk::Generated::Models::StrategyVisibility) },
                    }
                end
                ## 
                ## Gets the id property value. Strategy ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Strategy ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the mapId property value. Built-in map slug, or the sentinel "__custom" for a custom map.
                ## @return a string
                ## 
                def map_id
                    return @map_id
                end
                ## 
                ## Sets the mapId property value. Built-in map slug, or the sentinel "__custom" for a custom map.
                ## @param value Value to set for the mapId property.
                ## @return a void
                ## 
                def map_id=(value)
                    @map_id = value
                end
                ## 
                ## Gets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
                ## @return a double
                ## 
                def map_rotation
                    return @map_rotation
                end
                ## 
                ## Sets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
                ## @param value Value to set for the mapRotation property.
                ## @return a void
                ## 
                def map_rotation=(value)
                    @map_rotation = value
                end
                ## 
                ## Gets the name property value. Strategy name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Strategy name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the ownerId property value. Owning user ID.
                ## @return a string
                ## 
                def owner_id
                    return @owner_id
                end
                ## 
                ## Sets the ownerId property value. Owning user ID.
                ## @param value Value to set for the ownerId property.
                ## @return a void
                ## 
                def owner_id=(value)
                    @owner_id = value
                end
                ## 
                ## Gets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
                ## @return a boolean
                ## 
                def playback_loop
                    return @playback_loop
                end
                ## 
                ## Sets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
                ## @param value Value to set for the playbackLoop property.
                ## @return a void
                ## 
                def playback_loop=(value)
                    @playback_loop = value
                end
                ## 
                ## Gets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
                ## @return a api_strategy_preview_url
                ## 
                def preview_url
                    return @preview_url
                end
                ## 
                ## Sets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
                ## @param value Value to set for the previewUrl property.
                ## @return a void
                ## 
                def preview_url=(value)
                    @preview_url = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_object_value("description", @description)
                    writer.write_string_value("game", @game)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("mapId", @map_id)
                    writer.write_object_value("mapRotation", @map_rotation)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("ownerId", @owner_id)
                    writer.write_boolean_value("playbackLoop", @playback_loop)
                    writer.write_object_value("previewUrl", @preview_url)
                    writer.write_string_value("shareSlug", @share_slug)
                    writer.write_number_value("stageCount", @stage_count)
                    writer.write_collection_of_object_values("stages", @stages)
                    writer.write_object_value("updatedAt", @updated_at)
                    writer.write_enum_value("visibility", @visibility)
                end
                ## 
                ## Gets the shareSlug property value. Public share slug.
                ## @return a string
                ## 
                def share_slug
                    return @share_slug
                end
                ## 
                ## Sets the shareSlug property value. Public share slug.
                ## @param value Value to set for the shareSlug property.
                ## @return a void
                ## 
                def share_slug=(value)
                    @share_slug = value
                end
                ## 
                ## Gets the stageCount property value. The stageCount property
                ## @return a integer
                ## 
                def stage_count
                    return @stage_count
                end
                ## 
                ## Sets the stageCount property value. The stageCount property
                ## @param value Value to set for the stageCount property.
                ## @return a void
                ## 
                def stage_count=(value)
                    @stage_count = value
                end
                ## 
                ## Gets the stages property value. The stages property
                ## @return a api_strategy_stage
                ## 
                def stages
                    return @stages
                end
                ## 
                ## Sets the stages property value. The stages property
                ## @param value Value to set for the stages property.
                ## @return a void
                ## 
                def stages=(value)
                    @stages = value
                end
                ## 
                ## Gets the updatedAt property value. The updatedAt property
                ## @return a api_strategy_updated_at
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. The updatedAt property
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end
                ## 
                ## Gets the visibility property value. Strategy share visibility setting.
                ## @return a strategy_visibility
                ## 
                def visibility
                    return @visibility
                end
                ## 
                ## Sets the visibility property value. Strategy share visibility setting.
                ## @param value Value to set for the visibility property.
                ## @return a void
                ## 
                def visibility=(value)
                    @visibility = value
                end

                ## 
                # Composed type wrapper for classes ApiStrategyCreatedAtMember1, string
                class ApiStrategyCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyCreatedAtMember1
                    @api_strategy_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategy_createdAtMember1 property value. Composed type representation for type ApiStrategyCreatedAtMember1
                    ## @return a api_strategy_created_at_member1
                    ## 
                    def api_strategy_created_at_member1
                        return @api_strategy_created_at_member1
                    end
                    ## 
                    ## Sets the ApiStrategy_createdAtMember1 property value. Composed type representation for type ApiStrategyCreatedAtMember1
                    ## @param value Value to set for the ApiStrategy_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_created_at_member1=(value)
                        @api_strategy_created_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategy_createdAtMember1" => lambda {|n| @api_strategy_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiStrategy_createdAtMember1", @api_strategy_created_at_member1)
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
                # Composed type wrapper for classes ApiStrategyDescriptionMember1, string
                class ApiStrategyDescription
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyDescriptionMember1
                    @api_strategy_description_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategy_descriptionMember1 property value. Composed type representation for type ApiStrategyDescriptionMember1
                    ## @return a api_strategy_description_member1
                    ## 
                    def api_strategy_description_member1
                        return @api_strategy_description_member1
                    end
                    ## 
                    ## Sets the ApiStrategy_descriptionMember1 property value. Composed type representation for type ApiStrategyDescriptionMember1
                    ## @param value Value to set for the ApiStrategy_descriptionMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_description_member1=(value)
                        @api_strategy_description_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_description
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyDescription.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategy_descriptionMember1" => lambda {|n| @api_strategy_description_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyDescriptionMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiStrategy_descriptionMember1", @api_strategy_description_member1)
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
                # Composed type wrapper for classes ApiStrategyPreviewUrlMember1, string
                class ApiStrategyPreviewUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyPreviewUrlMember1
                    @api_strategy_preview_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type ApiStrategyPreviewUrlMember1
                    ## @return a api_strategy_preview_url_member1
                    ## 
                    def api_strategy_preview_url_member1
                        return @api_strategy_preview_url_member1
                    end
                    ## 
                    ## Sets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type ApiStrategyPreviewUrlMember1
                    ## @param value Value to set for the ApiStrategy_previewUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_preview_url_member1=(value)
                        @api_strategy_preview_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_preview_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyPreviewUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategy_previewUrlMember1" => lambda {|n| @api_strategy_preview_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyPreviewUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiStrategy_previewUrlMember1", @api_strategy_preview_url_member1)
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
                # Composed type wrapper for classes ApiStrategyUpdatedAtMember1, string
                class ApiStrategyUpdatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiStrategyUpdatedAtMember1
                    @api_strategy_updated_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiStrategy_updatedAtMember1 property value. Composed type representation for type ApiStrategyUpdatedAtMember1
                    ## @return a api_strategy_updated_at_member1
                    ## 
                    def api_strategy_updated_at_member1
                        return @api_strategy_updated_at_member1
                    end
                    ## 
                    ## Sets the ApiStrategy_updatedAtMember1 property value. Composed type representation for type ApiStrategyUpdatedAtMember1
                    ## @param value Value to set for the ApiStrategy_updatedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_strategy_updated_at_member1=(value)
                        @api_strategy_updated_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_strategy_updated_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiStrategyUpdatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiStrategy_updatedAtMember1" => lambda {|n| @api_strategy_updated_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyUpdatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiStrategy_updatedAtMember1", @api_strategy_updated_at_member1)
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

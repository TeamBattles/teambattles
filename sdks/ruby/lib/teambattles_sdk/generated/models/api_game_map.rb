require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Static game map definition.
            class ApiGameMap
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The coverImage property
                @cover_image
                ##
                # The id property
                @id
                ##
                # The isReleased property
                @is_released
                ##
                # The minimapImage property
                @minimap_image
                ##
                # The nameKey property
                @name_key
                ##
                ## Gets the coverImage property value. The coverImage property
                ## @return a api_game_map_cover_image
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
                ## @return a api_game_map
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameMap.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "coverImage" => lambda {|n| @cover_image = n.get_object_value(lambda {|pn| ApiGameMap::ApiGameMapCoverImage.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isReleased" => lambda {|n| @is_released = n.get_boolean_value() },
                        "minimapImage" => lambda {|n| @minimap_image = n.get_object_value(lambda {|pn| ApiGameMap::ApiGameMapMinimapImage.create_from_discriminator_value(pn) }) },
                        "nameKey" => lambda {|n| @name_key = n.get_string_value() },
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
                ## Gets the isReleased property value. The isReleased property
                ## @return a boolean
                ##
                def is_released
                    return @is_released
                end
                ##
                ## Sets the isReleased property value. The isReleased property
                ## @param value Value to set for the isReleased property.
                ## @return a void
                ##
                def is_released=(value)
                    @is_released = value
                end
                ##
                ## Gets the minimapImage property value. The minimapImage property
                ## @return a api_game_map_minimap_image
                ##
                def minimap_image
                    return @minimap_image
                end
                ##
                ## Sets the minimapImage property value. The minimapImage property
                ## @param value Value to set for the minimapImage property.
                ## @return a void
                ##
                def minimap_image=(value)
                    @minimap_image = value
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("coverImage", @cover_image)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isReleased", @is_released)
                    writer.write_object_value("minimapImage", @minimap_image)
                    writer.write_string_value("nameKey", @name_key)
                end

                ##
                # Composed type wrapper for classes ApiGameMapCoverImageMember1, string
                class ApiGameMapCoverImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiGameMapCoverImageMember1
                    @api_game_map_cover_image_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiGameMap_coverImageMember1 property value. Composed type representation for type ApiGameMapCoverImageMember1
                    ## @return a api_game_map_cover_image_member1
                    ##
                    def api_game_map_cover_image_member1
                        return @api_game_map_cover_image_member1
                    end
                    ##
                    ## Sets the ApiGameMap_coverImageMember1 property value. Composed type representation for type ApiGameMapCoverImageMember1
                    ## @param value Value to set for the ApiGameMap_coverImageMember1 property.
                    ## @return a void
                    ##
                    def api_game_map_cover_image_member1=(value)
                        @api_game_map_cover_image_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_map_cover_image
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameMapCoverImage.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiGameMap_coverImageMember1" => lambda {|n| @api_game_map_cover_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameMapCoverImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameMap_coverImageMember1", @api_game_map_cover_image_member1)
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
                # Composed type wrapper for classes ApiGameMapMinimapImageMember1, string
                class ApiGameMapMinimapImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiGameMapMinimapImageMember1
                    @api_game_map_minimap_image_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type ApiGameMapMinimapImageMember1
                    ## @return a api_game_map_minimap_image_member1
                    ##
                    def api_game_map_minimap_image_member1
                        return @api_game_map_minimap_image_member1
                    end
                    ##
                    ## Sets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type ApiGameMapMinimapImageMember1
                    ## @param value Value to set for the ApiGameMap_minimapImageMember1 property.
                    ## @return a void
                    ##
                    def api_game_map_minimap_image_member1=(value)
                        @api_game_map_minimap_image_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_map_minimap_image
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGameMapMinimapImage.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiGameMap_minimapImageMember1" => lambda {|n| @api_game_map_minimap_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameMapMinimapImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGameMap_minimapImageMember1", @api_game_map_minimap_image_member1)
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

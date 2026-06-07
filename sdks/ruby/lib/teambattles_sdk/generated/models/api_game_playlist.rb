require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Game-scoped playlist definition.
            class ApiGamePlaylist
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The allowedGameModeIds property
                @allowed_game_mode_ids
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
                # The nameKey property
                @name_key
                ##
                ## Gets the allowedGameModeIds property value. The allowedGameModeIds property
                ## @return a string
                ##
                def allowed_game_mode_ids
                    return @allowed_game_mode_ids
                end
                ##
                ## Sets the allowedGameModeIds property value. The allowedGameModeIds property
                ## @param value Value to set for the allowedGameModeIds property.
                ## @return a void
                ##
                def allowed_game_mode_ids=(value)
                    @allowed_game_mode_ids = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_playlist
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGamePlaylist.new
                end
                ##
                ## Gets the descriptionKey property value. The descriptionKey property
                ## @return a api_game_playlist_description_key
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
                        "allowedGameModeIds" => lambda {|n| @allowed_game_mode_ids = n.get_collection_of_primitive_values(String) },
                        "descriptionKey" => lambda {|n| @description_key = n.get_object_value(lambda {|pn| ApiGamePlaylist::ApiGamePlaylistDescriptionKey.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| ApiGamePlaylist::ApiGamePlaylistImage.create_from_discriminator_value(pn) }) },
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
                ## Gets the image property value. The image property
                ## @return a api_game_playlist_image
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
                    writer.write_collection_of_primitive_values("allowedGameModeIds", @allowed_game_mode_ids)
                    writer.write_object_value("descriptionKey", @description_key)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("image", @image)
                    writer.write_string_value("nameKey", @name_key)
                end

                ##
                # Composed type wrapper for classes ApiGamePlaylistDescriptionKeyMember1, string
                class ApiGamePlaylistDescriptionKey
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiGamePlaylistDescriptionKeyMember1
                    @api_game_playlist_description_key_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiGamePlaylist_descriptionKeyMember1 property value. Composed type representation for type ApiGamePlaylistDescriptionKeyMember1
                    ## @return a api_game_playlist_description_key_member1
                    ##
                    def api_game_playlist_description_key_member1
                        return @api_game_playlist_description_key_member1
                    end
                    ##
                    ## Sets the ApiGamePlaylist_descriptionKeyMember1 property value. Composed type representation for type ApiGamePlaylistDescriptionKeyMember1
                    ## @param value Value to set for the ApiGamePlaylist_descriptionKeyMember1 property.
                    ## @return a void
                    ##
                    def api_game_playlist_description_key_member1=(value)
                        @api_game_playlist_description_key_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_playlist_description_key
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGamePlaylistDescriptionKey.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiGamePlaylist_descriptionKeyMember1" => lambda {|n| @api_game_playlist_description_key_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGamePlaylistDescriptionKeyMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGamePlaylist_descriptionKeyMember1", @api_game_playlist_description_key_member1)
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
                # Composed type wrapper for classes ApiGamePlaylistImageMember1, string
                class ApiGamePlaylistImage
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiGamePlaylistImageMember1
                    @api_game_playlist_image_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type ApiGamePlaylistImageMember1
                    ## @return a api_game_playlist_image_member1
                    ##
                    def api_game_playlist_image_member1
                        return @api_game_playlist_image_member1
                    end
                    ##
                    ## Sets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type ApiGamePlaylistImageMember1
                    ## @param value Value to set for the ApiGamePlaylist_imageMember1 property.
                    ## @return a void
                    ##
                    def api_game_playlist_image_member1=(value)
                        @api_game_playlist_image_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_game_playlist_image
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiGamePlaylistImage.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiGamePlaylist_imageMember1" => lambda {|n| @api_game_playlist_image_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGamePlaylistImageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiGamePlaylist_imageMember1", @api_game_playlist_image_member1)
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

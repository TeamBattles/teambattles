require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Map score submission payload for a single map.
            class SubmitScoreBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Creator team score (integer, 0-1000).
                @creator_team_score
                ## 
                # Map identifier string (e.g. dust2).
                @map_id
                ## 
                # Zero-based map index. Must be a non-negative integer.
                @map_index
                ## 
                # Accepted/opponent team score (integer, 0-1000).
                @opponent_team_score
                ## 
                # Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
                @screenshot_storage_ids
                ## 
                # Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
                @screenshot_urls
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
                ## Instantiates a new SubmitScoreBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a submit_score_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SubmitScoreBody.new
                end
                ## 
                ## Gets the creatorTeamScore property value. Creator team score (integer, 0-1000).
                ## @return a integer
                ## 
                def creator_team_score
                    return @creator_team_score
                end
                ## 
                ## Sets the creatorTeamScore property value. Creator team score (integer, 0-1000).
                ## @param value Value to set for the creatorTeamScore property.
                ## @return a void
                ## 
                def creator_team_score=(value)
                    @creator_team_score = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_number_value() },
                        "mapId" => lambda {|n| @map_id = n.get_string_value() },
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "opponentTeamScore" => lambda {|n| @opponent_team_score = n.get_number_value() },
                        "screenshotStorageIds" => lambda {|n| @screenshot_storage_ids = n.get_collection_of_primitive_values(String) },
                        "screenshotUrls" => lambda {|n| @screenshot_urls = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the mapId property value. Map identifier string (e.g. dust2).
                ## @return a string
                ## 
                def map_id
                    return @map_id
                end
                ## 
                ## Sets the mapId property value. Map identifier string (e.g. dust2).
                ## @param value Value to set for the mapId property.
                ## @return a void
                ## 
                def map_id=(value)
                    @map_id = value
                end
                ## 
                ## Gets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
                ## @return a integer
                ## 
                def opponent_team_score
                    return @opponent_team_score
                end
                ## 
                ## Sets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
                ## @param value Value to set for the opponentTeamScore property.
                ## @return a void
                ## 
                def opponent_team_score=(value)
                    @opponent_team_score = value
                end
                ## 
                ## Gets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
                ## @return a string
                ## 
                def screenshot_storage_ids
                    return @screenshot_storage_ids
                end
                ## 
                ## Sets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
                ## @param value Value to set for the screenshotStorageIds property.
                ## @return a void
                ## 
                def screenshot_storage_ids=(value)
                    @screenshot_storage_ids = value
                end
                ## 
                ## Gets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
                ## @return a string
                ## 
                def screenshot_urls
                    return @screenshot_urls
                end
                ## 
                ## Sets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
                ## @param value Value to set for the screenshotUrls property.
                ## @return a void
                ## 
                def screenshot_urls=(value)
                    @screenshot_urls = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("creatorTeamScore", @creator_team_score)
                    writer.write_string_value("mapId", @map_id)
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_number_value("opponentTeamScore", @opponent_team_score)
                    writer.write_collection_of_primitive_values("screenshotStorageIds", @screenshot_storage_ids)
                    writer.write_collection_of_primitive_values("screenshotUrls", @screenshot_urls)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

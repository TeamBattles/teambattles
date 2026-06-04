require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One map's score within a batch submission.
            class GameMapScoreInput
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Score for the creator team (non-negative).
                @creator_team_score
                ## 
                # Identifier of the map that was played.
                @map_id
                ## 
                # Zero-based index of the map within the series.
                @map_index
                ## 
                # Score for the opponent (accepted) team (non-negative).
                @opponent_team_score
                ## 
                # Optional per-player stats keyed by user ID.
                @player_stats
                ## 
                # Optional screenshot URLs supporting the reported score.
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
                ## Instantiates a new GameMapScoreInput and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_map_score_input
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameMapScoreInput.new
                end
                ## 
                ## Gets the creatorTeamScore property value. Score for the creator team (non-negative).
                ## @return a double
                ## 
                def creator_team_score
                    return @creator_team_score
                end
                ## 
                ## Sets the creatorTeamScore property value. Score for the creator team (non-negative).
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
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "mapId" => lambda {|n| @map_id = n.get_string_value() },
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "opponentTeamScore" => lambda {|n| @opponent_team_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "playerStats" => lambda {|n| @player_stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMapScoreInputPlayerStats.create_from_discriminator_value(pn) }) },
                        "screenshotUrls" => lambda {|n| @screenshot_urls = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the mapId property value. Identifier of the map that was played.
                ## @return a string
                ## 
                def map_id
                    return @map_id
                end
                ## 
                ## Sets the mapId property value. Identifier of the map that was played.
                ## @param value Value to set for the mapId property.
                ## @return a void
                ## 
                def map_id=(value)
                    @map_id = value
                end
                ## 
                ## Gets the mapIndex property value. Zero-based index of the map within the series.
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. Zero-based index of the map within the series.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
                ## @return a double
                ## 
                def opponent_team_score
                    return @opponent_team_score
                end
                ## 
                ## Sets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
                ## @param value Value to set for the opponentTeamScore property.
                ## @return a void
                ## 
                def opponent_team_score=(value)
                    @opponent_team_score = value
                end
                ## 
                ## Gets the playerStats property value. Optional per-player stats keyed by user ID.
                ## @return a game_map_score_input_player_stats
                ## 
                def player_stats
                    return @player_stats
                end
                ## 
                ## Sets the playerStats property value. Optional per-player stats keyed by user ID.
                ## @param value Value to set for the playerStats property.
                ## @return a void
                ## 
                def player_stats=(value)
                    @player_stats = value
                end
                ## 
                ## Gets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
                ## @return a string
                ## 
                def screenshot_urls
                    return @screenshot_urls
                end
                ## 
                ## Sets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
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
                    writer.write_object_value("creatorTeamScore", @creator_team_score)
                    writer.write_string_value("mapId", @map_id)
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_object_value("opponentTeamScore", @opponent_team_score)
                    writer.write_object_value("playerStats", @player_stats)
                    writer.write_collection_of_primitive_values("screenshotUrls", @screenshot_urls)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

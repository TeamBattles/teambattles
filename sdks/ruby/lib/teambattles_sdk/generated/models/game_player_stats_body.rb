require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Request body for submitting or updating player stats for an existing map score.
            class GamePlayerStatsBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Zero-based index of the map whose stats are being updated.
                @map_index
                ## 
                # Per-player stats keyed by user ID. The map score must already exist.
                @player_stats
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
                ## Instantiates a new GamePlayerStatsBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_player_stats_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GamePlayerStatsBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "playerStats" => lambda {|n| @player_stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GamePlayerStatsBodyPlayerStats.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the mapIndex property value. Zero-based index of the map whose stats are being updated.
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. Zero-based index of the map whose stats are being updated.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
                ## @return a game_player_stats_body_player_stats
                ## 
                def player_stats
                    return @player_stats
                end
                ## 
                ## Sets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
                ## @param value Value to set for the playerStats property.
                ## @return a void
                ## 
                def player_stats=(value)
                    @player_stats = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_object_value("playerStats", @player_stats)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end

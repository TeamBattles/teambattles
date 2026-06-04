require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class MapScoresSeriesScore
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The creatorMapWins property
                @creator_map_wins
                ## 
                # The opponentMapWins property
                @opponent_map_wins
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a map_scores_series_score
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MapScoresSeriesScore.new
                end
                ## 
                ## Gets the creatorMapWins property value. The creatorMapWins property
                ## @return a integer
                ## 
                def creator_map_wins
                    return @creator_map_wins
                end
                ## 
                ## Sets the creatorMapWins property value. The creatorMapWins property
                ## @param value Value to set for the creatorMapWins property.
                ## @return a void
                ## 
                def creator_map_wins=(value)
                    @creator_map_wins = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "creatorMapWins" => lambda {|n| @creator_map_wins = n.get_number_value() },
                        "opponentMapWins" => lambda {|n| @opponent_map_wins = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the opponentMapWins property value. The opponentMapWins property
                ## @return a integer
                ## 
                def opponent_map_wins
                    return @opponent_map_wins
                end
                ## 
                ## Sets the opponentMapWins property value. The opponentMapWins property
                ## @param value Value to set for the opponentMapWins property.
                ## @return a void
                ## 
                def opponent_map_wins=(value)
                    @opponent_map_wins = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("creatorMapWins", @creator_map_wins)
                    writer.write_number_value("opponentMapWins", @opponent_map_wins)
                end
            end
        end
    end
end

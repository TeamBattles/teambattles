require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Aggregate map-win tally across the series.
            class GameSeriesScore
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Confirmed map wins for the creator team.
                @creator_map_wins
                ## 
                # Confirmed map wins for the opponent team.
                @opponent_map_wins
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_series_score
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameSeriesScore.new
                end
                ## 
                ## Gets the creatorMapWins property value. Confirmed map wins for the creator team.
                ## @return a integer
                ## 
                def creator_map_wins
                    return @creator_map_wins
                end
                ## 
                ## Sets the creatorMapWins property value. Confirmed map wins for the creator team.
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
                ## Gets the opponentMapWins property value. Confirmed map wins for the opponent team.
                ## @return a integer
                ## 
                def opponent_map_wins
                    return @opponent_map_wins
                end
                ## 
                ## Sets the opponentMapWins property value. Confirmed map wins for the opponent team.
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

require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Result of submitting a single map score.
            class GameSingleMapScoreResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Index of the map that was scored.
                @map_index
                ## 
                # Confirmation state, always "CONFIRMED" on success.
                @score_status
                ## 
                # The success property
                @success
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_single_map_score_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameSingleMapScoreResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "scoreStatus" => lambda {|n| @score_status = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the mapIndex property value. Index of the map that was scored.
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. Index of the map that was scored.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the scoreStatus property value. Confirmation state, always "CONFIRMED" on success.
                ## @return a string
                ## 
                def score_status
                    return @score_status
                end
                ## 
                ## Sets the scoreStatus property value. Confirmation state, always "CONFIRMED" on success.
                ## @param value Value to set for the scoreStatus property.
                ## @return a void
                ## 
                def score_status=(value)
                    @score_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_string_value("scoreStatus", @score_status)
                    writer.write_boolean_value("success", @success)
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
                end
            end
        end
    end
end

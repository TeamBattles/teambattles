require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The API key owner's game ranks.
            class GameRankListResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The count property
                @count
                ## 
                # The gameRanks property
                @game_ranks
                ## 
                # ISO 8601 response timestamp.
                @timestamp
                ## 
                ## Gets the count property value. The count property
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. The count property
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_rank_list_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameRankListResponse.new
                end
                ## 
                ## Gets the gameRanks property value. The gameRanks property
                ## @return a api_game_rank
                ## 
                def game_ranks
                    return @game_ranks
                end
                ## 
                ## Sets the gameRanks property value. The gameRanks property
                ## @param value Value to set for the gameRanks property.
                ## @return a void
                ## 
                def game_ranks=(value)
                    @game_ranks = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "gameRanks" => lambda {|n| @game_ranks = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameRank.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("gameRanks", @game_ranks)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. ISO 8601 response timestamp.
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. ISO 8601 response timestamp.
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end

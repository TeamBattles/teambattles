require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Player leaderboard response.
            class PlayerLeaderboardResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The players property
                @players
                ##
                # Supported leaderboard sort field.
                @sort_by
                ##
                # The timestamp property
                @timestamp
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a player_leaderboard_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PlayerLeaderboardResponse.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "players" => lambda {|n| @players = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::PlayerLeaderboardEntry.create_from_discriminator_value(pn) }) },
                        "sortBy" => lambda {|n| @sort_by = n.get_enum_value(TeamBattlesSdk::Generated::Models::LeaderboardSortBy) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ##
                ## Gets the players property value. The players property
                ## @return a player_leaderboard_entry
                ##
                def players
                    return @players
                end
                ##
                ## Sets the players property value. The players property
                ## @param value Value to set for the players property.
                ## @return a void
                ##
                def players=(value)
                    @players = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("players", @players)
                    writer.write_enum_value("sortBy", @sort_by)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ##
                ## Gets the sortBy property value. Supported leaderboard sort field.
                ## @return a leaderboard_sort_by
                ##
                def sort_by
                    return @sort_by
                end
                ##
                ## Sets the sortBy property value. Supported leaderboard sort field.
                ## @param value Value to set for the sortBy property.
                ## @return a void
                ##
                def sort_by=(value)
                    @sort_by = value
                end
                ##
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ##
                def timestamp
                    return @timestamp
                end
                ##
                ## Sets the timestamp property value. The timestamp property
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

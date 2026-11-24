require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Team leaderboard response.
            class TeamLeaderboardResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The gameSlug property
                @game_slug
                ## 
                # Supported leaderboard sort field.
                @sort_by
                ## 
                # The teams property
                @teams
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a team_leaderboard_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TeamLeaderboardResponse.new
                end
                ## 
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a string
                ## 
                def game_slug
                    return @game_slug
                end
                ## 
                ## Sets the gameSlug property value. The gameSlug property
                ## @param value Value to set for the gameSlug property.
                ## @return a void
                ## 
                def game_slug=(value)
                    @game_slug = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gameSlug" => lambda {|n| @game_slug = n.get_string_value() },
                        "sortBy" => lambda {|n| @sort_by = n.get_enum_value(TeamBattlesSdk::Generated::Models::LeaderboardSortBy) },
                        "teams" => lambda {|n| @teams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TeamLeaderboardEntry.create_from_discriminator_value(pn) }) },
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
                    writer.write_string_value("gameSlug", @game_slug)
                    writer.write_enum_value("sortBy", @sort_by)
                    writer.write_collection_of_object_values("teams", @teams)
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
                ## Gets the teams property value. The teams property
                ## @return a team_leaderboard_entry
                ## 
                def teams
                    return @teams
                end
                ## 
                ## Sets the teams property value. The teams property
                ## @param value Value to set for the teams property.
                ## @return a void
                ## 
                def teams=(value)
                    @teams = value
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

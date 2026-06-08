require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Player leaderboard row.
            class PlayerLeaderboardEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # User ID.
                @id
                ## 
                # The rank property
                @rank
                ## 
                # Aggregate stats used for leaderboard ranking.
                @stats
                ## 
                # API-safe public user profile.
                @user
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a player_leaderboard_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PlayerLeaderboardEntry.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "rank" => lambda {|n| @rank = n.get_number_value() },
                        "stats" => lambda {|n| @stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaderboardStats.create_from_discriminator_value(pn) }) },
                        "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfile.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. User ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. User ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the rank property value. The rank property
                ## @return a integer
                ## 
                def rank
                    return @rank
                end
                ## 
                ## Sets the rank property value. The rank property
                ## @param value Value to set for the rank property.
                ## @return a void
                ## 
                def rank=(value)
                    @rank = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_number_value("rank", @rank)
                    writer.write_object_value("stats", @stats)
                    writer.write_object_value("user", @user)
                end
                ## 
                ## Gets the stats property value. Aggregate stats used for leaderboard ranking.
                ## @return a leaderboard_stats
                ## 
                def stats
                    return @stats
                end
                ## 
                ## Sets the stats property value. Aggregate stats used for leaderboard ranking.
                ## @param value Value to set for the stats property.
                ## @return a void
                ## 
                def stats=(value)
                    @stats = value
                end
                ## 
                ## Gets the user property value. API-safe public user profile.
                ## @return a api_user_profile
                ## 
                def user
                    return @user
                end
                ## 
                ## Sets the user property value. API-safe public user profile.
                ## @param value Value to set for the user property.
                ## @return a void
                ## 
                def user=(value)
                    @user = value
                end
            end
        end
    end
end

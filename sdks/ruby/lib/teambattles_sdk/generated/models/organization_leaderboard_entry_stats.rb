require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class OrganizationLeaderboardEntryStats
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The experience property
                @experience
                ## 
                # The losses property
                @losses
                ## 
                # The matchesPlayed property
                @matches_played
                ## 
                # The teamCount property
                @team_count
                ## 
                # The winRate property
                @win_rate
                ## 
                # The wins property
                @wins
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a organization_leaderboard_entry_stats
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return OrganizationLeaderboardEntryStats.new
                end
                ## 
                ## Gets the experience property value. The experience property
                ## @return a double
                ## 
                def experience
                    return @experience
                end
                ## 
                ## Sets the experience property value. The experience property
                ## @param value Value to set for the experience property.
                ## @return a void
                ## 
                def experience=(value)
                    @experience = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "experience" => lambda {|n| @experience = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "losses" => lambda {|n| @losses = n.get_number_value() },
                        "matchesPlayed" => lambda {|n| @matches_played = n.get_number_value() },
                        "teamCount" => lambda {|n| @team_count = n.get_number_value() },
                        "winRate" => lambda {|n| @win_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "wins" => lambda {|n| @wins = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the losses property value. The losses property
                ## @return a integer
                ## 
                def losses
                    return @losses
                end
                ## 
                ## Sets the losses property value. The losses property
                ## @param value Value to set for the losses property.
                ## @return a void
                ## 
                def losses=(value)
                    @losses = value
                end
                ## 
                ## Gets the matchesPlayed property value. The matchesPlayed property
                ## @return a integer
                ## 
                def matches_played
                    return @matches_played
                end
                ## 
                ## Sets the matchesPlayed property value. The matchesPlayed property
                ## @param value Value to set for the matchesPlayed property.
                ## @return a void
                ## 
                def matches_played=(value)
                    @matches_played = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("experience", @experience)
                    writer.write_number_value("losses", @losses)
                    writer.write_number_value("matchesPlayed", @matches_played)
                    writer.write_number_value("teamCount", @team_count)
                    writer.write_object_value("winRate", @win_rate)
                    writer.write_number_value("wins", @wins)
                end
                ## 
                ## Gets the teamCount property value. The teamCount property
                ## @return a integer
                ## 
                def team_count
                    return @team_count
                end
                ## 
                ## Sets the teamCount property value. The teamCount property
                ## @param value Value to set for the teamCount property.
                ## @return a void
                ## 
                def team_count=(value)
                    @team_count = value
                end
                ## 
                ## Gets the winRate property value. The winRate property
                ## @return a double
                ## 
                def win_rate
                    return @win_rate
                end
                ## 
                ## Sets the winRate property value. The winRate property
                ## @param value Value to set for the winRate property.
                ## @return a void
                ## 
                def win_rate=(value)
                    @win_rate = value
                end
                ## 
                ## Gets the wins property value. The wins property
                ## @return a integer
                ## 
                def wins
                    return @wins
                end
                ## 
                ## Sets the wins property value. The wins property
                ## @param value Value to set for the wins property.
                ## @return a void
                ## 
                def wins=(value)
                    @wins = value
                end
            end
        end
    end
end

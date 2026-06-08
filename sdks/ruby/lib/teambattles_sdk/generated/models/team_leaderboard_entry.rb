require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Team leaderboard row.
            class TeamLeaderboardEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The gameSlug property
                @game_slug
                ## 
                # Team ID.
                @id
                ## 
                # The rank property
                @rank
                ## 
                # Aggregate stats used for leaderboard ranking.
                @stats
                ## 
                # Small API-safe team summary.
                @team
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a team_leaderboard_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TeamLeaderboardEntry.new
                end
                ## 
                ## Gets the gameSlug property value. The gameSlug property
                ## @return a team_leaderboard_entry_game_slug
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
                        "gameSlug" => lambda {|n| @game_slug = n.get_object_value(lambda {|pn| TeamLeaderboardEntry::TeamLeaderboardEntryGameSlug.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "rank" => lambda {|n| @rank = n.get_number_value() },
                        "stats" => lambda {|n| @stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeaderboardStats.create_from_discriminator_value(pn) }) },
                        "team" => lambda {|n| @team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiTeamSummary.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. Team ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Team ID.
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
                    writer.write_object_value("gameSlug", @game_slug)
                    writer.write_string_value("id", @id)
                    writer.write_number_value("rank", @rank)
                    writer.write_object_value("stats", @stats)
                    writer.write_object_value("team", @team)
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
                ## Gets the team property value. Small API-safe team summary.
                ## @return a api_team_summary
                ## 
                def team
                    return @team
                end
                ## 
                ## Sets the team property value. Small API-safe team summary.
                ## @param value Value to set for the team property.
                ## @return a void
                ## 
                def team=(value)
                    @team = value
                end

                ## 
                # Composed type wrapper for classes string, TeamLeaderboardEntryGameSlugMember1
                class TeamLeaderboardEntryGameSlug
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TeamLeaderboardEntryGameSlugMember1
                    @team_leaderboard_entry_game_slug_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a team_leaderboard_entry_game_slug
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TeamLeaderboardEntryGameSlug.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TeamLeaderboardEntry_gameSlugMember1" => lambda {|n| @team_leaderboard_entry_game_slug_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TeamLeaderboardEntryGameSlugMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("TeamLeaderboardEntry_gameSlugMember1", @team_leaderboard_entry_game_slug_member1)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                    ## 
                    ## Gets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardEntryGameSlugMember1
                    ## @return a team_leaderboard_entry_game_slug_member1
                    ## 
                    def team_leaderboard_entry_game_slug_member1
                        return @team_leaderboard_entry_game_slug_member1
                    end
                    ## 
                    ## Sets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type TeamLeaderboardEntryGameSlugMember1
                    ## @param value Value to set for the TeamLeaderboardEntry_gameSlugMember1 property.
                    ## @return a void
                    ## 
                    def team_leaderboard_entry_game_slug_member1=(value)
                        @team_leaderboard_entry_game_slug_member1 = value
                    end
                end
            end
        end
    end
end

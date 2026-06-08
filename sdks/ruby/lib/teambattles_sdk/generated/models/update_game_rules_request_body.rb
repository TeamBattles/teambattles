require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Updates league game rules.
            class UpdateGameRulesRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The allowedDays property
                @allowed_days
                ## 
                # The allowedMapIds property
                @allowed_map_ids
                ## 
                # The allowedPlaylistIds property
                @allowed_playlist_ids
                ## 
                # The allowedTimeRange property
                @allowed_time_range
                ## 
                # The blockedDays property
                @blocked_days
                ## 
                # The challengeCooldownMinutes property
                @challenge_cooldown_minutes
                ## 
                # The challengesEnabled property
                @challenges_enabled
                ## 
                # The forceCompetitive property
                @force_competitive
                ## 
                # Game ID whose league rules should change.
                @game_id
                ## 
                # The matchFormat property
                @match_format
                ## 
                # The maxChallengesPerTeamPerSeason property
                @max_challenges_per_team_per_season
                ## 
                # The maxPendingChallengesPerOpponent property
                @max_pending_challenges_per_opponent
                ## 
                # The maxPendingChallengesTotal property
                @max_pending_challenges_total
                ## 
                # The maxPointsMatchesPerPairPer24h property
                @max_points_matches_per_pair_per24h
                ## 
                # The maxRosterChangesPerWeek property
                @max_roster_changes_per_week
                ## 
                # The maxRosterSize property
                @max_roster_size
                ## 
                # The maxWagerAmount property
                @max_wager_amount
                ## 
                # The minRosterSize property
                @min_roster_size
                ## 
                # The minWagerAmount property
                @min_wager_amount
                ## 
                # The rosterChangeWindowDays property
                @roster_change_window_days
                ## 
                # The rosterChangeWindowTime property
                @roster_change_window_time
                ## 
                # The rosterLockEnabled property
                @roster_lock_enabled
                ## 
                # The teamSize property
                @team_size
                ## 
                # The timezone property
                @timezone
                ## 
                # The wagersAllowed property
                @wagers_allowed
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
                ## Gets the allowedDays property value. The allowedDays property
                ## @return a string
                ## 
                def allowed_days
                    return @allowed_days
                end
                ## 
                ## Sets the allowedDays property value. The allowedDays property
                ## @param value Value to set for the allowedDays property.
                ## @return a void
                ## 
                def allowed_days=(value)
                    @allowed_days = value
                end
                ## 
                ## Gets the allowedMapIds property value. The allowedMapIds property
                ## @return a string
                ## 
                def allowed_map_ids
                    return @allowed_map_ids
                end
                ## 
                ## Sets the allowedMapIds property value. The allowedMapIds property
                ## @param value Value to set for the allowedMapIds property.
                ## @return a void
                ## 
                def allowed_map_ids=(value)
                    @allowed_map_ids = value
                end
                ## 
                ## Gets the allowedPlaylistIds property value. The allowedPlaylistIds property
                ## @return a string
                ## 
                def allowed_playlist_ids
                    return @allowed_playlist_ids
                end
                ## 
                ## Sets the allowedPlaylistIds property value. The allowedPlaylistIds property
                ## @param value Value to set for the allowedPlaylistIds property.
                ## @return a void
                ## 
                def allowed_playlist_ids=(value)
                    @allowed_playlist_ids = value
                end
                ## 
                ## Gets the allowedTimeRange property value. The allowedTimeRange property
                ## @return a update_game_rules_request_body_allowed_time_range
                ## 
                def allowed_time_range
                    return @allowed_time_range
                end
                ## 
                ## Sets the allowedTimeRange property value. The allowedTimeRange property
                ## @param value Value to set for the allowedTimeRange property.
                ## @return a void
                ## 
                def allowed_time_range=(value)
                    @allowed_time_range = value
                end
                ## 
                ## Gets the blockedDays property value. The blockedDays property
                ## @return a string
                ## 
                def blocked_days
                    return @blocked_days
                end
                ## 
                ## Sets the blockedDays property value. The blockedDays property
                ## @param value Value to set for the blockedDays property.
                ## @return a void
                ## 
                def blocked_days=(value)
                    @blocked_days = value
                end
                ## 
                ## Gets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
                ## @return a double
                ## 
                def challenge_cooldown_minutes
                    return @challenge_cooldown_minutes
                end
                ## 
                ## Sets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
                ## @param value Value to set for the challengeCooldownMinutes property.
                ## @return a void
                ## 
                def challenge_cooldown_minutes=(value)
                    @challenge_cooldown_minutes = value
                end
                ## 
                ## Gets the challengesEnabled property value. The challengesEnabled property
                ## @return a boolean
                ## 
                def challenges_enabled
                    return @challenges_enabled
                end
                ## 
                ## Sets the challengesEnabled property value. The challengesEnabled property
                ## @param value Value to set for the challengesEnabled property.
                ## @return a void
                ## 
                def challenges_enabled=(value)
                    @challenges_enabled = value
                end
                ## 
                ## Instantiates a new UpdateGameRulesRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_game_rules_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateGameRulesRequestBody.new
                end
                ## 
                ## Gets the forceCompetitive property value. The forceCompetitive property
                ## @return a boolean
                ## 
                def force_competitive
                    return @force_competitive
                end
                ## 
                ## Sets the forceCompetitive property value. The forceCompetitive property
                ## @param value Value to set for the forceCompetitive property.
                ## @return a void
                ## 
                def force_competitive=(value)
                    @force_competitive = value
                end
                ## 
                ## Gets the gameId property value. Game ID whose league rules should change.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID whose league rules should change.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "allowedDays" => lambda {|n| @allowed_days = n.get_collection_of_primitive_values(String) },
                        "allowedMapIds" => lambda {|n| @allowed_map_ids = n.get_collection_of_primitive_values(String) },
                        "allowedPlaylistIds" => lambda {|n| @allowed_playlist_ids = n.get_collection_of_primitive_values(String) },
                        "allowedTimeRange" => lambda {|n| @allowed_time_range = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpdateGameRulesRequestBodyAllowedTimeRange.create_from_discriminator_value(pn) }) },
                        "blockedDays" => lambda {|n| @blocked_days = n.get_collection_of_primitive_values(String) },
                        "challengeCooldownMinutes" => lambda {|n| @challenge_cooldown_minutes = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "challengesEnabled" => lambda {|n| @challenges_enabled = n.get_boolean_value() },
                        "forceCompetitive" => lambda {|n| @force_competitive = n.get_boolean_value() },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "matchFormat" => lambda {|n| @match_format = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdateGameRulesRequestBodyMatchFormat) },
                        "maxChallengesPerTeamPerSeason" => lambda {|n| @max_challenges_per_team_per_season = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxPendingChallengesPerOpponent" => lambda {|n| @max_pending_challenges_per_opponent = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxPendingChallengesTotal" => lambda {|n| @max_pending_challenges_total = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxPointsMatchesPerPairPer24h" => lambda {|n| @max_points_matches_per_pair_per24h = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxRosterChangesPerWeek" => lambda {|n| @max_roster_changes_per_week = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxRosterSize" => lambda {|n| @max_roster_size = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "maxWagerAmount" => lambda {|n| @max_wager_amount = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "minRosterSize" => lambda {|n| @min_roster_size = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "minWagerAmount" => lambda {|n| @min_wager_amount = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "rosterChangeWindowDays" => lambda {|n| @roster_change_window_days = n.get_collection_of_primitive_values(String) },
                        "rosterChangeWindowTime" => lambda {|n| @roster_change_window_time = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpdateGameRulesRequestBodyRosterChangeWindowTime.create_from_discriminator_value(pn) }) },
                        "rosterLockEnabled" => lambda {|n| @roster_lock_enabled = n.get_boolean_value() },
                        "teamSize" => lambda {|n| @team_size = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpdateGameRulesRequestBodyTeamSize.create_from_discriminator_value(pn) }) },
                        "timezone" => lambda {|n| @timezone = n.get_string_value() },
                        "wagersAllowed" => lambda {|n| @wagers_allowed = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the matchFormat property value. The matchFormat property
                ## @return a update_game_rules_request_body_match_format
                ## 
                def match_format
                    return @match_format
                end
                ## 
                ## Sets the matchFormat property value. The matchFormat property
                ## @param value Value to set for the matchFormat property.
                ## @return a void
                ## 
                def match_format=(value)
                    @match_format = value
                end
                ## 
                ## Gets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
                ## @return a double
                ## 
                def max_challenges_per_team_per_season
                    return @max_challenges_per_team_per_season
                end
                ## 
                ## Sets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
                ## @param value Value to set for the maxChallengesPerTeamPerSeason property.
                ## @return a void
                ## 
                def max_challenges_per_team_per_season=(value)
                    @max_challenges_per_team_per_season = value
                end
                ## 
                ## Gets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
                ## @return a double
                ## 
                def max_pending_challenges_per_opponent
                    return @max_pending_challenges_per_opponent
                end
                ## 
                ## Sets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
                ## @param value Value to set for the maxPendingChallengesPerOpponent property.
                ## @return a void
                ## 
                def max_pending_challenges_per_opponent=(value)
                    @max_pending_challenges_per_opponent = value
                end
                ## 
                ## Gets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
                ## @return a double
                ## 
                def max_pending_challenges_total
                    return @max_pending_challenges_total
                end
                ## 
                ## Sets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
                ## @param value Value to set for the maxPendingChallengesTotal property.
                ## @return a void
                ## 
                def max_pending_challenges_total=(value)
                    @max_pending_challenges_total = value
                end
                ## 
                ## Gets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
                ## @return a double
                ## 
                def max_points_matches_per_pair_per24h
                    return @max_points_matches_per_pair_per24h
                end
                ## 
                ## Sets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
                ## @param value Value to set for the maxPointsMatchesPerPairPer24h property.
                ## @return a void
                ## 
                def max_points_matches_per_pair_per24h=(value)
                    @max_points_matches_per_pair_per24h = value
                end
                ## 
                ## Gets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
                ## @return a double
                ## 
                def max_roster_changes_per_week
                    return @max_roster_changes_per_week
                end
                ## 
                ## Sets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
                ## @param value Value to set for the maxRosterChangesPerWeek property.
                ## @return a void
                ## 
                def max_roster_changes_per_week=(value)
                    @max_roster_changes_per_week = value
                end
                ## 
                ## Gets the maxRosterSize property value. The maxRosterSize property
                ## @return a double
                ## 
                def max_roster_size
                    return @max_roster_size
                end
                ## 
                ## Sets the maxRosterSize property value. The maxRosterSize property
                ## @param value Value to set for the maxRosterSize property.
                ## @return a void
                ## 
                def max_roster_size=(value)
                    @max_roster_size = value
                end
                ## 
                ## Gets the maxWagerAmount property value. The maxWagerAmount property
                ## @return a double
                ## 
                def max_wager_amount
                    return @max_wager_amount
                end
                ## 
                ## Sets the maxWagerAmount property value. The maxWagerAmount property
                ## @param value Value to set for the maxWagerAmount property.
                ## @return a void
                ## 
                def max_wager_amount=(value)
                    @max_wager_amount = value
                end
                ## 
                ## Gets the minRosterSize property value. The minRosterSize property
                ## @return a double
                ## 
                def min_roster_size
                    return @min_roster_size
                end
                ## 
                ## Sets the minRosterSize property value. The minRosterSize property
                ## @param value Value to set for the minRosterSize property.
                ## @return a void
                ## 
                def min_roster_size=(value)
                    @min_roster_size = value
                end
                ## 
                ## Gets the minWagerAmount property value. The minWagerAmount property
                ## @return a double
                ## 
                def min_wager_amount
                    return @min_wager_amount
                end
                ## 
                ## Sets the minWagerAmount property value. The minWagerAmount property
                ## @param value Value to set for the minWagerAmount property.
                ## @return a void
                ## 
                def min_wager_amount=(value)
                    @min_wager_amount = value
                end
                ## 
                ## Gets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
                ## @return a string
                ## 
                def roster_change_window_days
                    return @roster_change_window_days
                end
                ## 
                ## Sets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
                ## @param value Value to set for the rosterChangeWindowDays property.
                ## @return a void
                ## 
                def roster_change_window_days=(value)
                    @roster_change_window_days = value
                end
                ## 
                ## Gets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
                ## @return a update_game_rules_request_body_roster_change_window_time
                ## 
                def roster_change_window_time
                    return @roster_change_window_time
                end
                ## 
                ## Sets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
                ## @param value Value to set for the rosterChangeWindowTime property.
                ## @return a void
                ## 
                def roster_change_window_time=(value)
                    @roster_change_window_time = value
                end
                ## 
                ## Gets the rosterLockEnabled property value. The rosterLockEnabled property
                ## @return a boolean
                ## 
                def roster_lock_enabled
                    return @roster_lock_enabled
                end
                ## 
                ## Sets the rosterLockEnabled property value. The rosterLockEnabled property
                ## @param value Value to set for the rosterLockEnabled property.
                ## @return a void
                ## 
                def roster_lock_enabled=(value)
                    @roster_lock_enabled = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("allowedDays", @allowed_days)
                    writer.write_collection_of_primitive_values("allowedMapIds", @allowed_map_ids)
                    writer.write_collection_of_primitive_values("allowedPlaylistIds", @allowed_playlist_ids)
                    writer.write_object_value("allowedTimeRange", @allowed_time_range)
                    writer.write_collection_of_primitive_values("blockedDays", @blocked_days)
                    writer.write_object_value("challengeCooldownMinutes", @challenge_cooldown_minutes)
                    writer.write_boolean_value("challengesEnabled", @challenges_enabled)
                    writer.write_boolean_value("forceCompetitive", @force_competitive)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_enum_value("matchFormat", @match_format)
                    writer.write_object_value("maxChallengesPerTeamPerSeason", @max_challenges_per_team_per_season)
                    writer.write_object_value("maxPendingChallengesPerOpponent", @max_pending_challenges_per_opponent)
                    writer.write_object_value("maxPendingChallengesTotal", @max_pending_challenges_total)
                    writer.write_object_value("maxPointsMatchesPerPairPer24h", @max_points_matches_per_pair_per24h)
                    writer.write_object_value("maxRosterChangesPerWeek", @max_roster_changes_per_week)
                    writer.write_object_value("maxRosterSize", @max_roster_size)
                    writer.write_object_value("maxWagerAmount", @max_wager_amount)
                    writer.write_object_value("minRosterSize", @min_roster_size)
                    writer.write_object_value("minWagerAmount", @min_wager_amount)
                    writer.write_collection_of_primitive_values("rosterChangeWindowDays", @roster_change_window_days)
                    writer.write_object_value("rosterChangeWindowTime", @roster_change_window_time)
                    writer.write_boolean_value("rosterLockEnabled", @roster_lock_enabled)
                    writer.write_object_value("teamSize", @team_size)
                    writer.write_string_value("timezone", @timezone)
                    writer.write_boolean_value("wagersAllowed", @wagers_allowed)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamSize property value. The teamSize property
                ## @return a update_game_rules_request_body_team_size
                ## 
                def team_size
                    return @team_size
                end
                ## 
                ## Sets the teamSize property value. The teamSize property
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ## 
                def team_size=(value)
                    @team_size = value
                end
                ## 
                ## Gets the timezone property value. The timezone property
                ## @return a string
                ## 
                def timezone
                    return @timezone
                end
                ## 
                ## Sets the timezone property value. The timezone property
                ## @param value Value to set for the timezone property.
                ## @return a void
                ## 
                def timezone=(value)
                    @timezone = value
                end
                ## 
                ## Gets the wagersAllowed property value. The wagersAllowed property
                ## @return a boolean
                ## 
                def wagers_allowed
                    return @wagers_allowed
                end
                ## 
                ## Sets the wagersAllowed property value. The wagersAllowed property
                ## @param value Value to set for the wagersAllowed property.
                ## @return a void
                ## 
                def wagers_allowed=(value)
                    @wagers_allowed = value
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Detailed match payload returned inside the game-developer match-detail response.
            class GameMatchDetail
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The acceptedTeam property
                @accepted_team
                ## 
                # The acceptedTeamScore property
                @accepted_team_score
                ## 
                # Number of maps in the series (1, 3, 5, or 7).
                @best_of
                ## 
                # Completion time (ISO 8601).
                @completed_at
                ## 
                # Creation time (ISO 8601).
                @created_at
                ## 
                # The creatorTeam property
                @creator_team
                ## 
                # The creatorTeamScore property
                @creator_team_score
                ## 
                # Game ID the match belongs to.
                @game_id
                ## 
                # Game mode identifier (from the match's gameModeId).
                @game_mode
                ## 
                # The id property
                @id
                ## 
                # League this match belongs to, if any (SP-7 league wave).
                @league_id
                ## 
                # League season this match belongs to, if any.
                @league_season_id
                ## 
                # Losing team ID once the match completes.
                @loser_team_id
                ## 
                # Scheduled start time (ISO 8601).
                @scheduled_at
                ## 
                # Actual start time (ISO 8601).
                @started_at
                ## 
                # Lifecycle status of a match.
                @status
                ## 
                # Winning team ID once the match completes.
                @winner_team_id
                ## 
                ## Gets the acceptedTeam property value. The acceptedTeam property
                ## @return a game_detail_team
                ## 
                def accepted_team
                    return @accepted_team
                end
                ## 
                ## Sets the acceptedTeam property value. The acceptedTeam property
                ## @param value Value to set for the acceptedTeam property.
                ## @return a void
                ## 
                def accepted_team=(value)
                    @accepted_team = value
                end
                ## 
                ## Gets the acceptedTeamScore property value. The acceptedTeamScore property
                ## @return a game_match_detail_accepted_team_score
                ## 
                def accepted_team_score
                    return @accepted_team_score
                end
                ## 
                ## Sets the acceptedTeamScore property value. The acceptedTeamScore property
                ## @param value Value to set for the acceptedTeamScore property.
                ## @return a void
                ## 
                def accepted_team_score=(value)
                    @accepted_team_score = value
                end
                ## 
                ## Gets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
                ## @return a integer
                ## 
                def best_of
                    return @best_of
                end
                ## 
                ## Sets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
                ## @param value Value to set for the bestOf property.
                ## @return a void
                ## 
                def best_of=(value)
                    @best_of = value
                end
                ## 
                ## Gets the completedAt property value. Completion time (ISO 8601).
                ## @return a game_match_detail_completed_at
                ## 
                def completed_at
                    return @completed_at
                end
                ## 
                ## Sets the completedAt property value. Completion time (ISO 8601).
                ## @param value Value to set for the completedAt property.
                ## @return a void
                ## 
                def completed_at=(value)
                    @completed_at = value
                end
                ## 
                ## Gets the createdAt property value. Creation time (ISO 8601).
                ## @return a game_match_detail_created_at
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Creation time (ISO 8601).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_match_detail
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameMatchDetail.new
                end
                ## 
                ## Gets the creatorTeam property value. The creatorTeam property
                ## @return a game_detail_team
                ## 
                def creator_team
                    return @creator_team
                end
                ## 
                ## Sets the creatorTeam property value. The creatorTeam property
                ## @param value Value to set for the creatorTeam property.
                ## @return a void
                ## 
                def creator_team=(value)
                    @creator_team = value
                end
                ## 
                ## Gets the creatorTeamScore property value. The creatorTeamScore property
                ## @return a game_match_detail_creator_team_score
                ## 
                def creator_team_score
                    return @creator_team_score
                end
                ## 
                ## Sets the creatorTeamScore property value. The creatorTeamScore property
                ## @param value Value to set for the creatorTeamScore property.
                ## @return a void
                ## 
                def creator_team_score=(value)
                    @creator_team_score = value
                end
                ## 
                ## Gets the gameId property value. Game ID the match belongs to.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID the match belongs to.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## Gets the gameMode property value. Game mode identifier (from the match's gameModeId).
                ## @return a string
                ## 
                def game_mode
                    return @game_mode
                end
                ## 
                ## Sets the gameMode property value. Game mode identifier (from the match's gameModeId).
                ## @param value Value to set for the gameMode property.
                ## @return a void
                ## 
                def game_mode=(value)
                    @game_mode = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "acceptedTeam" => lambda {|n| @accepted_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameDetailTeam.create_from_discriminator_value(pn) }) },
                        "acceptedTeamScore" => lambda {|n| @accepted_team_score = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailAcceptedTeamScore.create_from_discriminator_value(pn) }) },
                        "bestOf" => lambda {|n| @best_of = n.get_number_value() },
                        "completedAt" => lambda {|n| @completed_at = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailCompletedAt.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailCreatedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeam" => lambda {|n| @creator_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameDetailTeam.create_from_discriminator_value(pn) }) },
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailCreatorTeamScore.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "gameMode" => lambda {|n| @game_mode = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "leagueId" => lambda {|n| @league_id = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailLeagueId.create_from_discriminator_value(pn) }) },
                        "leagueSeasonId" => lambda {|n| @league_season_id = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailLeagueSeasonId.create_from_discriminator_value(pn) }) },
                        "loserTeamId" => lambda {|n| @loser_team_id = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailLoserTeamId.create_from_discriminator_value(pn) }) },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailScheduledAt.create_from_discriminator_value(pn) }) },
                        "startedAt" => lambda {|n| @started_at = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailStartedAt.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchStatus) },
                        "winnerTeamId" => lambda {|n| @winner_team_id = n.get_object_value(lambda {|pn| GameMatchDetail::GameMatchDetailWinnerTeamId.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. The id property
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
                ## @return a game_match_detail_league_id
                ## 
                def league_id
                    return @league_id
                end
                ## 
                ## Sets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
                ## @param value Value to set for the leagueId property.
                ## @return a void
                ## 
                def league_id=(value)
                    @league_id = value
                end
                ## 
                ## Gets the leagueSeasonId property value. League season this match belongs to, if any.
                ## @return a game_match_detail_league_season_id
                ## 
                def league_season_id
                    return @league_season_id
                end
                ## 
                ## Sets the leagueSeasonId property value. League season this match belongs to, if any.
                ## @param value Value to set for the leagueSeasonId property.
                ## @return a void
                ## 
                def league_season_id=(value)
                    @league_season_id = value
                end
                ## 
                ## Gets the loserTeamId property value. Losing team ID once the match completes.
                ## @return a game_match_detail_loser_team_id
                ## 
                def loser_team_id
                    return @loser_team_id
                end
                ## 
                ## Sets the loserTeamId property value. Losing team ID once the match completes.
                ## @param value Value to set for the loserTeamId property.
                ## @return a void
                ## 
                def loser_team_id=(value)
                    @loser_team_id = value
                end
                ## 
                ## Gets the scheduledAt property value. Scheduled start time (ISO 8601).
                ## @return a game_match_detail_scheduled_at
                ## 
                def scheduled_at
                    return @scheduled_at
                end
                ## 
                ## Sets the scheduledAt property value. Scheduled start time (ISO 8601).
                ## @param value Value to set for the scheduledAt property.
                ## @return a void
                ## 
                def scheduled_at=(value)
                    @scheduled_at = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("acceptedTeam", @accepted_team)
                    writer.write_object_value("acceptedTeamScore", @accepted_team_score)
                    writer.write_number_value("bestOf", @best_of)
                    writer.write_object_value("completedAt", @completed_at)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_object_value("creatorTeam", @creator_team)
                    writer.write_object_value("creatorTeamScore", @creator_team_score)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("gameMode", @game_mode)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("leagueId", @league_id)
                    writer.write_object_value("leagueSeasonId", @league_season_id)
                    writer.write_object_value("loserTeamId", @loser_team_id)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_object_value("startedAt", @started_at)
                    writer.write_enum_value("status", @status)
                    writer.write_object_value("winnerTeamId", @winner_team_id)
                end
                ## 
                ## Gets the startedAt property value. Actual start time (ISO 8601).
                ## @return a game_match_detail_started_at
                ## 
                def started_at
                    return @started_at
                end
                ## 
                ## Sets the startedAt property value. Actual start time (ISO 8601).
                ## @param value Value to set for the startedAt property.
                ## @return a void
                ## 
                def started_at=(value)
                    @started_at = value
                end
                ## 
                ## Gets the status property value. Lifecycle status of a match.
                ## @return a match_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Lifecycle status of a match.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the winnerTeamId property value. Winning team ID once the match completes.
                ## @return a game_match_detail_winner_team_id
                ## 
                def winner_team_id
                    return @winner_team_id
                end
                ## 
                ## Sets the winnerTeamId property value. Winning team ID once the match completes.
                ## @param value Value to set for the winnerTeamId property.
                ## @return a void
                ## 
                def winner_team_id=(value)
                    @winner_team_id = value
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailAcceptedTeamScoreMember1, number
                class GameMatchDetailAcceptedTeamScore
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailAcceptedTeamScoreMember1
                    @game_match_detail_accepted_team_score_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_accepted_team_score
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailAcceptedTeamScore.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchDetailAcceptedTeamScoreMember1
                    ## @return a game_match_detail_accepted_team_score_member1
                    ## 
                    def game_match_detail_accepted_team_score_member1
                        return @game_match_detail_accepted_team_score_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchDetailAcceptedTeamScoreMember1
                    ## @param value Value to set for the GameMatchDetail_acceptedTeamScoreMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_accepted_team_score_member1=(value)
                        @game_match_detail_accepted_team_score_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_acceptedTeamScoreMember1" => lambda {|n| @game_match_detail_accepted_team_score_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailAcceptedTeamScoreMember1.create_from_discriminator_value(pn) }) },
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_acceptedTeamScoreMember1", @game_match_detail_accepted_team_score_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailCompletedAtMember1, string
                class GameMatchDetailCompletedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailCompletedAtMember1
                    @game_match_detail_completed_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_completed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailCompletedAt.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_completedAtMember1 property value. Composed type representation for type GameMatchDetailCompletedAtMember1
                    ## @return a game_match_detail_completed_at_member1
                    ## 
                    def game_match_detail_completed_at_member1
                        return @game_match_detail_completed_at_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_completedAtMember1 property value. Composed type representation for type GameMatchDetailCompletedAtMember1
                    ## @param value Value to set for the GameMatchDetail_completedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_completed_at_member1=(value)
                        @game_match_detail_completed_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_completedAtMember1" => lambda {|n| @game_match_detail_completed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailCompletedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_completedAtMember1", @game_match_detail_completed_at_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailCreatedAtMember1, string
                class GameMatchDetailCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailCreatedAtMember1
                    @game_match_detail_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailCreatedAt.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type GameMatchDetailCreatedAtMember1
                    ## @return a game_match_detail_created_at_member1
                    ## 
                    def game_match_detail_created_at_member1
                        return @game_match_detail_created_at_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type GameMatchDetailCreatedAtMember1
                    ## @param value Value to set for the GameMatchDetail_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_created_at_member1=(value)
                        @game_match_detail_created_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_createdAtMember1" => lambda {|n| @game_match_detail_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailCreatedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_createdAtMember1", @game_match_detail_created_at_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailCreatorTeamScoreMember1, number
                class GameMatchDetailCreatorTeamScore
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailCreatorTeamScoreMember1
                    @game_match_detail_creator_team_score_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_creator_team_score
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailCreatorTeamScore.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_creatorTeamScoreMember1 property value. Composed type representation for type GameMatchDetailCreatorTeamScoreMember1
                    ## @return a game_match_detail_creator_team_score_member1
                    ## 
                    def game_match_detail_creator_team_score_member1
                        return @game_match_detail_creator_team_score_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_creatorTeamScoreMember1 property value. Composed type representation for type GameMatchDetailCreatorTeamScoreMember1
                    ## @param value Value to set for the GameMatchDetail_creatorTeamScoreMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_creator_team_score_member1=(value)
                        @game_match_detail_creator_team_score_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_creatorTeamScoreMember1" => lambda {|n| @game_match_detail_creator_team_score_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailCreatorTeamScoreMember1.create_from_discriminator_value(pn) }) },
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_creatorTeamScoreMember1", @game_match_detail_creator_team_score_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailLeagueIdMember1, string
                class GameMatchDetailLeagueId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailLeagueIdMember1
                    @game_match_detail_league_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_league_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailLeagueId.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_leagueIdMember1 property value. Composed type representation for type GameMatchDetailLeagueIdMember1
                    ## @return a game_match_detail_league_id_member1
                    ## 
                    def game_match_detail_league_id_member1
                        return @game_match_detail_league_id_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_leagueIdMember1 property value. Composed type representation for type GameMatchDetailLeagueIdMember1
                    ## @param value Value to set for the GameMatchDetail_leagueIdMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_league_id_member1=(value)
                        @game_match_detail_league_id_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_leagueIdMember1" => lambda {|n| @game_match_detail_league_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailLeagueIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_leagueIdMember1", @game_match_detail_league_id_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailLeagueSeasonIdMember1, string
                class GameMatchDetailLeagueSeasonId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailLeagueSeasonIdMember1
                    @game_match_detail_league_season_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_league_season_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailLeagueSeasonId.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type GameMatchDetailLeagueSeasonIdMember1
                    ## @return a game_match_detail_league_season_id_member1
                    ## 
                    def game_match_detail_league_season_id_member1
                        return @game_match_detail_league_season_id_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type GameMatchDetailLeagueSeasonIdMember1
                    ## @param value Value to set for the GameMatchDetail_leagueSeasonIdMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_league_season_id_member1=(value)
                        @game_match_detail_league_season_id_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_leagueSeasonIdMember1" => lambda {|n| @game_match_detail_league_season_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailLeagueSeasonIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_leagueSeasonIdMember1", @game_match_detail_league_season_id_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailLoserTeamIdMember1, string
                class GameMatchDetailLoserTeamId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailLoserTeamIdMember1
                    @game_match_detail_loser_team_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_loser_team_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailLoserTeamId.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_loserTeamIdMember1 property value. Composed type representation for type GameMatchDetailLoserTeamIdMember1
                    ## @return a game_match_detail_loser_team_id_member1
                    ## 
                    def game_match_detail_loser_team_id_member1
                        return @game_match_detail_loser_team_id_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_loserTeamIdMember1 property value. Composed type representation for type GameMatchDetailLoserTeamIdMember1
                    ## @param value Value to set for the GameMatchDetail_loserTeamIdMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_loser_team_id_member1=(value)
                        @game_match_detail_loser_team_id_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_loserTeamIdMember1" => lambda {|n| @game_match_detail_loser_team_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailLoserTeamIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_loserTeamIdMember1", @game_match_detail_loser_team_id_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailScheduledAtMember1, string
                class GameMatchDetailScheduledAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailScheduledAtMember1
                    @game_match_detail_scheduled_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_scheduled_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailScheduledAt.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type GameMatchDetailScheduledAtMember1
                    ## @return a game_match_detail_scheduled_at_member1
                    ## 
                    def game_match_detail_scheduled_at_member1
                        return @game_match_detail_scheduled_at_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type GameMatchDetailScheduledAtMember1
                    ## @param value Value to set for the GameMatchDetail_scheduledAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_scheduled_at_member1=(value)
                        @game_match_detail_scheduled_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_scheduledAtMember1" => lambda {|n| @game_match_detail_scheduled_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailScheduledAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_scheduledAtMember1", @game_match_detail_scheduled_at_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailStartedAtMember1, string
                class GameMatchDetailStartedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailStartedAtMember1
                    @game_match_detail_started_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_started_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailStartedAt.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type GameMatchDetailStartedAtMember1
                    ## @return a game_match_detail_started_at_member1
                    ## 
                    def game_match_detail_started_at_member1
                        return @game_match_detail_started_at_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type GameMatchDetailStartedAtMember1
                    ## @param value Value to set for the GameMatchDetail_startedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_started_at_member1=(value)
                        @game_match_detail_started_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_startedAtMember1" => lambda {|n| @game_match_detail_started_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailStartedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_startedAtMember1", @game_match_detail_started_at_member1)
                        writer.write_string_value("string", @string)
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
                end

                ## 
                # Composed type wrapper for classes GameMatchDetailWinnerTeamIdMember1, string
                class GameMatchDetailWinnerTeamId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchDetailWinnerTeamIdMember1
                    @game_match_detail_winner_team_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_detail_winner_team_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchDetailWinnerTeamId.new
                    end
                    ## 
                    ## Gets the GameMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type GameMatchDetailWinnerTeamIdMember1
                    ## @return a game_match_detail_winner_team_id_member1
                    ## 
                    def game_match_detail_winner_team_id_member1
                        return @game_match_detail_winner_team_id_member1
                    end
                    ## 
                    ## Sets the GameMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type GameMatchDetailWinnerTeamIdMember1
                    ## @param value Value to set for the GameMatchDetail_winnerTeamIdMember1 property.
                    ## @return a void
                    ## 
                    def game_match_detail_winner_team_id_member1=(value)
                        @game_match_detail_winner_team_id_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchDetail_winnerTeamIdMember1" => lambda {|n| @game_match_detail_winner_team_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailWinnerTeamIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("GameMatchDetail_winnerTeamIdMember1", @game_match_detail_winner_team_id_member1)
                        writer.write_string_value("string", @string)
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
                end
            end
        end
    end
end

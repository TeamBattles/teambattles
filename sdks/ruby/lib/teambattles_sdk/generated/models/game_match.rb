require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Match as returned by the game-developer endpoints (includes scores, omits the game object).
            class GameMatch
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
                # Game mode identifier (from the match's gameModeId).
                @game_mode
                ## 
                # The id property
                @id
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
                ## Gets the acceptedTeam property value. The acceptedTeam property
                ## @return a team
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
                ## @return a game_match_accepted_team_score
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
                ## @return a game_match_completed_at
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
                ## @return a game_match_created_at
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
                ## @return a game_match
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameMatch.new
                end
                ## 
                ## Gets the creatorTeam property value. The creatorTeam property
                ## @return a team
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
                ## @return a game_match_creator_team_score
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
                        "acceptedTeam" => lambda {|n| @accepted_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::Team.create_from_discriminator_value(pn) }) },
                        "acceptedTeamScore" => lambda {|n| @accepted_team_score = n.get_object_value(lambda {|pn| GameMatch::GameMatchAcceptedTeamScore.create_from_discriminator_value(pn) }) },
                        "bestOf" => lambda {|n| @best_of = n.get_number_value() },
                        "completedAt" => lambda {|n| @completed_at = n.get_object_value(lambda {|pn| GameMatch::GameMatchCompletedAt.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| GameMatch::GameMatchCreatedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeam" => lambda {|n| @creator_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::Team.create_from_discriminator_value(pn) }) },
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_object_value(lambda {|pn| GameMatch::GameMatchCreatorTeamScore.create_from_discriminator_value(pn) }) },
                        "gameMode" => lambda {|n| @game_mode = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| GameMatch::GameMatchScheduledAt.create_from_discriminator_value(pn) }) },
                        "startedAt" => lambda {|n| @started_at = n.get_object_value(lambda {|pn| GameMatch::GameMatchStartedAt.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::MatchStatus) },
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
                ## Gets the scheduledAt property value. Scheduled start time (ISO 8601).
                ## @return a game_match_scheduled_at
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
                    writer.write_string_value("gameMode", @game_mode)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_object_value("startedAt", @started_at)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the startedAt property value. Actual start time (ISO 8601).
                ## @return a game_match_started_at
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
                # Composed type wrapper for classes GameMatchAcceptedTeamScoreMember1, number
                class GameMatchAcceptedTeamScore
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchAcceptedTeamScoreMember1
                    @game_match_accepted_team_score_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_accepted_team_score
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchAcceptedTeamScore.new
                    end
                    ## 
                    ## Gets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchAcceptedTeamScoreMember1
                    ## @return a game_match_accepted_team_score_member1
                    ## 
                    def game_match_accepted_team_score_member1
                        return @game_match_accepted_team_score_member1
                    end
                    ## 
                    ## Sets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type GameMatchAcceptedTeamScoreMember1
                    ## @param value Value to set for the GameMatch_acceptedTeamScoreMember1 property.
                    ## @return a void
                    ## 
                    def game_match_accepted_team_score_member1=(value)
                        @game_match_accepted_team_score_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_acceptedTeamScoreMember1" => lambda {|n| @game_match_accepted_team_score_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchAcceptedTeamScoreMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_acceptedTeamScoreMember1", @game_match_accepted_team_score_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end

                ## 
                # Composed type wrapper for classes GameMatchCompletedAtMember1, string
                class GameMatchCompletedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchCompletedAtMember1
                    @game_match_completed_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_completed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchCompletedAt.new
                    end
                    ## 
                    ## Gets the GameMatch_completedAtMember1 property value. Composed type representation for type GameMatchCompletedAtMember1
                    ## @return a game_match_completed_at_member1
                    ## 
                    def game_match_completed_at_member1
                        return @game_match_completed_at_member1
                    end
                    ## 
                    ## Sets the GameMatch_completedAtMember1 property value. Composed type representation for type GameMatchCompletedAtMember1
                    ## @param value Value to set for the GameMatch_completedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_completed_at_member1=(value)
                        @game_match_completed_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_completedAtMember1" => lambda {|n| @game_match_completed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchCompletedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_completedAtMember1", @game_match_completed_at_member1)
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
                # Composed type wrapper for classes GameMatchCreatedAtMember1, string
                class GameMatchCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchCreatedAtMember1
                    @game_match_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchCreatedAt.new
                    end
                    ## 
                    ## Gets the GameMatch_createdAtMember1 property value. Composed type representation for type GameMatchCreatedAtMember1
                    ## @return a game_match_created_at_member1
                    ## 
                    def game_match_created_at_member1
                        return @game_match_created_at_member1
                    end
                    ## 
                    ## Sets the GameMatch_createdAtMember1 property value. Composed type representation for type GameMatchCreatedAtMember1
                    ## @param value Value to set for the GameMatch_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_created_at_member1=(value)
                        @game_match_created_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_createdAtMember1" => lambda {|n| @game_match_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchCreatedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_createdAtMember1", @game_match_created_at_member1)
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
                # Composed type wrapper for classes GameMatchCreatorTeamScoreMember1, number
                class GameMatchCreatorTeamScore
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchCreatorTeamScoreMember1
                    @game_match_creator_team_score_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_creator_team_score
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchCreatorTeamScore.new
                    end
                    ## 
                    ## Gets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type GameMatchCreatorTeamScoreMember1
                    ## @return a game_match_creator_team_score_member1
                    ## 
                    def game_match_creator_team_score_member1
                        return @game_match_creator_team_score_member1
                    end
                    ## 
                    ## Sets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type GameMatchCreatorTeamScoreMember1
                    ## @param value Value to set for the GameMatch_creatorTeamScoreMember1 property.
                    ## @return a void
                    ## 
                    def game_match_creator_team_score_member1=(value)
                        @game_match_creator_team_score_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_creatorTeamScoreMember1" => lambda {|n| @game_match_creator_team_score_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchCreatorTeamScoreMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_creatorTeamScoreMember1", @game_match_creator_team_score_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end

                ## 
                # Composed type wrapper for classes GameMatchScheduledAtMember1, string
                class GameMatchScheduledAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchScheduledAtMember1
                    @game_match_scheduled_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_scheduled_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchScheduledAt.new
                    end
                    ## 
                    ## Gets the GameMatch_scheduledAtMember1 property value. Composed type representation for type GameMatchScheduledAtMember1
                    ## @return a game_match_scheduled_at_member1
                    ## 
                    def game_match_scheduled_at_member1
                        return @game_match_scheduled_at_member1
                    end
                    ## 
                    ## Sets the GameMatch_scheduledAtMember1 property value. Composed type representation for type GameMatchScheduledAtMember1
                    ## @param value Value to set for the GameMatch_scheduledAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_scheduled_at_member1=(value)
                        @game_match_scheduled_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_scheduledAtMember1" => lambda {|n| @game_match_scheduled_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchScheduledAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_scheduledAtMember1", @game_match_scheduled_at_member1)
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
                # Composed type wrapper for classes GameMatchStartedAtMember1, string
                class GameMatchStartedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchStartedAtMember1
                    @game_match_started_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_started_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchStartedAt.new
                    end
                    ## 
                    ## Gets the GameMatch_startedAtMember1 property value. Composed type representation for type GameMatchStartedAtMember1
                    ## @return a game_match_started_at_member1
                    ## 
                    def game_match_started_at_member1
                        return @game_match_started_at_member1
                    end
                    ## 
                    ## Sets the GameMatch_startedAtMember1 property value. Composed type representation for type GameMatchStartedAtMember1
                    ## @param value Value to set for the GameMatch_startedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_match_started_at_member1=(value)
                        @game_match_started_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatch_startedAtMember1" => lambda {|n| @game_match_started_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchStartedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatch_startedAtMember1", @game_match_started_at_member1)
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

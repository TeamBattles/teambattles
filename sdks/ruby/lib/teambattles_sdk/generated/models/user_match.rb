require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Match as returned by the user/team/org match-listing endpoints.
            class UserMatch
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The acceptedTeam property
                @accepted_team
                ## 
                # Number of maps in the series (1, 3, 5, or 7).
                @best_of
                ## 
                # Completion time (ISO 8601).
                @completed_at
                ## 
                # The creatorTeam property
                @creator_team
                ## 
                # Game definition.
                @game
                ## 
                # Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
                ## @return a user_match_completed_at
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
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_match
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserMatch.new
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
                ## Gets the game property value. Game definition.
                ## @return a game
                ## 
                def game
                    return @game
                end
                ## 
                ## Sets the game property value. Game definition.
                ## @param value Value to set for the game property.
                ## @return a void
                ## 
                def game=(value)
                    @game = value
                end
                ## 
                ## Gets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
                ## @return a string
                ## 
                def game_mode
                    return @game_mode
                end
                ## 
                ## Sets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
                        "bestOf" => lambda {|n| @best_of = n.get_number_value() },
                        "completedAt" => lambda {|n| @completed_at = n.get_object_value(lambda {|pn| UserMatch::UserMatchCompletedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeam" => lambda {|n| @creator_team = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::Team.create_from_discriminator_value(pn) }) },
                        "game" => lambda {|n| @game = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::Game.create_from_discriminator_value(pn) }) },
                        "gameMode" => lambda {|n| @game_mode = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "scheduledAt" => lambda {|n| @scheduled_at = n.get_object_value(lambda {|pn| UserMatch::UserMatchScheduledAt.create_from_discriminator_value(pn) }) },
                        "startedAt" => lambda {|n| @started_at = n.get_object_value(lambda {|pn| UserMatch::UserMatchStartedAt.create_from_discriminator_value(pn) }) },
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
                ## @return a user_match_scheduled_at
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
                    writer.write_number_value("bestOf", @best_of)
                    writer.write_object_value("completedAt", @completed_at)
                    writer.write_object_value("creatorTeam", @creator_team)
                    writer.write_object_value("game", @game)
                    writer.write_string_value("gameMode", @game_mode)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("scheduledAt", @scheduled_at)
                    writer.write_object_value("startedAt", @started_at)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the startedAt property value. Actual start time (ISO 8601).
                ## @return a user_match_started_at
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
                # Composed type wrapper for classes string, UserMatchCompletedAtMember1
                class UserMatchCompletedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type UserMatchCompletedAtMember1
                    @user_match_completed_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a user_match_completed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return UserMatchCompletedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "UserMatch_completedAtMember1" => lambda {|n| @user_match_completed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UserMatchCompletedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("UserMatch_completedAtMember1", @user_match_completed_at_member1)
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
                    ## Gets the UserMatch_completedAtMember1 property value. Composed type representation for type UserMatchCompletedAtMember1
                    ## @return a user_match_completed_at_member1
                    ## 
                    def user_match_completed_at_member1
                        return @user_match_completed_at_member1
                    end
                    ## 
                    ## Sets the UserMatch_completedAtMember1 property value. Composed type representation for type UserMatchCompletedAtMember1
                    ## @param value Value to set for the UserMatch_completedAtMember1 property.
                    ## @return a void
                    ## 
                    def user_match_completed_at_member1=(value)
                        @user_match_completed_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, UserMatchScheduledAtMember1
                class UserMatchScheduledAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type UserMatchScheduledAtMember1
                    @user_match_scheduled_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a user_match_scheduled_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return UserMatchScheduledAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "UserMatch_scheduledAtMember1" => lambda {|n| @user_match_scheduled_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UserMatchScheduledAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("UserMatch_scheduledAtMember1", @user_match_scheduled_at_member1)
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
                    ## Gets the UserMatch_scheduledAtMember1 property value. Composed type representation for type UserMatchScheduledAtMember1
                    ## @return a user_match_scheduled_at_member1
                    ## 
                    def user_match_scheduled_at_member1
                        return @user_match_scheduled_at_member1
                    end
                    ## 
                    ## Sets the UserMatch_scheduledAtMember1 property value. Composed type representation for type UserMatchScheduledAtMember1
                    ## @param value Value to set for the UserMatch_scheduledAtMember1 property.
                    ## @return a void
                    ## 
                    def user_match_scheduled_at_member1=(value)
                        @user_match_scheduled_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, UserMatchStartedAtMember1
                class UserMatchStartedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type UserMatchStartedAtMember1
                    @user_match_started_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a user_match_started_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return UserMatchStartedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "UserMatch_startedAtMember1" => lambda {|n| @user_match_started_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UserMatchStartedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("UserMatch_startedAtMember1", @user_match_started_at_member1)
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
                    ## Gets the UserMatch_startedAtMember1 property value. Composed type representation for type UserMatchStartedAtMember1
                    ## @return a user_match_started_at_member1
                    ## 
                    def user_match_started_at_member1
                        return @user_match_started_at_member1
                    end
                    ## 
                    ## Sets the UserMatch_startedAtMember1 property value. Composed type representation for type UserMatchStartedAtMember1
                    ## @param value Value to set for the UserMatch_startedAtMember1 property.
                    ## @return a void
                    ## 
                    def user_match_started_at_member1=(value)
                        @user_match_started_at_member1 = value
                    end
                end
            end
        end
    end
end

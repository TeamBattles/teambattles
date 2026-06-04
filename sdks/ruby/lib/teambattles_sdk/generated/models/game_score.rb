require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A single map score as returned when reading scores.
            class GameScore
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # When the score was confirmed (ISO 8601).
                @confirmed_at
                ## 
                # Score for the creator team.
                @creator_team_score
                ## 
                # Identifier of the map that was played.
                @map_id
                ## 
                # Zero-based index of the map within the series.
                @map_index
                ## 
                # Score for the opponent (accepted) team.
                @opponent_team_score
                ## 
                # Confirmation state: "CONFIRMED" or "PENDING".
                @score_status
                ## 
                # When the score was submitted (ISO 8601).
                @submitted_at
                ## 
                ## Gets the confirmedAt property value. When the score was confirmed (ISO 8601).
                ## @return a game_score_confirmed_at
                ## 
                def confirmed_at
                    return @confirmed_at
                end
                ## 
                ## Sets the confirmedAt property value. When the score was confirmed (ISO 8601).
                ## @param value Value to set for the confirmedAt property.
                ## @return a void
                ## 
                def confirmed_at=(value)
                    @confirmed_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_score
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameScore.new
                end
                ## 
                ## Gets the creatorTeamScore property value. Score for the creator team.
                ## @return a integer
                ## 
                def creator_team_score
                    return @creator_team_score
                end
                ## 
                ## Sets the creatorTeamScore property value. Score for the creator team.
                ## @param value Value to set for the creatorTeamScore property.
                ## @return a void
                ## 
                def creator_team_score=(value)
                    @creator_team_score = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "confirmedAt" => lambda {|n| @confirmed_at = n.get_object_value(lambda {|pn| GameScore::GameScoreConfirmedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_number_value() },
                        "mapId" => lambda {|n| @map_id = n.get_string_value() },
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "opponentTeamScore" => lambda {|n| @opponent_team_score = n.get_number_value() },
                        "scoreStatus" => lambda {|n| @score_status = n.get_string_value() },
                        "submittedAt" => lambda {|n| @submitted_at = n.get_object_value(lambda {|pn| GameScore::GameScoreSubmittedAt.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the mapId property value. Identifier of the map that was played.
                ## @return a string
                ## 
                def map_id
                    return @map_id
                end
                ## 
                ## Sets the mapId property value. Identifier of the map that was played.
                ## @param value Value to set for the mapId property.
                ## @return a void
                ## 
                def map_id=(value)
                    @map_id = value
                end
                ## 
                ## Gets the mapIndex property value. Zero-based index of the map within the series.
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. Zero-based index of the map within the series.
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the opponentTeamScore property value. Score for the opponent (accepted) team.
                ## @return a integer
                ## 
                def opponent_team_score
                    return @opponent_team_score
                end
                ## 
                ## Sets the opponentTeamScore property value. Score for the opponent (accepted) team.
                ## @param value Value to set for the opponentTeamScore property.
                ## @return a void
                ## 
                def opponent_team_score=(value)
                    @opponent_team_score = value
                end
                ## 
                ## Gets the scoreStatus property value. Confirmation state: "CONFIRMED" or "PENDING".
                ## @return a string
                ## 
                def score_status
                    return @score_status
                end
                ## 
                ## Sets the scoreStatus property value. Confirmation state: "CONFIRMED" or "PENDING".
                ## @param value Value to set for the scoreStatus property.
                ## @return a void
                ## 
                def score_status=(value)
                    @score_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("confirmedAt", @confirmed_at)
                    writer.write_number_value("creatorTeamScore", @creator_team_score)
                    writer.write_string_value("mapId", @map_id)
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_number_value("opponentTeamScore", @opponent_team_score)
                    writer.write_string_value("scoreStatus", @score_status)
                    writer.write_object_value("submittedAt", @submitted_at)
                end
                ## 
                ## Gets the submittedAt property value. When the score was submitted (ISO 8601).
                ## @return a game_score_submitted_at
                ## 
                def submitted_at
                    return @submitted_at
                end
                ## 
                ## Sets the submittedAt property value. When the score was submitted (ISO 8601).
                ## @param value Value to set for the submittedAt property.
                ## @return a void
                ## 
                def submitted_at=(value)
                    @submitted_at = value
                end

                ## 
                # Composed type wrapper for classes GameScoreConfirmedAtMember1, string
                class GameScoreConfirmedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameScoreConfirmedAtMember1
                    @game_score_confirmed_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_score_confirmed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameScoreConfirmedAt.new
                    end
                    ## 
                    ## Gets the GameScore_confirmedAtMember1 property value. Composed type representation for type GameScoreConfirmedAtMember1
                    ## @return a game_score_confirmed_at_member1
                    ## 
                    def game_score_confirmed_at_member1
                        return @game_score_confirmed_at_member1
                    end
                    ## 
                    ## Sets the GameScore_confirmedAtMember1 property value. Composed type representation for type GameScoreConfirmedAtMember1
                    ## @param value Value to set for the GameScore_confirmedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_score_confirmed_at_member1=(value)
                        @game_score_confirmed_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameScore_confirmedAtMember1" => lambda {|n| @game_score_confirmed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameScoreConfirmedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameScore_confirmedAtMember1", @game_score_confirmed_at_member1)
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
                # Composed type wrapper for classes GameScoreSubmittedAtMember1, string
                class GameScoreSubmittedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameScoreSubmittedAtMember1
                    @game_score_submitted_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_score_submitted_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameScoreSubmittedAt.new
                    end
                    ## 
                    ## Gets the GameScore_submittedAtMember1 property value. Composed type representation for type GameScoreSubmittedAtMember1
                    ## @return a game_score_submitted_at_member1
                    ## 
                    def game_score_submitted_at_member1
                        return @game_score_submitted_at_member1
                    end
                    ## 
                    ## Sets the GameScore_submittedAtMember1 property value. Composed type representation for type GameScoreSubmittedAtMember1
                    ## @param value Value to set for the GameScore_submittedAtMember1 property.
                    ## @return a void
                    ## 
                    def game_score_submitted_at_member1=(value)
                        @game_score_submitted_at_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameScore_submittedAtMember1" => lambda {|n| @game_score_submitted_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameScoreSubmittedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameScore_submittedAtMember1", @game_score_submitted_at_member1)
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

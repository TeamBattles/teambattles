require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Team rosters for a match, grouped by creator and accepted team.
            class GameMatchRostersResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Players on the accepted team (empty when unaccepted).
                @accepted_roster
                ## 
                # ID of the team that accepted the match, or null if unaccepted.
                @accepted_team_id
                ## 
                # Players on the creator team.
                @creator_roster
                ## 
                # ID of the team that created the match.
                @creator_team_id
                ## 
                # Server response time (ISO 8601).
                @timestamp
                ## 
                ## Gets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
                ## @return a game_roster_player
                ## 
                def accepted_roster
                    return @accepted_roster
                end
                ## 
                ## Sets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
                ## @param value Value to set for the acceptedRoster property.
                ## @return a void
                ## 
                def accepted_roster=(value)
                    @accepted_roster = value
                end
                ## 
                ## Gets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
                ## @return a game_match_rosters_response_accepted_team_id
                ## 
                def accepted_team_id
                    return @accepted_team_id
                end
                ## 
                ## Sets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
                ## @param value Value to set for the acceptedTeamId property.
                ## @return a void
                ## 
                def accepted_team_id=(value)
                    @accepted_team_id = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_match_rosters_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameMatchRostersResponse.new
                end
                ## 
                ## Gets the creatorRoster property value. Players on the creator team.
                ## @return a game_roster_player
                ## 
                def creator_roster
                    return @creator_roster
                end
                ## 
                ## Sets the creatorRoster property value. Players on the creator team.
                ## @param value Value to set for the creatorRoster property.
                ## @return a void
                ## 
                def creator_roster=(value)
                    @creator_roster = value
                end
                ## 
                ## Gets the creatorTeamId property value. ID of the team that created the match.
                ## @return a string
                ## 
                def creator_team_id
                    return @creator_team_id
                end
                ## 
                ## Sets the creatorTeamId property value. ID of the team that created the match.
                ## @param value Value to set for the creatorTeamId property.
                ## @return a void
                ## 
                def creator_team_id=(value)
                    @creator_team_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "acceptedRoster" => lambda {|n| @accepted_roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::GameRosterPlayer.create_from_discriminator_value(pn) }) },
                        "acceptedTeamId" => lambda {|n| @accepted_team_id = n.get_object_value(lambda {|pn| GameMatchRostersResponse::GameMatchRostersResponseAcceptedTeamId.create_from_discriminator_value(pn) }) },
                        "creatorRoster" => lambda {|n| @creator_roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::GameRosterPlayer.create_from_discriminator_value(pn) }) },
                        "creatorTeamId" => lambda {|n| @creator_team_id = n.get_string_value() },
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
                    writer.write_collection_of_object_values("acceptedRoster", @accepted_roster)
                    writer.write_object_value("acceptedTeamId", @accepted_team_id)
                    writer.write_collection_of_object_values("creatorRoster", @creator_roster)
                    writer.write_string_value("creatorTeamId", @creator_team_id)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. Server response time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Server response time (ISO 8601).
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end

                ## 
                # Composed type wrapper for classes GameMatchRostersResponseAcceptedTeamIdMember1, string
                class GameMatchRostersResponseAcceptedTeamId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type GameMatchRostersResponseAcceptedTeamIdMember1
                    @game_match_rosters_response_accepted_team_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a game_match_rosters_response_accepted_team_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GameMatchRostersResponseAcceptedTeamId.new
                    end
                    ## 
                    ## Gets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type GameMatchRostersResponseAcceptedTeamIdMember1
                    ## @return a game_match_rosters_response_accepted_team_id_member1
                    ## 
                    def game_match_rosters_response_accepted_team_id_member1
                        return @game_match_rosters_response_accepted_team_id_member1
                    end
                    ## 
                    ## Sets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type GameMatchRostersResponseAcceptedTeamIdMember1
                    ## @param value Value to set for the GameMatchRostersResponse_acceptedTeamIdMember1 property.
                    ## @return a void
                    ## 
                    def game_match_rosters_response_accepted_team_id_member1=(value)
                        @game_match_rosters_response_accepted_team_id_member1 = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "GameMatchRostersResponse_acceptedTeamIdMember1" => lambda {|n| @game_match_rosters_response_accepted_team_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchRostersResponseAcceptedTeamIdMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("GameMatchRostersResponse_acceptedTeamIdMember1", @game_match_rosters_response_accepted_team_id_member1)
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

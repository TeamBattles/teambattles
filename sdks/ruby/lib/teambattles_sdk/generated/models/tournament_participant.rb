require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A team entered in a tournament.
            class TournamentParticipant
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Check-in timestamp (epoch milliseconds).
                @checked_in_at
                ## 
                # Placement persisted at finalization. Present only once the tournament ends.
                @final_placement
                ## 
                # Participant ID.
                @id
                ## 
                # Tournament roster.
                @roster
                ## 
                # Assigned seed, if seeding has run.
                @seed
                ## 
                # PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
                @status
                ## 
                # Team avatar URL.
                @team_avatar_url
                ## 
                # Team ID.
                @team_id
                ## 
                # Team display name.
                @team_name
                ## 
                ## Gets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
                ## @return a double
                ## 
                def checked_in_at
                    return @checked_in_at
                end
                ## 
                ## Sets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
                ## @param value Value to set for the checkedInAt property.
                ## @return a void
                ## 
                def checked_in_at=(value)
                    @checked_in_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_participant
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentParticipant.new
                end
                ## 
                ## Gets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
                ## @return a integer
                ## 
                def final_placement
                    return @final_placement
                end
                ## 
                ## Sets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
                ## @param value Value to set for the finalPlacement property.
                ## @return a void
                ## 
                def final_placement=(value)
                    @final_placement = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "checkedInAt" => lambda {|n| @checked_in_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "finalPlacement" => lambda {|n| @final_placement = n.get_number_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "roster" => lambda {|n| @roster = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRosterMember.create_from_discriminator_value(pn) }) },
                        "seed" => lambda {|n| @seed = n.get_number_value() },
                        "status" => lambda {|n| @status = n.get_string_value() },
                        "teamAvatarUrl" => lambda {|n| @team_avatar_url = n.get_object_value(lambda {|pn| TournamentParticipant::TournamentParticipantTeamAvatarUrl.create_from_discriminator_value(pn) }) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Participant ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Participant ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the roster property value. Tournament roster.
                ## @return a tournament_roster_member
                ## 
                def roster
                    return @roster
                end
                ## 
                ## Sets the roster property value. Tournament roster.
                ## @param value Value to set for the roster property.
                ## @return a void
                ## 
                def roster=(value)
                    @roster = value
                end
                ## 
                ## Gets the seed property value. Assigned seed, if seeding has run.
                ## @return a integer
                ## 
                def seed
                    return @seed
                end
                ## 
                ## Sets the seed property value. Assigned seed, if seeding has run.
                ## @param value Value to set for the seed property.
                ## @return a void
                ## 
                def seed=(value)
                    @seed = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("checkedInAt", @checked_in_at)
                    writer.write_number_value("finalPlacement", @final_placement)
                    writer.write_string_value("id", @id)
                    writer.write_collection_of_object_values("roster", @roster)
                    writer.write_number_value("seed", @seed)
                    writer.write_string_value("status", @status)
                    writer.write_object_value("teamAvatarUrl", @team_avatar_url)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("teamName", @team_name)
                end
                ## 
                ## Gets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
                ## @return a string
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamAvatarUrl property value. Team avatar URL.
                ## @return a tournament_participant_team_avatar_url
                ## 
                def team_avatar_url
                    return @team_avatar_url
                end
                ## 
                ## Sets the teamAvatarUrl property value. Team avatar URL.
                ## @param value Value to set for the teamAvatarUrl property.
                ## @return a void
                ## 
                def team_avatar_url=(value)
                    @team_avatar_url = value
                end
                ## 
                ## Gets the teamId property value. Team ID.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Team ID.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the teamName property value. Team display name.
                ## @return a string
                ## 
                def team_name
                    return @team_name
                end
                ## 
                ## Sets the teamName property value. Team display name.
                ## @param value Value to set for the teamName property.
                ## @return a void
                ## 
                def team_name=(value)
                    @team_name = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentParticipantTeamAvatarUrlMember1
                class TournamentParticipantTeamAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentParticipantTeamAvatarUrlMember1
                    @tournament_participant_team_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_participant_team_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentParticipantTeamAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentParticipant_teamAvatarUrlMember1" => lambda {|n| @tournament_participant_team_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentParticipantTeamAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentParticipant_teamAvatarUrlMember1", @tournament_participant_team_avatar_url_member1)
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
                    ## Gets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type TournamentParticipantTeamAvatarUrlMember1
                    ## @return a tournament_participant_team_avatar_url_member1
                    ## 
                    def tournament_participant_team_avatar_url_member1
                        return @tournament_participant_team_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type TournamentParticipantTeamAvatarUrlMember1
                    ## @param value Value to set for the TournamentParticipant_teamAvatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_participant_team_avatar_url_member1=(value)
                        @tournament_participant_team_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end

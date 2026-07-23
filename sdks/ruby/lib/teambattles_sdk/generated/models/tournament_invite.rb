require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A team invite issued by the organizer.
            class TournamentInvite
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Invite time (epoch milliseconds).
                @created_at
                ## 
                # Invite ID.
                @id
                ## 
                # Organizer who sent the invite.
                @invited_by_user_id
                ## 
                # Response time (epoch milliseconds). Absent while PENDING.
                @responded_at
                ## 
                # State of a tournament team invite.
                @status
                ## 
                # Invited team's avatar URL.
                @team_avatar_url
                ## 
                # Invited team's ID.
                @team_id
                ## 
                # Invited team's display name.
                @team_name
                ## 
                ## Gets the createdAt property value. Invite time (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Invite time (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_invite
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentInvite.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "invitedByUserId" => lambda {|n| @invited_by_user_id = n.get_string_value() },
                        "respondedAt" => lambda {|n| @responded_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentInviteStatus) },
                        "teamAvatarUrl" => lambda {|n| @team_avatar_url = n.get_object_value(lambda {|pn| TournamentInvite::TournamentInviteTeamAvatarUrl.create_from_discriminator_value(pn) }) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Invite ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Invite ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the invitedByUserId property value. Organizer who sent the invite.
                ## @return a string
                ## 
                def invited_by_user_id
                    return @invited_by_user_id
                end
                ## 
                ## Sets the invitedByUserId property value. Organizer who sent the invite.
                ## @param value Value to set for the invitedByUserId property.
                ## @return a void
                ## 
                def invited_by_user_id=(value)
                    @invited_by_user_id = value
                end
                ## 
                ## Gets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
                ## @return a double
                ## 
                def responded_at
                    return @responded_at
                end
                ## 
                ## Sets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
                ## @param value Value to set for the respondedAt property.
                ## @return a void
                ## 
                def responded_at=(value)
                    @responded_at = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("invitedByUserId", @invited_by_user_id)
                    writer.write_object_value("respondedAt", @responded_at)
                    writer.write_enum_value("status", @status)
                    writer.write_object_value("teamAvatarUrl", @team_avatar_url)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("teamName", @team_name)
                end
                ## 
                ## Gets the status property value. State of a tournament team invite.
                ## @return a tournament_invite_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. State of a tournament team invite.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamAvatarUrl property value. Invited team's avatar URL.
                ## @return a tournament_invite_team_avatar_url
                ## 
                def team_avatar_url
                    return @team_avatar_url
                end
                ## 
                ## Sets the teamAvatarUrl property value. Invited team's avatar URL.
                ## @param value Value to set for the teamAvatarUrl property.
                ## @return a void
                ## 
                def team_avatar_url=(value)
                    @team_avatar_url = value
                end
                ## 
                ## Gets the teamId property value. Invited team's ID.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Invited team's ID.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the teamName property value. Invited team's display name.
                ## @return a string
                ## 
                def team_name
                    return @team_name
                end
                ## 
                ## Sets the teamName property value. Invited team's display name.
                ## @param value Value to set for the teamName property.
                ## @return a void
                ## 
                def team_name=(value)
                    @team_name = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentInviteTeamAvatarUrlMember1
                class TournamentInviteTeamAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentInviteTeamAvatarUrlMember1
                    @tournament_invite_team_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_invite_team_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentInviteTeamAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentInvite_teamAvatarUrlMember1" => lambda {|n| @tournament_invite_team_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentInviteTeamAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentInvite_teamAvatarUrlMember1", @tournament_invite_team_avatar_url_member1)
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
                    ## Gets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type TournamentInviteTeamAvatarUrlMember1
                    ## @return a tournament_invite_team_avatar_url_member1
                    ## 
                    def tournament_invite_team_avatar_url_member1
                        return @tournament_invite_team_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type TournamentInviteTeamAvatarUrlMember1
                    ## @param value Value to set for the TournamentInvite_teamAvatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_invite_team_avatar_url_member1=(value)
                        @tournament_invite_team_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end

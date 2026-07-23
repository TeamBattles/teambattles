require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # An organizer invite addressed to a team the caller may act for. Only invites for ACTABLE teams appear - an invite to a team the caller merely belongs to is the captain's to answer.
            class MyTournamentInvite
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Invite time (epoch milliseconds).
                @created_at
                ## 
                # Invite ID. Required by the invite-response endpoint.
                @invite_id
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
                ## @return a my_tournament_invite
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentInvite.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "inviteId" => lambda {|n| @invite_id = n.get_string_value() },
                        "invitedByUserId" => lambda {|n| @invited_by_user_id = n.get_string_value() },
                        "respondedAt" => lambda {|n| @responded_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentInviteStatus) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the inviteId property value. Invite ID. Required by the invite-response endpoint.
                ## @return a string
                ## 
                def invite_id
                    return @invite_id
                end
                ## 
                ## Sets the inviteId property value. Invite ID. Required by the invite-response endpoint.
                ## @param value Value to set for the inviteId property.
                ## @return a void
                ## 
                def invite_id=(value)
                    @invite_id = value
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
                    writer.write_string_value("inviteId", @invite_id)
                    writer.write_string_value("invitedByUserId", @invited_by_user_id)
                    writer.write_object_value("respondedAt", @responded_at)
                    writer.write_enum_value("status", @status)
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
            end
        end
    end
end

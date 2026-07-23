require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One of the caller's teams entered in this tournament.
            class MyTournamentParticipant
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
                @can_manage
                ## 
                # Check-in time (epoch milliseconds). Absent until the team checks in.
                @checked_in_at
                ## 
                # Placement persisted at finalization. Present only once the tournament ends.
                @final_placement
                ## 
                # Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
                @participant_id
                ## 
                # Entry time (epoch milliseconds).
                @registered_at
                ## 
                # Assigned seed, once seeding has run.
                @seed
                ## 
                # State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
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
                ## Gets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
                ## @return a boolean
                ## 
                def can_manage
                    return @can_manage
                end
                ## 
                ## Sets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
                ## @param value Value to set for the canManage property.
                ## @return a void
                ## 
                def can_manage=(value)
                    @can_manage = value
                end
                ## 
                ## Gets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
                ## @return a double
                ## 
                def checked_in_at
                    return @checked_in_at
                end
                ## 
                ## Sets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
                ## @param value Value to set for the checkedInAt property.
                ## @return a void
                ## 
                def checked_in_at=(value)
                    @checked_in_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_participant
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentParticipant.new
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
                        "canManage" => lambda {|n| @can_manage = n.get_boolean_value() },
                        "checkedInAt" => lambda {|n| @checked_in_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "finalPlacement" => lambda {|n| @final_placement = n.get_number_value() },
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                        "registeredAt" => lambda {|n| @registered_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "seed" => lambda {|n| @seed = n.get_number_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentParticipantStatus) },
                        "teamAvatarUrl" => lambda {|n| @team_avatar_url = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
                ## @param value Value to set for the participantId property.
                ## @return a void
                ## 
                def participant_id=(value)
                    @participant_id = value
                end
                ## 
                ## Gets the registeredAt property value. Entry time (epoch milliseconds).
                ## @return a double
                ## 
                def registered_at
                    return @registered_at
                end
                ## 
                ## Sets the registeredAt property value. Entry time (epoch milliseconds).
                ## @param value Value to set for the registeredAt property.
                ## @return a void
                ## 
                def registered_at=(value)
                    @registered_at = value
                end
                ## 
                ## Gets the seed property value. Assigned seed, once seeding has run.
                ## @return a integer
                ## 
                def seed
                    return @seed
                end
                ## 
                ## Sets the seed property value. Assigned seed, once seeding has run.
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
                    writer.write_boolean_value("canManage", @can_manage)
                    writer.write_object_value("checkedInAt", @checked_in_at)
                    writer.write_number_value("finalPlacement", @final_placement)
                    writer.write_string_value("participantId", @participant_id)
                    writer.write_object_value("registeredAt", @registered_at)
                    writer.write_number_value("seed", @seed)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("teamAvatarUrl", @team_avatar_url)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("teamName", @team_name)
                end
                ## 
                ## Gets the status property value. State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
                ## @return a tournament_participant_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamAvatarUrl property value. Team avatar URL.
                ## @return a string
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
            end
        end
    end
end

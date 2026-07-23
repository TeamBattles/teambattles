require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A tournament the API key owner can manage.
            class MyTournamentSummary
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Platform review state, independent of `status`.
                @approval_status
                ## 
                # user, org, or league.
                @host_type
                ## 
                # Tournament ID.
                @id
                ## 
                # Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
                @is_admin
                ## 
                # Participant cap.
                @max_participants
                ## 
                # Tournament display name.
                @name
                ## 
                # Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
                @needs_attention
                ## 
                # Current number of participants.
                @participant_count
                ## 
                # URL-friendly tournament identifier.
                @slug
                ## 
                # Scheduled start (epoch milliseconds).
                @starts_at
                ## 
                # Lifecycle status of a tournament.
                @status
                ## 
                # Last update (epoch milliseconds).
                @updated_at
                ## 
                ## Gets the approvalStatus property value. Platform review state, independent of `status`.
                ## @return a string
                ## 
                def approval_status
                    return @approval_status
                end
                ## 
                ## Sets the approvalStatus property value. Platform review state, independent of `status`.
                ## @param value Value to set for the approvalStatus property.
                ## @return a void
                ## 
                def approval_status=(value)
                    @approval_status = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "approvalStatus" => lambda {|n| @approval_status = n.get_string_value() },
                        "hostType" => lambda {|n| @host_type = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isAdmin" => lambda {|n| @is_admin = n.get_boolean_value() },
                        "maxParticipants" => lambda {|n| @max_participants = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "needsAttention" => lambda {|n| @needs_attention = n.get_boolean_value() },
                        "participantCount" => lambda {|n| @participant_count = n.get_number_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "startsAt" => lambda {|n| @starts_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStatus) },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the hostType property value. user, org, or league.
                ## @return a string
                ## 
                def host_type
                    return @host_type
                end
                ## 
                ## Sets the hostType property value. user, org, or league.
                ## @param value Value to set for the hostType property.
                ## @return a void
                ## 
                def host_type=(value)
                    @host_type = value
                end
                ## 
                ## Gets the id property value. Tournament ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Tournament ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
                ## @return a boolean
                ## 
                def is_admin
                    return @is_admin
                end
                ## 
                ## Sets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
                ## @param value Value to set for the isAdmin property.
                ## @return a void
                ## 
                def is_admin=(value)
                    @is_admin = value
                end
                ## 
                ## Gets the maxParticipants property value. Participant cap.
                ## @return a integer
                ## 
                def max_participants
                    return @max_participants
                end
                ## 
                ## Sets the maxParticipants property value. Participant cap.
                ## @param value Value to set for the maxParticipants property.
                ## @return a void
                ## 
                def max_participants=(value)
                    @max_participants = value
                end
                ## 
                ## Gets the name property value. Tournament display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Tournament display name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
                ## @return a boolean
                ## 
                def needs_attention
                    return @needs_attention
                end
                ## 
                ## Sets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
                ## @param value Value to set for the needsAttention property.
                ## @return a void
                ## 
                def needs_attention=(value)
                    @needs_attention = value
                end
                ## 
                ## Gets the participantCount property value. Current number of participants.
                ## @return a integer
                ## 
                def participant_count
                    return @participant_count
                end
                ## 
                ## Sets the participantCount property value. Current number of participants.
                ## @param value Value to set for the participantCount property.
                ## @return a void
                ## 
                def participant_count=(value)
                    @participant_count = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("approvalStatus", @approval_status)
                    writer.write_string_value("hostType", @host_type)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isAdmin", @is_admin)
                    writer.write_number_value("maxParticipants", @max_participants)
                    writer.write_string_value("name", @name)
                    writer.write_boolean_value("needsAttention", @needs_attention)
                    writer.write_number_value("participantCount", @participant_count)
                    writer.write_string_value("slug", @slug)
                    writer.write_object_value("startsAt", @starts_at)
                    writer.write_enum_value("status", @status)
                    writer.write_object_value("updatedAt", @updated_at)
                end
                ## 
                ## Gets the slug property value. URL-friendly tournament identifier.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. URL-friendly tournament identifier.
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the startsAt property value. Scheduled start (epoch milliseconds).
                ## @return a double
                ## 
                def starts_at
                    return @starts_at
                end
                ## 
                ## Sets the startsAt property value. Scheduled start (epoch milliseconds).
                ## @param value Value to set for the startsAt property.
                ## @return a void
                ## 
                def starts_at=(value)
                    @starts_at = value
                end
                ## 
                ## Gets the status property value. Lifecycle status of a tournament.
                ## @return a tournament_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Lifecycle status of a tournament.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the updatedAt property value. Last update (epoch milliseconds).
                ## @return a double
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. Last update (epoch milliseconds).
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end
            end
        end
    end
end

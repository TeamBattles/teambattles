require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The caller's own free-agent pool row.
            class MyTournamentFreeAgent
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Pool join time (epoch milliseconds).
                @created_at
                ## 
                # Free-agent row ID.
                @free_agent_id
                ## 
                # Free-text note the caller supplied.
                @note
                ## 
                # Participant who picked the caller up. Present only when PICKED_UP.
                @picked_up_by_participant_id
                ## 
                # State of the caller's free-agent pool row.
                @status
                ## 
                ## Gets the createdAt property value. Pool join time (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Pool join time (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_free_agent
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentFreeAgent.new
                end
                ## 
                ## Gets the freeAgentId property value. Free-agent row ID.
                ## @return a string
                ## 
                def free_agent_id
                    return @free_agent_id
                end
                ## 
                ## Sets the freeAgentId property value. Free-agent row ID.
                ## @param value Value to set for the freeAgentId property.
                ## @return a void
                ## 
                def free_agent_id=(value)
                    @free_agent_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "freeAgentId" => lambda {|n| @free_agent_id = n.get_string_value() },
                        "note" => lambda {|n| @note = n.get_string_value() },
                        "pickedUpByParticipantId" => lambda {|n| @picked_up_by_participant_id = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFreeAgentStatus) },
                    }
                end
                ## 
                ## Gets the note property value. Free-text note the caller supplied.
                ## @return a string
                ## 
                def note
                    return @note
                end
                ## 
                ## Sets the note property value. Free-text note the caller supplied.
                ## @param value Value to set for the note property.
                ## @return a void
                ## 
                def note=(value)
                    @note = value
                end
                ## 
                ## Gets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
                ## @return a string
                ## 
                def picked_up_by_participant_id
                    return @picked_up_by_participant_id
                end
                ## 
                ## Sets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
                ## @param value Value to set for the pickedUpByParticipantId property.
                ## @return a void
                ## 
                def picked_up_by_participant_id=(value)
                    @picked_up_by_participant_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("freeAgentId", @free_agent_id)
                    writer.write_string_value("note", @note)
                    writer.write_string_value("pickedUpByParticipantId", @picked_up_by_participant_id)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the status property value. State of the caller's free-agent pool row.
                ## @return a tournament_free_agent_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. State of the caller's free-agent pool row.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
            end
        end
    end
end

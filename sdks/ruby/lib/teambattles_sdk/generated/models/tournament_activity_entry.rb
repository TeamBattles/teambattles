require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One tournament activity log entry.
            class TournamentActivityEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
                @action
                ## 
                # The acting user, or null when the user row no longer resolves.
                @actor
                ## 
                # Log time (epoch milliseconds).
                @created_at
                ## 
                # Activity log row ID.
                @id
                ## 
                # Action-specific detail. Shape varies by `action`.
                @metadata
                ## 
                # ID of the targeted row.
                @target_id
                ## 
                # Kind of row the action targeted, when the action names one.
                @target_type
                ## 
                ## Gets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
                ## @return a string
                ## 
                def action
                    return @action
                end
                ## 
                ## Sets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
                ## @param value Value to set for the action property.
                ## @return a void
                ## 
                def action=(value)
                    @action = value
                end
                ## 
                ## Gets the actor property value. The acting user, or null when the user row no longer resolves.
                ## @return a tournament_activity_actor
                ## 
                def actor
                    return @actor
                end
                ## 
                ## Sets the actor property value. The acting user, or null when the user row no longer resolves.
                ## @param value Value to set for the actor property.
                ## @return a void
                ## 
                def actor=(value)
                    @actor = value
                end
                ## 
                ## Gets the createdAt property value. Log time (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Log time (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_activity_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentActivityEntry.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "action" => lambda {|n| @action = n.get_string_value() },
                        "actor" => lambda {|n| @actor = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentActivityActor.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "metadata" => lambda {|n| @metadata = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentActivityEntryMetadata.create_from_discriminator_value(pn) }) },
                        "targetId" => lambda {|n| @target_id = n.get_string_value() },
                        "targetType" => lambda {|n| @target_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Activity log row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Activity log row ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the metadata property value. Action-specific detail. Shape varies by `action`.
                ## @return a tournament_activity_entry_metadata
                ## 
                def metadata
                    return @metadata
                end
                ## 
                ## Sets the metadata property value. Action-specific detail. Shape varies by `action`.
                ## @param value Value to set for the metadata property.
                ## @return a void
                ## 
                def metadata=(value)
                    @metadata = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("action", @action)
                    writer.write_object_value("actor", @actor)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("metadata", @metadata)
                    writer.write_string_value("targetId", @target_id)
                    writer.write_string_value("targetType", @target_type)
                end
                ## 
                ## Gets the targetId property value. ID of the targeted row.
                ## @return a string
                ## 
                def target_id
                    return @target_id
                end
                ## 
                ## Sets the targetId property value. ID of the targeted row.
                ## @param value Value to set for the targetId property.
                ## @return a void
                ## 
                def target_id=(value)
                    @target_id = value
                end
                ## 
                ## Gets the targetType property value. Kind of row the action targeted, when the action names one.
                ## @return a string
                ## 
                def target_type
                    return @target_type
                end
                ## 
                ## Sets the targetType property value. Kind of row the action targeted, when the action names one.
                ## @param value Value to set for the targetType property.
                ## @return a void
                ## 
                def target_type=(value)
                    @target_type = value
                end
            end
        end
    end
end

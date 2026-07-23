require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Tri-state result of a tournament edit.
            class TournamentUpdateResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
                @applied
                ## 
                # Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
                @approval_status
                ## 
                # Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
                @changed_fields
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Gets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
                ## @return a tournament_update_response_applied
                ## 
                def applied
                    return @applied
                end
                ## 
                ## Sets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
                ## @param value Value to set for the applied property.
                ## @return a void
                ## 
                def applied=(value)
                    @applied = value
                end
                ## 
                ## Gets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
                ## @return a tournament_update_response_approval_status
                ## 
                def approval_status
                    return @approval_status
                end
                ## 
                ## Sets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
                ## @param value Value to set for the approvalStatus property.
                ## @return a void
                ## 
                def approval_status=(value)
                    @approval_status = value
                end
                ## 
                ## Gets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
                ## @return a tournament_material_field
                ## 
                def changed_fields
                    return @changed_fields
                end
                ## 
                ## Sets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
                ## @param value Value to set for the changedFields property.
                ## @return a void
                ## 
                def changed_fields=(value)
                    @changed_fields = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_update_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentUpdateResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "applied" => lambda {|n| @applied = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentUpdateResponseApplied) },
                        "approvalStatus" => lambda {|n| @approval_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentUpdateResponseApprovalStatus) },
                        "changedFields" => lambda {|n| @changed_fields = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentMaterialField.create_from_discriminator_value(pn) }) },
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
                    writer.write_enum_value("applied", @applied)
                    writer.write_enum_value("approvalStatus", @approval_status)
                    writer.write_collection_of_object_values("changedFields", @changed_fields)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end

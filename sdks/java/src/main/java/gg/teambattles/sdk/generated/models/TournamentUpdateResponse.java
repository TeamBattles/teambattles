package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tri-state result of a tournament edit.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentUpdateResponse implements Parsable {
    /**
     * `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
     */
    private TournamentUpdateResponseApplied applied;
    /**
     * Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
     */
    private TournamentUpdateResponseApprovalStatus approvalStatus;
    /**
     * Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
     */
    private java.util.List<TournamentMaterialField> changedFields;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentUpdateResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentUpdateResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentUpdateResponse();
    }
    /**
     * Gets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
     * @return a {@link TournamentUpdateResponseApplied}
     */
    @jakarta.annotation.Nullable
    public TournamentUpdateResponseApplied getApplied() {
        return this.applied;
    }
    /**
     * Gets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
     * @return a {@link TournamentUpdateResponseApprovalStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentUpdateResponseApprovalStatus getApprovalStatus() {
        return this.approvalStatus;
    }
    /**
     * Gets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
     * @return a {@link java.util.List<TournamentMaterialField>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentMaterialField> getChangedFields() {
        return this.changedFields;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("applied", (n) -> { this.setApplied(n.getEnumValue(TournamentUpdateResponseApplied::forValue)); });
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getEnumValue(TournamentUpdateResponseApprovalStatus::forValue)); });
        deserializerMap.put("changedFields", (n) -> { this.setChangedFields(n.getCollectionOfEnumValues(TournamentMaterialField::forValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. The timestamp property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("applied", this.getApplied());
        writer.writeEnumValue("approvalStatus", this.getApprovalStatus());
        writer.writeCollectionOfEnumValues("changedFields", this.getChangedFields());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
     * @param value Value to set for the applied property.
     */
    public void setApplied(@jakarta.annotation.Nullable final TournamentUpdateResponseApplied value) {
        this.applied = value;
    }
    /**
     * Sets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final TournamentUpdateResponseApprovalStatus value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
     * @param value Value to set for the changedFields property.
     */
    public void setChangedFields(@jakarta.annotation.Nullable final java.util.List<TournamentMaterialField> value) {
        this.changedFields = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

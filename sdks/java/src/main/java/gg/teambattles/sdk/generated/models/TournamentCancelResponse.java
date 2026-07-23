package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of cancelling a tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentCancelResponse implements Parsable {
    /**
     * The tournament&apos;s approval status as of this request&apos;s authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
     */
    private TournamentCancelResponseApprovalStatus approvalStatus;
    /**
     * The lifecycle status this call set.
     */
    private String status;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentCancelResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentCancelResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentCancelResponse();
    }
    /**
     * Gets the approvalStatus property value. The tournament&apos;s approval status as of this request&apos;s authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
     * @return a {@link TournamentCancelResponseApprovalStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentCancelResponseApprovalStatus getApprovalStatus() {
        return this.approvalStatus;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getEnumValue(TournamentCancelResponseApprovalStatus::forValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the status property value. The lifecycle status this call set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
    }
    /**
     * Gets the success property value. The success property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSuccess() {
        return this.success;
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
        writer.writeEnumValue("approvalStatus", this.getApprovalStatus());
        writer.writeStringValue("status", this.getStatus());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the approvalStatus property value. The tournament&apos;s approval status as of this request&apos;s authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final TournamentCancelResponseApprovalStatus value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the status property value. The lifecycle status this call set.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

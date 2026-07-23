package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of submitting a draft tournament for staff review.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentSubmitForApprovalResponse implements Parsable {
    /**
     * The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
     */
    private TournamentSubmitForApprovalResponseApprovalStatus approvalStatus;
    /**
     * True when the platform&apos;s approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
     */
    private Boolean autoApproved;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentSubmitForApprovalResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentSubmitForApprovalResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentSubmitForApprovalResponse();
    }
    /**
     * Gets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
     * @return a {@link TournamentSubmitForApprovalResponseApprovalStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentSubmitForApprovalResponseApprovalStatus getApprovalStatus() {
        return this.approvalStatus;
    }
    /**
     * Gets the autoApproved property value. True when the platform&apos;s approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAutoApproved() {
        return this.autoApproved;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getEnumValue(TournamentSubmitForApprovalResponseApprovalStatus::forValue)); });
        deserializerMap.put("autoApproved", (n) -> { this.setAutoApproved(n.getBooleanValue()); });
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
        writer.writeEnumValue("approvalStatus", this.getApprovalStatus());
        writer.writeBooleanValue("autoApproved", this.getAutoApproved());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final TournamentSubmitForApprovalResponseApprovalStatus value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the autoApproved property value. True when the platform&apos;s approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
     * @param value Value to set for the autoApproved property.
     */
    public void setAutoApproved(@jakarta.annotation.Nullable final Boolean value) {
        this.autoApproved = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

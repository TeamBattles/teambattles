package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The newly created draft tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentCreateResponse implements Parsable {
    /**
     * Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
     */
    private String approvalStatus;
    /**
     * Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
     */
    private String slug;
    /**
     * Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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
     * The tournamentId property
     */
    private String tournamentId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentCreateResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentCreateResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentCreateResponse();
    }
    /**
     * Gets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getApprovalStatus() {
        return this.approvalStatus;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("tournamentId", (n) -> { this.setTournamentId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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
     * Gets the tournamentId property value. The tournamentId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTournamentId() {
        return this.tournamentId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("approvalStatus", this.getApprovalStatus());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeStringValue("status", this.getStatus());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeStringValue("tournamentId", this.getTournamentId());
    }
    /**
     * Sets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final String value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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
    /**
     * Sets the tournamentId property value. The tournamentId property
     * @param value Value to set for the tournamentId property.
     */
    public void setTournamentId(@jakarta.annotation.Nullable final String value) {
        this.tournamentId = value;
    }
}

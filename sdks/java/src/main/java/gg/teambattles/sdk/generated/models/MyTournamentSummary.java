package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A tournament the API key owner can manage.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentSummary implements Parsable {
    /**
     * Platform review state, independent of `status`.
     */
    private String approvalStatus;
    /**
     * user, org, or league.
     */
    private String hostType;
    /**
     * Tournament ID.
     */
    private String id;
    /**
     * Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
     */
    private Boolean isAdmin;
    /**
     * Participant cap.
     */
    private Integer maxParticipants;
    /**
     * Tournament display name.
     */
    private String name;
    /**
     * Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
     */
    private Boolean needsAttention;
    /**
     * Current number of participants.
     */
    private Integer participantCount;
    /**
     * URL-friendly tournament identifier.
     */
    private String slug;
    /**
     * Scheduled start (epoch milliseconds).
     */
    private Double startsAt;
    /**
     * Lifecycle status of a tournament.
     */
    private TournamentStatus status;
    /**
     * Last update (epoch milliseconds).
     */
    private Double updatedAt;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentSummary}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentSummary();
    }
    /**
     * Gets the approvalStatus property value. Platform review state, independent of `status`.
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(12);
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getStringValue()); });
        deserializerMap.put("hostType", (n) -> { this.setHostType(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isAdmin", (n) -> { this.setIsAdmin(n.getBooleanValue()); });
        deserializerMap.put("maxParticipants", (n) -> { this.setMaxParticipants(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("needsAttention", (n) -> { this.setNeedsAttention(n.getBooleanValue()); });
        deserializerMap.put("participantCount", (n) -> { this.setParticipantCount(n.getIntegerValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("startsAt", (n) -> { this.setStartsAt(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentStatus::forValue)); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the hostType property value. user, org, or league.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getHostType() {
        return this.hostType;
    }
    /**
     * Gets the id property value. Tournament ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsAdmin() {
        return this.isAdmin;
    }
    /**
     * Gets the maxParticipants property value. Participant cap.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMaxParticipants() {
        return this.maxParticipants;
    }
    /**
     * Gets the name property value. Tournament display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getNeedsAttention() {
        return this.needsAttention;
    }
    /**
     * Gets the participantCount property value. Current number of participants.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getParticipantCount() {
        return this.participantCount;
    }
    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the startsAt property value. Scheduled start (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getStartsAt() {
        return this.startsAt;
    }
    /**
     * Gets the status property value. Lifecycle status of a tournament.
     * @return a {@link TournamentStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the updatedAt property value. Last update (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("approvalStatus", this.getApprovalStatus());
        writer.writeStringValue("hostType", this.getHostType());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isAdmin", this.getIsAdmin());
        writer.writeIntegerValue("maxParticipants", this.getMaxParticipants());
        writer.writeStringValue("name", this.getName());
        writer.writeBooleanValue("needsAttention", this.getNeedsAttention());
        writer.writeIntegerValue("participantCount", this.getParticipantCount());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeDoubleValue("startsAt", this.getStartsAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeDoubleValue("updatedAt", this.getUpdatedAt());
    }
    /**
     * Sets the approvalStatus property value. Platform review state, independent of `status`.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final String value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the hostType property value. user, org, or league.
     * @param value Value to set for the hostType property.
     */
    public void setHostType(@jakarta.annotation.Nullable final String value) {
        this.hostType = value;
    }
    /**
     * Sets the id property value. Tournament ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
     * @param value Value to set for the isAdmin property.
     */
    public void setIsAdmin(@jakarta.annotation.Nullable final Boolean value) {
        this.isAdmin = value;
    }
    /**
     * Sets the maxParticipants property value. Participant cap.
     * @param value Value to set for the maxParticipants property.
     */
    public void setMaxParticipants(@jakarta.annotation.Nullable final Integer value) {
        this.maxParticipants = value;
    }
    /**
     * Sets the name property value. Tournament display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
     * @param value Value to set for the needsAttention property.
     */
    public void setNeedsAttention(@jakarta.annotation.Nullable final Boolean value) {
        this.needsAttention = value;
    }
    /**
     * Sets the participantCount property value. Current number of participants.
     * @param value Value to set for the participantCount property.
     */
    public void setParticipantCount(@jakarta.annotation.Nullable final Integer value) {
        this.participantCount = value;
    }
    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the startsAt property value. Scheduled start (epoch milliseconds).
     * @param value Value to set for the startsAt property.
     */
    public void setStartsAt(@jakarta.annotation.Nullable final Double value) {
        this.startsAt = value;
    }
    /**
     * Sets the status property value. Lifecycle status of a tournament.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentStatus value) {
        this.status = value;
    }
    /**
     * Sets the updatedAt property value. Last update (epoch milliseconds).
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final Double value) {
        this.updatedAt = value;
    }
}

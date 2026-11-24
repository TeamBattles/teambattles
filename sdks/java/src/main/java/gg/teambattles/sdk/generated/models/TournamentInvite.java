package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A team invite issued by the organizer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentInvite implements Parsable {
    /**
     * Invite time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Invite ID.
     */
    private String id;
    /**
     * Organizer who sent the invite.
     */
    private String invitedByUserId;
    /**
     * Response time (epoch milliseconds). Absent while PENDING.
     */
    private Double respondedAt;
    /**
     * State of a tournament team invite.
     */
    private TournamentInviteStatus status;
    /**
     * Invited team&apos;s avatar URL.
     */
    private String teamAvatarUrl;
    /**
     * Invited team&apos;s ID.
     */
    private String teamId;
    /**
     * Invited team&apos;s display name.
     */
    private String teamName;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentInvite}
     */
    @jakarta.annotation.Nonnull
    public static TournamentInvite createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentInvite();
    }
    /**
     * Gets the createdAt property value. Invite time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("invitedByUserId", (n) -> { this.setInvitedByUserId(n.getStringValue()); });
        deserializerMap.put("respondedAt", (n) -> { this.setRespondedAt(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentInviteStatus::forValue)); });
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamName", (n) -> { this.setTeamName(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Invite ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the invitedByUserId property value. Organizer who sent the invite.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getInvitedByUserId() {
        return this.invitedByUserId;
    }
    /**
     * Gets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getRespondedAt() {
        return this.respondedAt;
    }
    /**
     * Gets the status property value. State of a tournament team invite.
     * @return a {@link TournamentInviteStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentInviteStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the teamAvatarUrl property value. Invited team&apos;s avatar URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamAvatarUrl() {
        return this.teamAvatarUrl;
    }
    /**
     * Gets the teamId property value. Invited team&apos;s ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the teamName property value. Invited team&apos;s display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamName() {
        return this.teamName;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("invitedByUserId", this.getInvitedByUserId());
        writer.writeDoubleValue("respondedAt", this.getRespondedAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeStringValue("teamAvatarUrl", this.getTeamAvatarUrl());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("teamName", this.getTeamName());
    }
    /**
     * Sets the createdAt property value. Invite time (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. Invite ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the invitedByUserId property value. Organizer who sent the invite.
     * @param value Value to set for the invitedByUserId property.
     */
    public void setInvitedByUserId(@jakarta.annotation.Nullable final String value) {
        this.invitedByUserId = value;
    }
    /**
     * Sets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
     * @param value Value to set for the respondedAt property.
     */
    public void setRespondedAt(@jakarta.annotation.Nullable final Double value) {
        this.respondedAt = value;
    }
    /**
     * Sets the status property value. State of a tournament team invite.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentInviteStatus value) {
        this.status = value;
    }
    /**
     * Sets the teamAvatarUrl property value. Invited team&apos;s avatar URL.
     * @param value Value to set for the teamAvatarUrl property.
     */
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.teamAvatarUrl = value;
    }
    /**
     * Sets the teamId property value. Invited team&apos;s ID.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the teamName property value. Invited team&apos;s display name.
     * @param value Value to set for the teamName property.
     */
    public void setTeamName(@jakarta.annotation.Nullable final String value) {
        this.teamName = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * An organizer invite addressed to a team the caller may act for. Only invites for ACTABLE teams appear - an invite to a team the caller merely belongs to is the captain&apos;s to answer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentInvite implements Parsable {
    /**
     * Invite time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Organizer who sent the invite.
     */
    private String invitedByUserId;
    /**
     * Invite ID. Required by the invite-response endpoint.
     */
    private String inviteId;
    /**
     * Response time (epoch milliseconds). Absent while PENDING.
     */
    private Double respondedAt;
    /**
     * State of a tournament team invite.
     */
    private TournamentInviteStatus status;
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
     * @return a {@link MyTournamentInvite}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentInvite createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentInvite();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("invitedByUserId", (n) -> { this.setInvitedByUserId(n.getStringValue()); });
        deserializerMap.put("inviteId", (n) -> { this.setInviteId(n.getStringValue()); });
        deserializerMap.put("respondedAt", (n) -> { this.setRespondedAt(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentInviteStatus::forValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamName", (n) -> { this.setTeamName(n.getStringValue()); });
        return deserializerMap;
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
     * Gets the inviteId property value. Invite ID. Required by the invite-response endpoint.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getInviteId() {
        return this.inviteId;
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
        writer.writeStringValue("invitedByUserId", this.getInvitedByUserId());
        writer.writeStringValue("inviteId", this.getInviteId());
        writer.writeDoubleValue("respondedAt", this.getRespondedAt());
        writer.writeEnumValue("status", this.getStatus());
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
     * Sets the invitedByUserId property value. Organizer who sent the invite.
     * @param value Value to set for the invitedByUserId property.
     */
    public void setInvitedByUserId(@jakarta.annotation.Nullable final String value) {
        this.invitedByUserId = value;
    }
    /**
     * Sets the inviteId property value. Invite ID. Required by the invite-response endpoint.
     * @param value Value to set for the inviteId property.
     */
    public void setInviteId(@jakarta.annotation.Nullable final String value) {
        this.inviteId = value;
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

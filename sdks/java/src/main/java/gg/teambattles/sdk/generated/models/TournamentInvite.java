package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
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
    private TournamentInviteTeamAvatarUrl teamAvatarUrl;
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
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getObjectValue(TournamentInviteTeamAvatarUrl::createFromDiscriminatorValue)); });
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
     * @return a {@link TournamentInviteTeamAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentInviteTeamAvatarUrl getTeamAvatarUrl() {
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
        writer.writeObjectValue("teamAvatarUrl", this.getTeamAvatarUrl());
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
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final TournamentInviteTeamAvatarUrl value) {
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
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentInviteTeamAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentInviteTeamAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentInviteTeamAvatarUrlMember1}
         */
        private TournamentInviteTeamAvatarUrlMember1 tournamentInviteTeamAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentInviteTeamAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentInviteTeamAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentInviteTeamAvatarUrl result = new TournamentInviteTeamAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentInviteTeamAvatarUrlMember1(new TournamentInviteTeamAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentInviteTeamAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentInviteTeamAvatarUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentInviteTeamAvatarUrlMember1}
         * @return a {@link TournamentInviteTeamAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentInviteTeamAvatarUrlMember1 getTournamentInviteTeamAvatarUrlMember1() {
            return this.tournamentInviteTeamAvatarUrlMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTournamentInviteTeamAvatarUrlMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TournamentInvite_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentInviteTeamAvatarUrlMember1}
         * @param value Value to set for the TournamentInvite_teamAvatarUrlMember1 property.
         */
        public void setTournamentInviteTeamAvatarUrlMember1(@jakarta.annotation.Nullable final TournamentInviteTeamAvatarUrlMember1 value) {
            this.tournamentInviteTeamAvatarUrlMember1 = value;
        }
    }
}

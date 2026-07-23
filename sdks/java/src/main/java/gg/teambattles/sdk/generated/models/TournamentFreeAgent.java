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
 * An available free agent.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentFreeAgent implements Parsable {
    /**
     * Avatar image URL.
     */
    private TournamentFreeAgentAvatarUrl avatarUrl;
    /**
     * Pool join time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Free-agent row ID.
     */
    private String id;
    /**
     * Display name.
     */
    private String name;
    /**
     * Free-text note the agent supplied.
     */
    private String note;
    /**
     * User ID of the free agent.
     */
    private String userId;
    /**
     * Username.
     */
    private String username;
    /**
     * PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
     */
    private TournamentFreeAgentViewerOfferStatus viewerOfferStatus;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentFreeAgent}
     */
    @jakarta.annotation.Nonnull
    public static TournamentFreeAgent createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentFreeAgent();
    }
    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return a {@link TournamentFreeAgentAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentFreeAgentAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the createdAt property value. Pool join time (epoch milliseconds).
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
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(TournamentFreeAgentAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("note", (n) -> { this.setNote(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
        deserializerMap.put("viewerOfferStatus", (n) -> { this.setViewerOfferStatus(n.getObjectValue(TournamentFreeAgentViewerOfferStatus::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Free-agent row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the name property value. Display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the note property value. Free-text note the agent supplied.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNote() {
        return this.note;
    }
    /**
     * Gets the userId property value. User ID of the free agent.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Gets the username property value. Username.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
        return this.username;
    }
    /**
     * Gets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
     * @return a {@link TournamentFreeAgentViewerOfferStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentFreeAgentViewerOfferStatus getViewerOfferStatus() {
        return this.viewerOfferStatus;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("note", this.getNote());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeStringValue("username", this.getUsername());
        writer.writeObjectValue("viewerOfferStatus", this.getViewerOfferStatus());
    }
    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final TournamentFreeAgentAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the createdAt property value. Pool join time (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. Free-agent row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the note property value. Free-text note the agent supplied.
     * @param value Value to set for the note property.
     */
    public void setNote(@jakarta.annotation.Nullable final String value) {
        this.note = value;
    }
    /**
     * Sets the userId property value. User ID of the free agent.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
    /**
     * Sets the username property value. Username.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
    /**
     * Sets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
     * @param value Value to set for the viewerOfferStatus property.
     */
    public void setViewerOfferStatus(@jakarta.annotation.Nullable final TournamentFreeAgentViewerOfferStatus value) {
        this.viewerOfferStatus = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentFreeAgentAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentFreeAgentAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentFreeAgentAvatarUrlMember1}
         */
        private TournamentFreeAgentAvatarUrlMember1 tournamentFreeAgentAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentFreeAgentAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentFreeAgentAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentFreeAgentAvatarUrl result = new TournamentFreeAgentAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentFreeAgentAvatarUrlMember1(new TournamentFreeAgentAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentFreeAgentAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentFreeAgentAvatarUrlMember1());
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
         * Gets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type {@link TournamentFreeAgentAvatarUrlMember1}
         * @return a {@link TournamentFreeAgentAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentFreeAgentAvatarUrlMember1 getTournamentFreeAgentAvatarUrlMember1() {
            return this.tournamentFreeAgentAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentFreeAgentAvatarUrlMember1());
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
         * Sets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type {@link TournamentFreeAgentAvatarUrlMember1}
         * @param value Value to set for the TournamentFreeAgent_avatarUrlMember1 property.
         */
        public void setTournamentFreeAgentAvatarUrlMember1(@jakarta.annotation.Nullable final TournamentFreeAgentAvatarUrlMember1 value) {
            this.tournamentFreeAgentAvatarUrlMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentFreeAgentViewerOfferStatusMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentFreeAgentViewerOfferStatus implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentFreeAgentViewerOfferStatusMember1}
         */
        private TournamentFreeAgentViewerOfferStatusMember1 tournamentFreeAgentViewerOfferStatusMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentFreeAgentViewerOfferStatus}
         */
        @jakarta.annotation.Nonnull
        public static TournamentFreeAgentViewerOfferStatus createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentFreeAgentViewerOfferStatus result = new TournamentFreeAgentViewerOfferStatus();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentFreeAgentViewerOfferStatusMember1(new TournamentFreeAgentViewerOfferStatusMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentFreeAgentViewerOfferStatusMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentFreeAgentViewerOfferStatusMember1());
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
         * Gets the TournamentFreeAgent_viewerOfferStatusMember1 property value. Composed type representation for type {@link TournamentFreeAgentViewerOfferStatusMember1}
         * @return a {@link TournamentFreeAgentViewerOfferStatusMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentFreeAgentViewerOfferStatusMember1 getTournamentFreeAgentViewerOfferStatusMember1() {
            return this.tournamentFreeAgentViewerOfferStatusMember1;
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
                writer.writeObjectValue(null, this.getTournamentFreeAgentViewerOfferStatusMember1());
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
         * Sets the TournamentFreeAgent_viewerOfferStatusMember1 property value. Composed type representation for type {@link TournamentFreeAgentViewerOfferStatusMember1}
         * @param value Value to set for the TournamentFreeAgent_viewerOfferStatusMember1 property.
         */
        public void setTournamentFreeAgentViewerOfferStatusMember1(@jakarta.annotation.Nullable final TournamentFreeAgentViewerOfferStatusMember1 value) {
            this.tournamentFreeAgentViewerOfferStatusMember1 = value;
        }
    }
}

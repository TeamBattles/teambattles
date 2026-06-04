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
 * Channel-specific Twitch chat badges.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchChannelBadges implements Parsable {
    /**
     * Channel-specific Twitch chat badge sets.
     */
    private java.util.List<TwitchBadgeSet> badges;
    /**
     * Resolved broadcaster (channel) id.
     */
    private TwitchChannelBadgesBroadcasterId broadcasterId;
    /**
     * Resolved broadcaster display name or login.
     */
    private TwitchChannelBadgesBroadcasterName broadcasterName;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchChannelBadges}
     */
    @jakarta.annotation.Nonnull
    public static TwitchChannelBadges createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchChannelBadges();
    }
    /**
     * Gets the badges property value. Channel-specific Twitch chat badge sets.
     * @return a {@link java.util.List<TwitchBadgeSet>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TwitchBadgeSet> getBadges() {
        return this.badges;
    }
    /**
     * Gets the broadcaster_id property value. Resolved broadcaster (channel) id.
     * @return a {@link TwitchChannelBadgesBroadcasterId}
     */
    @jakarta.annotation.Nullable
    public TwitchChannelBadgesBroadcasterId getBroadcasterId() {
        return this.broadcasterId;
    }
    /**
     * Gets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @return a {@link TwitchChannelBadgesBroadcasterName}
     */
    @jakarta.annotation.Nullable
    public TwitchChannelBadgesBroadcasterName getBroadcasterName() {
        return this.broadcasterName;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("badges", (n) -> { this.setBadges(n.getCollectionOfObjectValues(TwitchBadgeSet::createFromDiscriminatorValue)); });
        deserializerMap.put("broadcaster_id", (n) -> { this.setBroadcasterId(n.getObjectValue(TwitchChannelBadgesBroadcasterId::createFromDiscriminatorValue)); });
        deserializerMap.put("broadcaster_name", (n) -> { this.setBroadcasterName(n.getObjectValue(TwitchChannelBadgesBroadcasterName::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        writer.writeCollectionOfObjectValues("badges", this.getBadges());
        writer.writeObjectValue("broadcaster_id", this.getBroadcasterId());
        writer.writeObjectValue("broadcaster_name", this.getBroadcasterName());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the badges property value. Channel-specific Twitch chat badge sets.
     * @param value Value to set for the badges property.
     */
    public void setBadges(@jakarta.annotation.Nullable final java.util.List<TwitchBadgeSet> value) {
        this.badges = value;
    }
    /**
     * Sets the broadcaster_id property value. Resolved broadcaster (channel) id.
     * @param value Value to set for the broadcaster_id property.
     */
    public void setBroadcasterId(@jakarta.annotation.Nullable final TwitchChannelBadgesBroadcasterId value) {
        this.broadcasterId = value;
    }
    /**
     * Sets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @param value Value to set for the broadcaster_name property.
     */
    public void setBroadcasterName(@jakarta.annotation.Nullable final TwitchChannelBadgesBroadcasterName value) {
        this.broadcasterName = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchChannelBadgesBroadcasterIdMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchChannelBadgesBroadcasterId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchChannelBadgesBroadcasterIdMember1}
         */
        private TwitchChannelBadgesBroadcasterIdMember1 twitchChannelBadgesBroadcasterIdMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchChannelBadgesBroadcasterId}
         */
        @jakarta.annotation.Nonnull
        public static TwitchChannelBadgesBroadcasterId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchChannelBadgesBroadcasterId result = new TwitchChannelBadgesBroadcasterId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchChannelBadgesBroadcasterIdMember1(new TwitchChannelBadgesBroadcasterIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchChannelBadgesBroadcasterIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchChannelBadgesBroadcasterIdMember1());
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
         * Gets the TwitchChannelBadges_broadcaster_idMember1 property value. Composed type representation for type {@link TwitchChannelBadgesBroadcasterIdMember1}
         * @return a {@link TwitchChannelBadgesBroadcasterIdMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchChannelBadgesBroadcasterIdMember1 getTwitchChannelBadgesBroadcasterIdMember1() {
            return this.twitchChannelBadgesBroadcasterIdMember1;
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
                writer.writeObjectValue(null, this.getTwitchChannelBadgesBroadcasterIdMember1());
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
         * Sets the TwitchChannelBadges_broadcaster_idMember1 property value. Composed type representation for type {@link TwitchChannelBadgesBroadcasterIdMember1}
         * @param value Value to set for the TwitchChannelBadges_broadcaster_idMember1 property.
         */
        public void setTwitchChannelBadgesBroadcasterIdMember1(@jakarta.annotation.Nullable final TwitchChannelBadgesBroadcasterIdMember1 value) {
            this.twitchChannelBadgesBroadcasterIdMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchChannelBadgesBroadcasterNameMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchChannelBadgesBroadcasterName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchChannelBadgesBroadcasterNameMember1}
         */
        private TwitchChannelBadgesBroadcasterNameMember1 twitchChannelBadgesBroadcasterNameMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchChannelBadgesBroadcasterName}
         */
        @jakarta.annotation.Nonnull
        public static TwitchChannelBadgesBroadcasterName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchChannelBadgesBroadcasterName result = new TwitchChannelBadgesBroadcasterName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchChannelBadgesBroadcasterNameMember1(new TwitchChannelBadgesBroadcasterNameMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchChannelBadgesBroadcasterNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchChannelBadgesBroadcasterNameMember1());
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
         * Gets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type {@link TwitchChannelBadgesBroadcasterNameMember1}
         * @return a {@link TwitchChannelBadgesBroadcasterNameMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchChannelBadgesBroadcasterNameMember1 getTwitchChannelBadgesBroadcasterNameMember1() {
            return this.twitchChannelBadgesBroadcasterNameMember1;
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
                writer.writeObjectValue(null, this.getTwitchChannelBadgesBroadcasterNameMember1());
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
         * Sets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type {@link TwitchChannelBadgesBroadcasterNameMember1}
         * @param value Value to set for the TwitchChannelBadges_broadcaster_nameMember1 property.
         */
        public void setTwitchChannelBadgesBroadcasterNameMember1(@jakarta.annotation.Nullable final TwitchChannelBadgesBroadcasterNameMember1 value) {
            this.twitchChannelBadgesBroadcasterNameMember1 = value;
        }
    }
}

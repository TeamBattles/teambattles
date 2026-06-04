package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Global Twitch chat badges.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchGlobalBadges implements Parsable {
    /**
     * Global Twitch chat badge sets.
     */
    private java.util.List<TwitchBadgeSet> badges;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchGlobalBadges}
     */
    @jakarta.annotation.Nonnull
    public static TwitchGlobalBadges createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchGlobalBadges();
    }
    /**
     * Gets the badges property value. Global Twitch chat badge sets.
     * @return a {@link java.util.List<TwitchBadgeSet>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TwitchBadgeSet> getBadges() {
        return this.badges;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("badges", (n) -> { this.setBadges(n.getCollectionOfObjectValues(TwitchBadgeSet::createFromDiscriminatorValue)); });
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
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the badges property value. Global Twitch chat badge sets.
     * @param value Value to set for the badges property.
     */
    public void setBadges(@jakarta.annotation.Nullable final java.util.List<TwitchBadgeSet> value) {
        this.badges = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

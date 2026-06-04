package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A set of related Twitch chat badge versions.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchBadgeSet implements Parsable {
    /**
     * Badge set identifier (e.g. subscriber, moderator).
     */
    private String setId;
    /**
     * Available versions within this badge set.
     */
    private java.util.List<TwitchBadgeVersion> versions;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchBadgeSet}
     */
    @jakarta.annotation.Nonnull
    public static TwitchBadgeSet createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchBadgeSet();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("set_id", (n) -> { this.setSetId(n.getStringValue()); });
        deserializerMap.put("versions", (n) -> { this.setVersions(n.getCollectionOfObjectValues(TwitchBadgeVersion::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSetId() {
        return this.setId;
    }
    /**
     * Gets the versions property value. Available versions within this badge set.
     * @return a {@link java.util.List<TwitchBadgeVersion>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TwitchBadgeVersion> getVersions() {
        return this.versions;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("set_id", this.getSetId());
        writer.writeCollectionOfObjectValues("versions", this.getVersions());
    }
    /**
     * Sets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
     * @param value Value to set for the set_id property.
     */
    public void setSetId(@jakarta.annotation.Nullable final String value) {
        this.setId = value;
    }
    /**
     * Sets the versions property value. Available versions within this badge set.
     * @param value Value to set for the versions property.
     */
    public void setVersions(@jakarta.annotation.Nullable final java.util.List<TwitchBadgeVersion> value) {
        this.versions = value;
    }
}

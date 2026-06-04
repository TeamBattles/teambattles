package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Penalties and cooldowns for a league.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeaguePenalties implements Parsable {
    /**
     * Enriched member cooldown records (empty when type is penalties).
     */
    private java.util.List<LeaguePenaltiesCooldowns> cooldowns;
    /**
     * Combined number of penalties and cooldowns returned.
     */
    private Integer count;
    /**
     * Enriched penalty records (empty when type is cooldowns).
     */
    private java.util.List<LeaguePenaltiesPenalties> penalties;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeaguePenalties}
     */
    @jakarta.annotation.Nonnull
    public static LeaguePenalties createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeaguePenalties();
    }
    /**
     * Gets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
     * @return a {@link java.util.List<LeaguePenaltiesCooldowns>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeaguePenaltiesCooldowns> getCooldowns() {
        return this.cooldowns;
    }
    /**
     * Gets the count property value. Combined number of penalties and cooldowns returned.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("cooldowns", (n) -> { this.setCooldowns(n.getCollectionOfObjectValues(LeaguePenaltiesCooldowns::createFromDiscriminatorValue)); });
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("penalties", (n) -> { this.setPenalties(n.getCollectionOfObjectValues(LeaguePenaltiesPenalties::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the penalties property value. Enriched penalty records (empty when type is cooldowns).
     * @return a {@link java.util.List<LeaguePenaltiesPenalties>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeaguePenaltiesPenalties> getPenalties() {
        return this.penalties;
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
        writer.writeCollectionOfObjectValues("cooldowns", this.getCooldowns());
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("penalties", this.getPenalties());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the cooldowns property value. Enriched member cooldown records (empty when type is penalties).
     * @param value Value to set for the cooldowns property.
     */
    public void setCooldowns(@jakarta.annotation.Nullable final java.util.List<LeaguePenaltiesCooldowns> value) {
        this.cooldowns = value;
    }
    /**
     * Sets the count property value. Combined number of penalties and cooldowns returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the penalties property value. Enriched penalty records (empty when type is cooldowns).
     * @param value Value to set for the penalties property.
     */
    public void setPenalties(@jakarta.annotation.Nullable final java.util.List<LeaguePenaltiesPenalties> value) {
        this.penalties = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Team bans for a league.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueBans implements Parsable {
    /**
     * Enriched team ban records with computed status.
     */
    private java.util.List<LeagueBansBans> bans;
    /**
     * Number of bans returned.
     */
    private Integer count;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueBans}
     */
    @jakarta.annotation.Nonnull
    public static LeagueBans createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueBans();
    }
    /**
     * Gets the bans property value. Enriched team ban records with computed status.
     * @return a {@link java.util.List<LeagueBansBans>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueBansBans> getBans() {
        return this.bans;
    }
    /**
     * Gets the count property value. Number of bans returned.
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("bans", (n) -> { this.setBans(n.getCollectionOfObjectValues(LeagueBansBans::createFromDiscriminatorValue)); });
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
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
        writer.writeCollectionOfObjectValues("bans", this.getBans());
        writer.writeIntegerValue("count", this.getCount());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the bans property value. Enriched team ban records with computed status.
     * @param value Value to set for the bans property.
     */
    public void setBans(@jakarta.annotation.Nullable final java.util.List<LeagueBansBans> value) {
        this.bans = value;
    }
    /**
     * Sets the count property value. Number of bans returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

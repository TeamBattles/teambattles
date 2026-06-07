package gg.teambattles.sdk.generated.users.item.stats;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiUserStats;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing stats plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StatsGetResponse implements Parsable {
    /**
     * API-safe aggregate user stats.
     */
    private ApiUserStats stats;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link StatsGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static StatsGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new StatsGetResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("stats", (n) -> { this.setStats(n.getObjectValue(ApiUserStats::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the stats property value. API-safe aggregate user stats.
     * @return a {@link ApiUserStats}
     */
    @jakarta.annotation.Nullable
    public ApiUserStats getStats() {
        return this.stats;
    }
    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
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
        writer.writeObjectValue("stats", this.getStats());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the stats property value. API-safe aggregate user stats.
     * @param value Value to set for the stats property.
     */
    public void setStats(@jakarta.annotation.Nullable final ApiUserStats value) {
        this.stats = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

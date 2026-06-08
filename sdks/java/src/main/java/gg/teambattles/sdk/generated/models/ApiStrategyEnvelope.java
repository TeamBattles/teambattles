package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Strategy plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStrategyEnvelope implements Parsable {
    /**
     * API-safe shareable strategy.
     */
    private ApiStrategy strategy;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStrategyEnvelope}
     */
    @jakarta.annotation.Nonnull
    public static ApiStrategyEnvelope createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStrategyEnvelope();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("strategy", (n) -> { this.setStrategy(n.getObjectValue(ApiStrategy::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the strategy property value. API-safe shareable strategy.
     * @return a {@link ApiStrategy}
     */
    @jakarta.annotation.Nullable
    public ApiStrategy getStrategy() {
        return this.strategy;
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
        writer.writeObjectValue("strategy", this.getStrategy());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the strategy property value. API-safe shareable strategy.
     * @param value Value to set for the strategy property.
     */
    public void setStrategy(@jakarta.annotation.Nullable final ApiStrategy value) {
        this.strategy = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

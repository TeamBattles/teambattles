package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Stream status plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStreamStatusEnvelope implements Parsable {
    /**
     * API-safe live-stream status for a user.
     */
    private ApiStreamStatus stream;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStreamStatusEnvelope}
     */
    @jakarta.annotation.Nonnull
    public static ApiStreamStatusEnvelope createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStreamStatusEnvelope();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("stream", (n) -> { this.setStream(n.getObjectValue(ApiStreamStatus::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the stream property value. API-safe live-stream status for a user.
     * @return a {@link ApiStreamStatus}
     */
    @jakarta.annotation.Nullable
    public ApiStreamStatus getStream() {
        return this.stream;
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
        writer.writeObjectValue("stream", this.getStream());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the stream property value. API-safe live-stream status for a user.
     * @param value Value to set for the stream property.
     */
    public void setStream(@jakarta.annotation.Nullable final ApiStreamStatus value) {
        this.stream = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

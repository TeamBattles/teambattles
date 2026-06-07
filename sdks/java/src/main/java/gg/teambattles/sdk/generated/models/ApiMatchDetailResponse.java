package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * SP-2 match detail response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMatchDetailResponse implements Parsable {
    /**
     * Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
     */
    private ApiMatchDetail match;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMatchDetailResponse}
     */
    @jakarta.annotation.Nonnull
    public static ApiMatchDetailResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMatchDetailResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("match", (n) -> { this.setMatch(n.getObjectValue(ApiMatchDetail::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the match property value. Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
     * @return a {@link ApiMatchDetail}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetail getMatch() {
        return this.match;
    }
    /**
     * Gets the timestamp property value. The timestamp property
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
        writer.writeObjectValue("match", this.getMatch());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the match property value. Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
     * @param value Value to set for the match property.
     */
    public void setMatch(@jakarta.annotation.Nullable final ApiMatchDetail value) {
        this.match = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

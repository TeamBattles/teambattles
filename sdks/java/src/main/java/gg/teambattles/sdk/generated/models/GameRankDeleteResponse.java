package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of deleting a game rank.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameRankDeleteResponse implements Parsable {
    /**
     * True when a rank was removed; false when none existed (no-op).
     */
    private Boolean deleted;
    /**
     * ISO 8601 response timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameRankDeleteResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameRankDeleteResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameRankDeleteResponse();
    }
    /**
     * Gets the deleted property value. True when a rank was removed; false when none existed (no-op).
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getDeleted() {
        return this.deleted;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("deleted", (n) -> { this.setDeleted(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. ISO 8601 response timestamp.
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
        writer.writeBooleanValue("deleted", this.getDeleted());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the deleted property value. True when a rank was removed; false when none existed (no-op).
     * @param value Value to set for the deleted property.
     */
    public void setDeleted(@jakarta.annotation.Nullable final Boolean value) {
        this.deleted = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 response timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

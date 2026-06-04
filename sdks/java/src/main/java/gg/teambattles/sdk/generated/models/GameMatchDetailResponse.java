package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope for GET /game/matches/{matchId}: the match plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameMatchDetailResponse implements Parsable {
    /**
     * Detailed match payload returned inside the game-developer match-detail response.
     */
    private GameMatchDetail match;
    /**
     * Server response time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameMatchDetailResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameMatchDetailResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameMatchDetailResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("match", (n) -> { this.setMatch(n.getObjectValue(GameMatchDetail::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the match property value. Detailed match payload returned inside the game-developer match-detail response.
     * @return a {@link GameMatchDetail}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetail getMatch() {
        return this.match;
    }
    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
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
     * Sets the match property value. Detailed match payload returned inside the game-developer match-detail response.
     * @param value Value to set for the match property.
     */
    public void setMatch(@jakarta.annotation.Nullable final GameMatchDetail value) {
        this.match = value;
    }
    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

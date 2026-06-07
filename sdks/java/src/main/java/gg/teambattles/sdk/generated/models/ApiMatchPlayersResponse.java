package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * SP-2 match player rows response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMatchPlayersResponse implements Parsable {
    /**
     * The matchId property
     */
    private String matchId;
    /**
     * The players property
     */
    private java.util.List<ApiMatchPlayer> players;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMatchPlayersResponse}
     */
    @jakarta.annotation.Nonnull
    public static ApiMatchPlayersResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMatchPlayersResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("matchId", (n) -> { this.setMatchId(n.getStringValue()); });
        deserializerMap.put("players", (n) -> { this.setPlayers(n.getCollectionOfObjectValues(ApiMatchPlayer::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the matchId property value. The matchId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMatchId() {
        return this.matchId;
    }
    /**
     * Gets the players property value. The players property
     * @return a {@link java.util.List<ApiMatchPlayer>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiMatchPlayer> getPlayers() {
        return this.players;
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
        writer.writeStringValue("matchId", this.getMatchId());
        writer.writeCollectionOfObjectValues("players", this.getPlayers());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the matchId property value. The matchId property
     * @param value Value to set for the matchId property.
     */
    public void setMatchId(@jakarta.annotation.Nullable final String value) {
        this.matchId = value;
    }
    /**
     * Sets the players property value. The players property
     * @param value Value to set for the players property.
     */
    public void setPlayers(@jakarta.annotation.Nullable final java.util.List<ApiMatchPlayer> value) {
        this.players = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

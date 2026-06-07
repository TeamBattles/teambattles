package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Player leaderboard response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class PlayerLeaderboardResponse implements Parsable {
    /**
     * The players property
     */
    private java.util.List<PlayerLeaderboardEntry> players;
    /**
     * Supported leaderboard sort field.
     */
    private LeaderboardSortBy sortBy;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link PlayerLeaderboardResponse}
     */
    @jakarta.annotation.Nonnull
    public static PlayerLeaderboardResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new PlayerLeaderboardResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("players", (n) -> { this.setPlayers(n.getCollectionOfObjectValues(PlayerLeaderboardEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("sortBy", (n) -> { this.setSortBy(n.getEnumValue(LeaderboardSortBy::forValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the players property value. The players property
     * @return a {@link java.util.List<PlayerLeaderboardEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<PlayerLeaderboardEntry> getPlayers() {
        return this.players;
    }
    /**
     * Gets the sortBy property value. Supported leaderboard sort field.
     * @return a {@link LeaderboardSortBy}
     */
    @jakarta.annotation.Nullable
    public LeaderboardSortBy getSortBy() {
        return this.sortBy;
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
        writer.writeCollectionOfObjectValues("players", this.getPlayers());
        writer.writeEnumValue("sortBy", this.getSortBy());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the players property value. The players property
     * @param value Value to set for the players property.
     */
    public void setPlayers(@jakarta.annotation.Nullable final java.util.List<PlayerLeaderboardEntry> value) {
        this.players = value;
    }
    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param value Value to set for the sortBy property.
     */
    public void setSortBy(@jakarta.annotation.Nullable final LeaderboardSortBy value) {
        this.sortBy = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

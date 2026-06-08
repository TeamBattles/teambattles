package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The API key owner&apos;s game ranks.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameRankListResponse implements Parsable {
    /**
     * The count property
     */
    private Integer count;
    /**
     * The gameRanks property
     */
    private java.util.List<ApiGameRank> gameRanks;
    /**
     * ISO 8601 response timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameRankListResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameRankListResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameRankListResponse();
    }
    /**
     * Gets the count property value. The count property
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
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("gameRanks", (n) -> { this.setGameRanks(n.getCollectionOfObjectValues(ApiGameRank::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameRanks property value. The gameRanks property
     * @return a {@link java.util.List<ApiGameRank>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGameRank> getGameRanks() {
        return this.gameRanks;
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
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("gameRanks", this.getGameRanks());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the gameRanks property value. The gameRanks property
     * @param value Value to set for the gameRanks property.
     */
    public void setGameRanks(@jakarta.annotation.Nullable final java.util.List<ApiGameRank> value) {
        this.gameRanks = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 response timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * All map scores for a match with a series summary.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MapScores implements Parsable {
    /**
     * The scores property
     */
    private java.util.List<MapScoreItem> scores;
    /**
     * The seriesScore property
     */
    private MapScoresSeriesScore seriesScore;
    /**
     * Response timestamp (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MapScores}
     */
    @jakarta.annotation.Nonnull
    public static MapScores createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MapScores();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("scores", (n) -> { this.setScores(n.getCollectionOfObjectValues(MapScoreItem::createFromDiscriminatorValue)); });
        deserializerMap.put("seriesScore", (n) -> { this.setSeriesScore(n.getObjectValue(MapScoresSeriesScore::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the scores property value. The scores property
     * @return a {@link java.util.List<MapScoreItem>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MapScoreItem> getScores() {
        return this.scores;
    }
    /**
     * Gets the seriesScore property value. The seriesScore property
     * @return a {@link MapScoresSeriesScore}
     */
    @jakarta.annotation.Nullable
    public MapScoresSeriesScore getSeriesScore() {
        return this.seriesScore;
    }
    /**
     * Gets the timestamp property value. Response timestamp (ISO 8601).
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
        writer.writeCollectionOfObjectValues("scores", this.getScores());
        writer.writeObjectValue("seriesScore", this.getSeriesScore());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the scores property value. The scores property
     * @param value Value to set for the scores property.
     */
    public void setScores(@jakarta.annotation.Nullable final java.util.List<MapScoreItem> value) {
        this.scores = value;
    }
    /**
     * Sets the seriesScore property value. The seriesScore property
     * @param value Value to set for the seriesScore property.
     */
    public void setSeriesScore(@jakarta.annotation.Nullable final MapScoresSeriesScore value) {
        this.seriesScore = value;
    }
    /**
     * Sets the timestamp property value. Response timestamp (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

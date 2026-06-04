package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * All map scores for a match plus the aggregate series tally.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameScoresResponse implements Parsable {
    /**
     * All recorded map scores for the match.
     */
    private java.util.List<GameScore> scores;
    /**
     * Aggregate map-win tally across the series.
     */
    private GameSeriesScore seriesScore;
    /**
     * Server response time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameScoresResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameScoresResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameScoresResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("scores", (n) -> { this.setScores(n.getCollectionOfObjectValues(GameScore::createFromDiscriminatorValue)); });
        deserializerMap.put("seriesScore", (n) -> { this.setSeriesScore(n.getObjectValue(GameSeriesScore::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the scores property value. All recorded map scores for the match.
     * @return a {@link java.util.List<GameScore>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<GameScore> getScores() {
        return this.scores;
    }
    /**
     * Gets the seriesScore property value. Aggregate map-win tally across the series.
     * @return a {@link GameSeriesScore}
     */
    @jakarta.annotation.Nullable
    public GameSeriesScore getSeriesScore() {
        return this.seriesScore;
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
        writer.writeCollectionOfObjectValues("scores", this.getScores());
        writer.writeObjectValue("seriesScore", this.getSeriesScore());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the scores property value. All recorded map scores for the match.
     * @param value Value to set for the scores property.
     */
    public void setScores(@jakarta.annotation.Nullable final java.util.List<GameScore> value) {
        this.scores = value;
    }
    /**
     * Sets the seriesScore property value. Aggregate map-win tally across the series.
     * @param value Value to set for the seriesScore property.
     */
    public void setSeriesScore(@jakarta.annotation.Nullable final GameSeriesScore value) {
        this.seriesScore = value;
    }
    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

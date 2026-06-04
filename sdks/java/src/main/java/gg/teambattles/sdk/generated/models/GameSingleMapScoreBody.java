package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Request body for submitting a single map&apos;s score (mapIndex comes from the path).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameSingleMapScoreBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Score for the creator team (non-negative).
     */
    private Double creatorTeamScore;
    /**
     * Identifier of the map that was played.
     */
    private String mapId;
    /**
     * Score for the opponent (accepted) team (non-negative).
     */
    private Double opponentTeamScore;
    /**
     * Optional per-player stats keyed by user ID.
     */
    private GameSingleMapScoreBodyPlayerStats playerStats;
    /**
     * Optional screenshot URLs supporting the reported score.
     */
    private java.util.List<String> screenshotUrls;
    /**
     * Instantiates a new {@link GameSingleMapScoreBody} and sets the default values.
     */
    public GameSingleMapScoreBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameSingleMapScoreBody}
     */
    @jakarta.annotation.Nonnull
    public static GameSingleMapScoreBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameSingleMapScoreBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the creatorTeamScore property value. Score for the creator team (non-negative).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatorTeamScore() {
        return this.creatorTeamScore;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getDoubleValue()); });
        deserializerMap.put("mapId", (n) -> { this.setMapId(n.getStringValue()); });
        deserializerMap.put("opponentTeamScore", (n) -> { this.setOpponentTeamScore(n.getDoubleValue()); });
        deserializerMap.put("playerStats", (n) -> { this.setPlayerStats(n.getObjectValue(GameSingleMapScoreBodyPlayerStats::createFromDiscriminatorValue)); });
        deserializerMap.put("screenshotUrls", (n) -> { this.setScreenshotUrls(n.getCollectionOfPrimitiveValues(String.class)); });
        return deserializerMap;
    }
    /**
     * Gets the mapId property value. Identifier of the map that was played.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMapId() {
        return this.mapId;
    }
    /**
     * Gets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getOpponentTeamScore() {
        return this.opponentTeamScore;
    }
    /**
     * Gets the playerStats property value. Optional per-player stats keyed by user ID.
     * @return a {@link GameSingleMapScoreBodyPlayerStats}
     */
    @jakarta.annotation.Nullable
    public GameSingleMapScoreBodyPlayerStats getPlayerStats() {
        return this.playerStats;
    }
    /**
     * Gets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getScreenshotUrls() {
        return this.screenshotUrls;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("creatorTeamScore", this.getCreatorTeamScore());
        writer.writeStringValue("mapId", this.getMapId());
        writer.writeDoubleValue("opponentTeamScore", this.getOpponentTeamScore());
        writer.writeObjectValue("playerStats", this.getPlayerStats());
        writer.writeCollectionOfPrimitiveValues("screenshotUrls", this.getScreenshotUrls());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the creatorTeamScore property value. Score for the creator team (non-negative).
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final Double value) {
        this.creatorTeamScore = value;
    }
    /**
     * Sets the mapId property value. Identifier of the map that was played.
     * @param value Value to set for the mapId property.
     */
    public void setMapId(@jakarta.annotation.Nullable final String value) {
        this.mapId = value;
    }
    /**
     * Sets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
     * @param value Value to set for the opponentTeamScore property.
     */
    public void setOpponentTeamScore(@jakarta.annotation.Nullable final Double value) {
        this.opponentTeamScore = value;
    }
    /**
     * Sets the playerStats property value. Optional per-player stats keyed by user ID.
     * @param value Value to set for the playerStats property.
     */
    public void setPlayerStats(@jakarta.annotation.Nullable final GameSingleMapScoreBodyPlayerStats value) {
        this.playerStats = value;
    }
    /**
     * Sets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
     * @param value Value to set for the screenshotUrls property.
     */
    public void setScreenshotUrls(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.screenshotUrls = value;
    }
}

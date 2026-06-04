package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Request body for submitting or updating player stats for an existing map score.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GamePlayerStatsBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Zero-based index of the map whose stats are being updated.
     */
    private Integer mapIndex;
    /**
     * Per-player stats keyed by user ID. The map score must already exist.
     */
    private GamePlayerStatsBodyPlayerStats playerStats;
    /**
     * Instantiates a new {@link GamePlayerStatsBody} and sets the default values.
     */
    public GamePlayerStatsBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GamePlayerStatsBody}
     */
    @jakarta.annotation.Nonnull
    public static GamePlayerStatsBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GamePlayerStatsBody();
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("playerStats", (n) -> { this.setPlayerStats(n.getObjectValue(GamePlayerStatsBodyPlayerStats::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the mapIndex property value. Zero-based index of the map whose stats are being updated.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
     * @return a {@link GamePlayerStatsBodyPlayerStats}
     */
    @jakarta.annotation.Nullable
    public GamePlayerStatsBodyPlayerStats getPlayerStats() {
        return this.playerStats;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeObjectValue("playerStats", this.getPlayerStats());
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
     * Sets the mapIndex property value. Zero-based index of the map whose stats are being updated.
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
     * @param value Value to set for the playerStats property.
     */
    public void setPlayerStats(@jakarta.annotation.Nullable final GamePlayerStatsBodyPlayerStats value) {
        this.playerStats = value;
    }
}

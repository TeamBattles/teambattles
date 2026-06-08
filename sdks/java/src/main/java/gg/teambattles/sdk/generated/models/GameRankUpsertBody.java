package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Upsert the API key owner&apos;s rank for one (gameId, mode) slot.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameRankUpsertBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Game definition ID to set the rank for (a playable game).
     */
    private GameRankUpsertBodyGameId gameId;
    /**
     * Whether the player is in the Top 250 ladder.
     */
    private Boolean isTop250;
    /**
     * Game mode / playlist the rank applies to (a valid playlist ID).
     */
    private String mode;
    /**
     * Skill rating (integer, 0-100000).
     */
    private Integer sr;
    /**
     * Top 250 ladder position (1-250); only meaningful when isTop250.
     */
    private Integer top250Rank;
    /**
     * Current win streak count (0-99).
     */
    private Integer winstreak;
    /**
     * Instantiates a new {@link GameRankUpsertBody} and sets the default values.
     */
    public GameRankUpsertBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameRankUpsertBody}
     */
    @jakarta.annotation.Nonnull
    public static GameRankUpsertBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameRankUpsertBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getEnumValue(GameRankUpsertBodyGameId::forValue)); });
        deserializerMap.put("isTop250", (n) -> { this.setIsTop250(n.getBooleanValue()); });
        deserializerMap.put("mode", (n) -> { this.setMode(n.getStringValue()); });
        deserializerMap.put("sr", (n) -> { this.setSr(n.getIntegerValue()); });
        deserializerMap.put("top250Rank", (n) -> { this.setTop250Rank(n.getIntegerValue()); });
        deserializerMap.put("winstreak", (n) -> { this.setWinstreak(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game definition ID to set the rank for (a playable game).
     * @return a {@link GameRankUpsertBodyGameId}
     */
    @jakarta.annotation.Nullable
    public GameRankUpsertBodyGameId getGameId() {
        return this.gameId;
    }
    /**
     * Gets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsTop250() {
        return this.isTop250;
    }
    /**
     * Gets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMode() {
        return this.mode;
    }
    /**
     * Gets the sr property value. Skill rating (integer, 0-100000).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getSr() {
        return this.sr;
    }
    /**
     * Gets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTop250Rank() {
        return this.top250Rank;
    }
    /**
     * Gets the winstreak property value. Current win streak count (0-99).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getWinstreak() {
        return this.winstreak;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("gameId", this.getGameId());
        writer.writeBooleanValue("isTop250", this.getIsTop250());
        writer.writeStringValue("mode", this.getMode());
        writer.writeIntegerValue("sr", this.getSr());
        writer.writeIntegerValue("top250Rank", this.getTop250Rank());
        writer.writeIntegerValue("winstreak", this.getWinstreak());
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
     * Sets the gameId property value. Game definition ID to set the rank for (a playable game).
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final GameRankUpsertBodyGameId value) {
        this.gameId = value;
    }
    /**
     * Sets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @param value Value to set for the isTop250 property.
     */
    public void setIsTop250(@jakarta.annotation.Nullable final Boolean value) {
        this.isTop250 = value;
    }
    /**
     * Sets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
     * @param value Value to set for the mode property.
     */
    public void setMode(@jakarta.annotation.Nullable final String value) {
        this.mode = value;
    }
    /**
     * Sets the sr property value. Skill rating (integer, 0-100000).
     * @param value Value to set for the sr property.
     */
    public void setSr(@jakarta.annotation.Nullable final Integer value) {
        this.sr = value;
    }
    /**
     * Sets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
     * @param value Value to set for the top250Rank property.
     */
    public void setTop250Rank(@jakarta.annotation.Nullable final Integer value) {
        this.top250Rank = value;
    }
    /**
     * Sets the winstreak property value. Current win streak count (0-99).
     * @param value Value to set for the winstreak property.
     */
    public void setWinstreak(@jakarta.annotation.Nullable final Integer value) {
        this.winstreak = value;
    }
}

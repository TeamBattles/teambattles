package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Type, team, game, and limit filters for league penalties and cooldowns.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class PenaltiesRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Filter penalties to a specific game id.
     */
    private String gameId;
    /**
     * Maximum number of penalties to return (1-100). Defaults to 50.
     */
    private Integer limit;
    /**
     * Filter penalties to a specific team id.
     */
    private String teamId;
    /**
     * Which record kinds to return. Defaults to all.
     */
    private PenaltiesRequestBodyType type;
    /**
     * Instantiates a new {@link PenaltiesRequestBody} and sets the default values.
     */
    public PenaltiesRequestBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(50);
        this.setType(PenaltiesRequestBodyType.forValue("all"));
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link PenaltiesRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static PenaltiesRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new PenaltiesRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("type", (n) -> { this.setType(n.getEnumValue(PenaltiesRequestBodyType::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Filter penalties to a specific game id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the teamId property value. Filter penalties to a specific team id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the type property value. Which record kinds to return. Defaults to all.
     * @return a {@link PenaltiesRequestBodyType}
     */
    @jakarta.annotation.Nullable
    public PenaltiesRequestBodyType getType() {
        return this.type;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeEnumValue("type", this.getType());
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
     * Sets the gameId property value. Filter penalties to a specific game id.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the teamId property value. Filter penalties to a specific team id.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the type property value. Which record kinds to return. Defaults to all.
     * @param value Value to set for the type property.
     */
    public void setType(@jakarta.annotation.Nullable final PenaltiesRequestBodyType value) {
        this.type = value;
    }
}

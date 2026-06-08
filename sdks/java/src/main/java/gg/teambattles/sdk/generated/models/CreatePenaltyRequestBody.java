package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates a league team penalty.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CreatePenaltyRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Game ID for the league penalty.
     */
    private String gameId;
    /**
     * Reason for the penalty.
     */
    private String reason;
    /**
     * Optional league season ID for the penalty.
     */
    private String seasonId;
    /**
     * Team ID receiving the penalty.
     */
    private String teamId;
    /**
     * Penalty type.
     */
    private CreatePenaltyRequestBodyType type;
    /**
     * Point value for POINT_DEDUCTION (integer, 1-1000).
     */
    private Integer value;
    /**
     * Instantiates a new {@link CreatePenaltyRequestBody} and sets the default values.
     */
    public CreatePenaltyRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link CreatePenaltyRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static CreatePenaltyRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new CreatePenaltyRequestBody();
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
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("reason", (n) -> { this.setReason(n.getStringValue()); });
        deserializerMap.put("seasonId", (n) -> { this.setSeasonId(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("type", (n) -> { this.setType(n.getEnumValue(CreatePenaltyRequestBodyType::forValue)); });
        deserializerMap.put("value", (n) -> { this.setValue(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game ID for the league penalty.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the reason property value. Reason for the penalty.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getReason() {
        return this.reason;
    }
    /**
     * Gets the seasonId property value. Optional league season ID for the penalty.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSeasonId() {
        return this.seasonId;
    }
    /**
     * Gets the teamId property value. Team ID receiving the penalty.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the type property value. Penalty type.
     * @return a {@link CreatePenaltyRequestBodyType}
     */
    @jakarta.annotation.Nullable
    public CreatePenaltyRequestBodyType getType() {
        return this.type;
    }
    /**
     * Gets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getValue() {
        return this.value;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("reason", this.getReason());
        writer.writeStringValue("seasonId", this.getSeasonId());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeEnumValue("type", this.getType());
        writer.writeIntegerValue("value", this.getValue());
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
     * Sets the gameId property value. Game ID for the league penalty.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the reason property value. Reason for the penalty.
     * @param value Value to set for the reason property.
     */
    public void setReason(@jakarta.annotation.Nullable final String value) {
        this.reason = value;
    }
    /**
     * Sets the seasonId property value. Optional league season ID for the penalty.
     * @param value Value to set for the seasonId property.
     */
    public void setSeasonId(@jakarta.annotation.Nullable final String value) {
        this.seasonId = value;
    }
    /**
     * Sets the teamId property value. Team ID receiving the penalty.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the type property value. Penalty type.
     * @param value Value to set for the type property.
     */
    public void setType(@jakarta.annotation.Nullable final CreatePenaltyRequestBodyType value) {
        this.type = value;
    }
    /**
     * Sets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
     * @param value Value to set for the value property.
     */
    public void setValue(@jakarta.annotation.Nullable final Integer value) {
        this.value = value;
    }
}

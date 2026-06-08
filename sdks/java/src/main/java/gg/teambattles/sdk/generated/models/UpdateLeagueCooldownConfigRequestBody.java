package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates league member cooldown configuration.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateLeagueCooldownConfigRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The kickCooldownHours property
     */
    private Double kickCooldownHours;
    /**
     * The maxCooldownHours property
     */
    private Double maxCooldownHours;
    /**
     * The repeatLeaveCooldownMultiplier property
     */
    private Double repeatLeaveCooldownMultiplier;
    /**
     * The repeatLeavePenaltyEnabled property
     */
    private Boolean repeatLeavePenaltyEnabled;
    /**
     * The selfLeaveCooldownHours property
     */
    private Double selfLeaveCooldownHours;
    /**
     * Instantiates a new {@link UpdateLeagueCooldownConfigRequestBody} and sets the default values.
     */
    public UpdateLeagueCooldownConfigRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateLeagueCooldownConfigRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateLeagueCooldownConfigRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateLeagueCooldownConfigRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("kickCooldownHours", (n) -> { this.setKickCooldownHours(n.getDoubleValue()); });
        deserializerMap.put("maxCooldownHours", (n) -> { this.setMaxCooldownHours(n.getDoubleValue()); });
        deserializerMap.put("repeatLeaveCooldownMultiplier", (n) -> { this.setRepeatLeaveCooldownMultiplier(n.getDoubleValue()); });
        deserializerMap.put("repeatLeavePenaltyEnabled", (n) -> { this.setRepeatLeavePenaltyEnabled(n.getBooleanValue()); });
        deserializerMap.put("selfLeaveCooldownHours", (n) -> { this.setSelfLeaveCooldownHours(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the kickCooldownHours property value. The kickCooldownHours property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getKickCooldownHours() {
        return this.kickCooldownHours;
    }
    /**
     * Gets the maxCooldownHours property value. The maxCooldownHours property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxCooldownHours() {
        return this.maxCooldownHours;
    }
    /**
     * Gets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getRepeatLeaveCooldownMultiplier() {
        return this.repeatLeaveCooldownMultiplier;
    }
    /**
     * Gets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getRepeatLeavePenaltyEnabled() {
        return this.repeatLeavePenaltyEnabled;
    }
    /**
     * Gets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getSelfLeaveCooldownHours() {
        return this.selfLeaveCooldownHours;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("kickCooldownHours", this.getKickCooldownHours());
        writer.writeDoubleValue("maxCooldownHours", this.getMaxCooldownHours());
        writer.writeDoubleValue("repeatLeaveCooldownMultiplier", this.getRepeatLeaveCooldownMultiplier());
        writer.writeBooleanValue("repeatLeavePenaltyEnabled", this.getRepeatLeavePenaltyEnabled());
        writer.writeDoubleValue("selfLeaveCooldownHours", this.getSelfLeaveCooldownHours());
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
     * Sets the kickCooldownHours property value. The kickCooldownHours property
     * @param value Value to set for the kickCooldownHours property.
     */
    public void setKickCooldownHours(@jakarta.annotation.Nullable final Double value) {
        this.kickCooldownHours = value;
    }
    /**
     * Sets the maxCooldownHours property value. The maxCooldownHours property
     * @param value Value to set for the maxCooldownHours property.
     */
    public void setMaxCooldownHours(@jakarta.annotation.Nullable final Double value) {
        this.maxCooldownHours = value;
    }
    /**
     * Sets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
     * @param value Value to set for the repeatLeaveCooldownMultiplier property.
     */
    public void setRepeatLeaveCooldownMultiplier(@jakarta.annotation.Nullable final Double value) {
        this.repeatLeaveCooldownMultiplier = value;
    }
    /**
     * Sets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
     * @param value Value to set for the repeatLeavePenaltyEnabled property.
     */
    public void setRepeatLeavePenaltyEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.repeatLeavePenaltyEnabled = value;
    }
    /**
     * Sets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
     * @param value Value to set for the selfLeaveCooldownHours property.
     */
    public void setSelfLeaveCooldownHours(@jakarta.annotation.Nullable final Double value) {
        this.selfLeaveCooldownHours = value;
    }
}

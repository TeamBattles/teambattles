package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdatePointsConfigRequestBodyStreakBreakpoints implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The bonus property
     */
    private Double bonus;
    /**
     * The count property
     */
    private Double count;
    /**
     * Instantiates a new {@link UpdatePointsConfigRequestBodyStreakBreakpoints} and sets the default values.
     */
    public UpdatePointsConfigRequestBodyStreakBreakpoints() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdatePointsConfigRequestBodyStreakBreakpoints}
     */
    @jakarta.annotation.Nonnull
    public static UpdatePointsConfigRequestBodyStreakBreakpoints createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdatePointsConfigRequestBodyStreakBreakpoints();
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
     * Gets the bonus property value. The bonus property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getBonus() {
        return this.bonus;
    }
    /**
     * Gets the count property value. The count property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("bonus", (n) -> { this.setBonus(n.getDoubleValue()); });
        deserializerMap.put("count", (n) -> { this.setCount(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("bonus", this.getBonus());
        writer.writeDoubleValue("count", this.getCount());
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
     * Sets the bonus property value. The bonus property
     * @param value Value to set for the bonus property.
     */
    public void setBonus(@jakarta.annotation.Nullable final Double value) {
        this.bonus = value;
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Double value) {
        this.count = value;
    }
}

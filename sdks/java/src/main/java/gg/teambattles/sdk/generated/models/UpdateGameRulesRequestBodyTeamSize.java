package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateGameRulesRequestBodyTeamSize implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The max property
     */
    private Double max;
    /**
     * The min property
     */
    private Double min;
    /**
     * Instantiates a new {@link UpdateGameRulesRequestBodyTeamSize} and sets the default values.
     */
    public UpdateGameRulesRequestBodyTeamSize() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateGameRulesRequestBodyTeamSize}
     */
    @jakarta.annotation.Nonnull
    public static UpdateGameRulesRequestBodyTeamSize createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateGameRulesRequestBodyTeamSize();
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
        deserializerMap.put("max", (n) -> { this.setMax(n.getDoubleValue()); });
        deserializerMap.put("min", (n) -> { this.setMin(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the max property value. The max property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMax() {
        return this.max;
    }
    /**
     * Gets the min property value. The min property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMin() {
        return this.min;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("max", this.getMax());
        writer.writeDoubleValue("min", this.getMin());
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
     * Sets the max property value. The max property
     * @param value Value to set for the max property.
     */
    public void setMax(@jakarta.annotation.Nullable final Double value) {
        this.max = value;
    }
    /**
     * Sets the min property value. The min property
     * @param value Value to set for the min property.
     */
    public void setMin(@jakarta.annotation.Nullable final Double value) {
        this.min = value;
    }
}

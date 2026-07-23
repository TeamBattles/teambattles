package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tournament start payload.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentStartRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
     */
    private java.util.List<String> manualOrder;
    /**
     * How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
     */
    private TournamentStartRequestBodySeedMethod seedMethod;
    /**
     * Instantiates a new {@link TournamentStartRequestBody} and sets the default values.
     */
    public TournamentStartRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentStartRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentStartRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentStartRequestBody();
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
        deserializerMap.put("manualOrder", (n) -> { this.setManualOrder(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("seedMethod", (n) -> { this.setSeedMethod(n.getEnumValue(TournamentStartRequestBodySeedMethod::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getManualOrder() {
        return this.manualOrder;
    }
    /**
     * Gets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
     * @return a {@link TournamentStartRequestBodySeedMethod}
     */
    @jakarta.annotation.Nullable
    public TournamentStartRequestBodySeedMethod getSeedMethod() {
        return this.seedMethod;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("manualOrder", this.getManualOrder());
        writer.writeEnumValue("seedMethod", this.getSeedMethod());
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
     * Sets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
     * @param value Value to set for the manualOrder property.
     */
    public void setManualOrder(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.manualOrder = value;
    }
    /**
     * Sets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
     * @param value Value to set for the seedMethod property.
     */
    public void setSeedMethod(@jakarta.annotation.Nullable final TournamentStartRequestBodySeedMethod value) {
        this.seedMethod = value;
    }
}

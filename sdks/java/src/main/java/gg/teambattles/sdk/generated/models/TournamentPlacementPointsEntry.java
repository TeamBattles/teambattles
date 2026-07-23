package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One placement -&gt; points row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentPlacementPointsEntry implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Final placement, 1 = champion.
     */
    private Integer placement;
    /**
     * League points awarded, 0-1000.
     */
    private Double points;
    /**
     * Instantiates a new {@link TournamentPlacementPointsEntry} and sets the default values.
     */
    public TournamentPlacementPointsEntry() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentPlacementPointsEntry}
     */
    @jakarta.annotation.Nonnull
    public static TournamentPlacementPointsEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentPlacementPointsEntry();
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
        deserializerMap.put("placement", (n) -> { this.setPlacement(n.getIntegerValue()); });
        deserializerMap.put("points", (n) -> { this.setPoints(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the placement property value. Final placement, 1 = champion.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPlacement() {
        return this.placement;
    }
    /**
     * Gets the points property value. League points awarded, 0-1000.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getPoints() {
        return this.points;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("placement", this.getPlacement());
        writer.writeDoubleValue("points", this.getPoints());
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
     * Sets the placement property value. Final placement, 1 = champion.
     * @param value Value to set for the placement property.
     */
    public void setPlacement(@jakarta.annotation.Nullable final Integer value) {
        this.placement = value;
    }
    /**
     * Sets the points property value. League points awarded, 0-1000.
     * @param value Value to set for the points property.
     */
    public void setPoints(@jakarta.annotation.Nullable final Double value) {
        this.points = value;
    }
}

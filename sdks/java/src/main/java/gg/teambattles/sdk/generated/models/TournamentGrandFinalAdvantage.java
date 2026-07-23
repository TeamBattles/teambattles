package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Grand-final advantage rule, copied verbatim from the tournament&apos;s `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentGrandFinalAdvantage implements Parsable {
    /**
     * Which advantage the winners-bracket champion carries into the grand final.
     */
    private TournamentGrandFinalAdvantageType type;
    /**
     * Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
     */
    private Double winHeadstart;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentGrandFinalAdvantage}
     */
    @jakarta.annotation.Nonnull
    public static TournamentGrandFinalAdvantage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentGrandFinalAdvantage();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("type", (n) -> { this.setType(n.getEnumValue(TournamentGrandFinalAdvantageType::forValue)); });
        deserializerMap.put("winHeadstart", (n) -> { this.setWinHeadstart(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the type property value. Which advantage the winners-bracket champion carries into the grand final.
     * @return a {@link TournamentGrandFinalAdvantageType}
     */
    @jakarta.annotation.Nullable
    public TournamentGrandFinalAdvantageType getType() {
        return this.type;
    }
    /**
     * Gets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getWinHeadstart() {
        return this.winHeadstart;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("type", this.getType());
        writer.writeDoubleValue("winHeadstart", this.getWinHeadstart());
    }
    /**
     * Sets the type property value. Which advantage the winners-bracket champion carries into the grand final.
     * @param value Value to set for the type property.
     */
    public void setType(@jakarta.annotation.Nullable final TournamentGrandFinalAdvantageType value) {
        this.type = value;
    }
    /**
     * Sets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
     * @param value Value to set for the winHeadstart property.
     */
    public void setWinHeadstart(@jakarta.annotation.Nullable final Double value) {
        this.winHeadstart = value;
    }
}

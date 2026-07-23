package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentFormatConfigGrandFinalAdvantage implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The type property
     */
    private TournamentFormatConfigGrandFinalAdvantageType type;
    /**
     * Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
     */
    private Integer winHeadstart;
    /**
     * Instantiates a new {@link TournamentFormatConfigGrandFinalAdvantage} and sets the default values.
     */
    public TournamentFormatConfigGrandFinalAdvantage() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentFormatConfigGrandFinalAdvantage}
     */
    @jakarta.annotation.Nonnull
    public static TournamentFormatConfigGrandFinalAdvantage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentFormatConfigGrandFinalAdvantage();
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
        deserializerMap.put("type", (n) -> { this.setType(n.getEnumValue(TournamentFormatConfigGrandFinalAdvantageType::forValue)); });
        deserializerMap.put("winHeadstart", (n) -> { this.setWinHeadstart(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the type property value. The type property
     * @return a {@link TournamentFormatConfigGrandFinalAdvantageType}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfigGrandFinalAdvantageType getType() {
        return this.type;
    }
    /**
     * Gets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getWinHeadstart() {
        return this.winHeadstart;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("type", this.getType());
        writer.writeIntegerValue("winHeadstart", this.getWinHeadstart());
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
     * Sets the type property value. The type property
     * @param value Value to set for the type property.
     */
    public void setType(@jakarta.annotation.Nullable final TournamentFormatConfigGrandFinalAdvantageType value) {
        this.type = value;
    }
    /**
     * Sets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
     * @param value Value to set for the winHeadstart property.
     */
    public void setWinHeadstart(@jakarta.annotation.Nullable final Integer value) {
        this.winHeadstart = value;
    }
}

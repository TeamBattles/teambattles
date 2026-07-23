package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Best-of ladder. Both fields are required when formatConfig is sent.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentFormatConfigBestOfLadder implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Default best-of for every round.
     */
    private Integer defaultEscaped;
    /**
     * Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
     */
    private TournamentFormatConfigBestOfLadderOverrides overrides;
    /**
     * Instantiates a new {@link TournamentFormatConfigBestOfLadder} and sets the default values.
     */
    public TournamentFormatConfigBestOfLadder() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentFormatConfigBestOfLadder}
     */
    @jakarta.annotation.Nonnull
    public static TournamentFormatConfigBestOfLadder createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentFormatConfigBestOfLadder();
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
     * Gets the default property value. Default best-of for every round.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDefault() {
        return this.defaultEscaped;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("default", (n) -> { this.setDefault(n.getIntegerValue()); });
        deserializerMap.put("overrides", (n) -> { this.setOverrides(n.getObjectValue(TournamentFormatConfigBestOfLadderOverrides::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
     * @return a {@link TournamentFormatConfigBestOfLadderOverrides}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfigBestOfLadderOverrides getOverrides() {
        return this.overrides;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("default", this.getDefault());
        writer.writeObjectValue("overrides", this.getOverrides());
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
     * Sets the default property value. Default best-of for every round.
     * @param value Value to set for the default property.
     */
    public void setDefault(@jakarta.annotation.Nullable final Integer value) {
        this.defaultEscaped = value;
    }
    /**
     * Sets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
     * @param value Value to set for the overrides property.
     */
    public void setOverrides(@jakarta.annotation.Nullable final TournamentFormatConfigBestOfLadderOverrides value) {
        this.overrides = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentFormatConfig implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Best-of ladder. Both fields are required when formatConfig is sent.
     */
    private TournamentFormatConfigBestOfLadder bestOfLadder;
    /**
     * The grandFinalAdvantage property
     */
    private TournamentFormatConfigGrandFinalAdvantage grandFinalAdvantage;
    /**
     * Round-robin only. 1 = single pass, 2 = double pass.
     */
    private TournamentFormatConfigRoundRobinPasses roundRobinPasses;
    /**
     * Swiss only. Number of rounds to play.
     */
    private Integer swissRoundCount;
    /**
     * Instantiates a new {@link TournamentFormatConfig} and sets the default values.
     */
    public TournamentFormatConfig() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentFormatConfig}
     */
    @jakarta.annotation.Nonnull
    public static TournamentFormatConfig createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentFormatConfig();
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
     * Gets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
     * @return a {@link TournamentFormatConfigBestOfLadder}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfigBestOfLadder getBestOfLadder() {
        return this.bestOfLadder;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("bestOfLadder", (n) -> { this.setBestOfLadder(n.getObjectValue(TournamentFormatConfigBestOfLadder::createFromDiscriminatorValue)); });
        deserializerMap.put("grandFinalAdvantage", (n) -> { this.setGrandFinalAdvantage(n.getObjectValue(TournamentFormatConfigGrandFinalAdvantage::createFromDiscriminatorValue)); });
        deserializerMap.put("roundRobinPasses", (n) -> { this.setRoundRobinPasses(n.getObjectValue(TournamentFormatConfigRoundRobinPasses::createFromDiscriminatorValue)); });
        deserializerMap.put("swissRoundCount", (n) -> { this.setSwissRoundCount(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the grandFinalAdvantage property value. The grandFinalAdvantage property
     * @return a {@link TournamentFormatConfigGrandFinalAdvantage}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfigGrandFinalAdvantage getGrandFinalAdvantage() {
        return this.grandFinalAdvantage;
    }
    /**
     * Gets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
     * @return a {@link TournamentFormatConfigRoundRobinPasses}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfigRoundRobinPasses getRoundRobinPasses() {
        return this.roundRobinPasses;
    }
    /**
     * Gets the swissRoundCount property value. Swiss only. Number of rounds to play.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getSwissRoundCount() {
        return this.swissRoundCount;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("bestOfLadder", this.getBestOfLadder());
        writer.writeObjectValue("grandFinalAdvantage", this.getGrandFinalAdvantage());
        writer.writeObjectValue("roundRobinPasses", this.getRoundRobinPasses());
        writer.writeIntegerValue("swissRoundCount", this.getSwissRoundCount());
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
     * Sets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
     * @param value Value to set for the bestOfLadder property.
     */
    public void setBestOfLadder(@jakarta.annotation.Nullable final TournamentFormatConfigBestOfLadder value) {
        this.bestOfLadder = value;
    }
    /**
     * Sets the grandFinalAdvantage property value. The grandFinalAdvantage property
     * @param value Value to set for the grandFinalAdvantage property.
     */
    public void setGrandFinalAdvantage(@jakarta.annotation.Nullable final TournamentFormatConfigGrandFinalAdvantage value) {
        this.grandFinalAdvantage = value;
    }
    /**
     * Sets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
     * @param value Value to set for the roundRobinPasses property.
     */
    public void setRoundRobinPasses(@jakarta.annotation.Nullable final TournamentFormatConfigRoundRobinPasses value) {
        this.roundRobinPasses = value;
    }
    /**
     * Sets the swissRoundCount property value. Swiss only. Number of rounds to play.
     * @param value Value to set for the swissRoundCount property.
     */
    public void setSwissRoundCount(@jakarta.annotation.Nullable final Integer value) {
        this.swissRoundCount = value;
    }
    /**
     * Composed type wrapper for classes {@link Double}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentFormatConfigRoundRobinPasses implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Double}
         */
        private Double doubleEscaped;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentFormatConfigRoundRobinPasses}
         */
        @jakarta.annotation.Nonnull
        public static TournamentFormatConfigRoundRobinPasses createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentFormatConfigRoundRobinPasses result = new TournamentFormatConfigRoundRobinPasses();
            if (parseNode.getDoubleValue() != null) {
                result.setDouble(parseNode.getDoubleValue());
            }
            return result;
        }
        /**
         * Gets the double property value. Composed type representation for type {@link Double}
         * @return a {@link Double}
         */
        @jakarta.annotation.Nullable
        public Double getDouble() {
            return this.doubleEscaped;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getDouble() != null) {
                writer.writeDoubleValue(null, this.getDouble());
            }
        }
        /**
         * Sets the double property value. Composed type representation for type {@link Double}
         * @param value Value to set for the double property.
         */
        public void setDouble(@jakarta.annotation.Nullable final Double value) {
            this.doubleEscaped = value;
        }
    }
}

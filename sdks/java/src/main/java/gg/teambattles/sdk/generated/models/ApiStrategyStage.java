package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A single playback stage of a strategy.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStrategyStage implements Parsable {
    /**
     * Stage playback duration in milliseconds.
     */
    private Integer durationMs;
    /**
     * Stable stage id within the strategy.
     */
    private String id;
    /**
     * Author stage label, when set.
     */
    private ApiStrategyStageLabel label;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStrategyStage}
     */
    @jakarta.annotation.Nonnull
    public static ApiStrategyStage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStrategyStage();
    }
    /**
     * Gets the durationMs property value. Stage playback duration in milliseconds.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDurationMs() {
        return this.durationMs;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("durationMs", (n) -> { this.setDurationMs(n.getIntegerValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("label", (n) -> { this.setLabel(n.getObjectValue(ApiStrategyStageLabel::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Stable stage id within the strategy.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the label property value. Author stage label, when set.
     * @return a {@link ApiStrategyStageLabel}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyStageLabel getLabel() {
        return this.label;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("durationMs", this.getDurationMs());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("label", this.getLabel());
    }
    /**
     * Sets the durationMs property value. Stage playback duration in milliseconds.
     * @param value Value to set for the durationMs property.
     */
    public void setDurationMs(@jakarta.annotation.Nullable final Integer value) {
        this.durationMs = value;
    }
    /**
     * Sets the id property value. Stable stage id within the strategy.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the label property value. Author stage label, when set.
     * @param value Value to set for the label property.
     */
    public void setLabel(@jakarta.annotation.Nullable final ApiStrategyStageLabel value) {
        this.label = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiStrategyStageLabelMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyStageLabel implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyStageLabelMember1}
         */
        private ApiStrategyStageLabelMember1 apiStrategyStageLabelMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyStageLabel}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyStageLabel createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyStageLabel result = new ApiStrategyStageLabel();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyStageLabelMember1(new ApiStrategyStageLabelMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategyStage_labelMember1 property value. Composed type representation for type {@link ApiStrategyStageLabelMember1}
         * @return a {@link ApiStrategyStageLabelMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyStageLabelMember1 getApiStrategyStageLabelMember1() {
            return this.apiStrategyStageLabelMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyStageLabelMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyStageLabelMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getApiStrategyStageLabelMember1());
            }
        }
        /**
         * Sets the ApiStrategyStage_labelMember1 property value. Composed type representation for type {@link ApiStrategyStageLabelMember1}
         * @param value Value to set for the ApiStrategyStage_labelMember1 property.
         */
        public void setApiStrategyStageLabelMember1(@jakarta.annotation.Nullable final ApiStrategyStageLabelMember1 value) {
            this.apiStrategyStageLabelMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
}

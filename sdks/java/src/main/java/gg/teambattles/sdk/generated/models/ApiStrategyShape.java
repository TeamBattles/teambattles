package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API-safe strategy shape. Hidden working shapes are omitted from responses.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStrategyShape implements Parsable {
    /**
     * Opaque shape payload consumed by the canvas renderer.
     */
    private UntypedNode data;
    /**
     * Shape row ID.
     */
    private String id;
    /**
     * Canvas layer the shape renders on.
     */
    private ApiStrategyShapeLayer layer;
    /**
     * Stable client-side shape id.
     */
    private String shapeId;
    /**
     * Stage this shape belongs to.
     */
    private String stageId;
    /**
     * Shape primitive type.
     */
    private ApiStrategyShapeType type;
    /**
     * The updatedAt property
     */
    private ApiStrategyShapeUpdatedAt updatedAt;
    /**
     * Stacking order within its layer.
     */
    private Double zIndex;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStrategyShape}
     */
    @jakarta.annotation.Nonnull
    public static ApiStrategyShape createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStrategyShape();
    }
    /**
     * Gets the data property value. Opaque shape payload consumed by the canvas renderer.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getData() {
        return this.data;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("data", (n) -> { this.setData(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("layer", (n) -> { this.setLayer(n.getEnumValue(ApiStrategyShapeLayer::forValue)); });
        deserializerMap.put("shapeId", (n) -> { this.setShapeId(n.getStringValue()); });
        deserializerMap.put("stageId", (n) -> { this.setStageId(n.getStringValue()); });
        deserializerMap.put("type", (n) -> { this.setType(n.getEnumValue(ApiStrategyShapeType::forValue)); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getObjectValue(ApiStrategyShapeUpdatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("zIndex", (n) -> { this.setZIndex(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Shape row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the layer property value. Canvas layer the shape renders on.
     * @return a {@link ApiStrategyShapeLayer}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyShapeLayer getLayer() {
        return this.layer;
    }
    /**
     * Gets the shapeId property value. Stable client-side shape id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getShapeId() {
        return this.shapeId;
    }
    /**
     * Gets the stageId property value. Stage this shape belongs to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStageId() {
        return this.stageId;
    }
    /**
     * Gets the type property value. Shape primitive type.
     * @return a {@link ApiStrategyShapeType}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyShapeType getType() {
        return this.type;
    }
    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return a {@link ApiStrategyShapeUpdatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyShapeUpdatedAt getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Gets the zIndex property value. Stacking order within its layer.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getZIndex() {
        return this.zIndex;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("data", this.getData());
        writer.writeStringValue("id", this.getId());
        writer.writeEnumValue("layer", this.getLayer());
        writer.writeStringValue("shapeId", this.getShapeId());
        writer.writeStringValue("stageId", this.getStageId());
        writer.writeEnumValue("type", this.getType());
        writer.writeObjectValue("updatedAt", this.getUpdatedAt());
        writer.writeDoubleValue("zIndex", this.getZIndex());
    }
    /**
     * Sets the data property value. Opaque shape payload consumed by the canvas renderer.
     * @param value Value to set for the data property.
     */
    public void setData(@jakarta.annotation.Nullable final UntypedNode value) {
        this.data = value;
    }
    /**
     * Sets the id property value. Shape row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the layer property value. Canvas layer the shape renders on.
     * @param value Value to set for the layer property.
     */
    public void setLayer(@jakarta.annotation.Nullable final ApiStrategyShapeLayer value) {
        this.layer = value;
    }
    /**
     * Sets the shapeId property value. Stable client-side shape id.
     * @param value Value to set for the shapeId property.
     */
    public void setShapeId(@jakarta.annotation.Nullable final String value) {
        this.shapeId = value;
    }
    /**
     * Sets the stageId property value. Stage this shape belongs to.
     * @param value Value to set for the stageId property.
     */
    public void setStageId(@jakarta.annotation.Nullable final String value) {
        this.stageId = value;
    }
    /**
     * Sets the type property value. Shape primitive type.
     * @param value Value to set for the type property.
     */
    public void setType(@jakarta.annotation.Nullable final ApiStrategyShapeType value) {
        this.type = value;
    }
    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final ApiStrategyShapeUpdatedAt value) {
        this.updatedAt = value;
    }
    /**
     * Sets the zIndex property value. Stacking order within its layer.
     * @param value Value to set for the zIndex property.
     */
    public void setZIndex(@jakarta.annotation.Nullable final Double value) {
        this.zIndex = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiStrategyShapeUpdatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyShapeUpdatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyShapeUpdatedAtMember1}
         */
        private ApiStrategyShapeUpdatedAtMember1 apiStrategyShapeUpdatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyShapeUpdatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyShapeUpdatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyShapeUpdatedAt result = new ApiStrategyShapeUpdatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyShapeUpdatedAtMember1(new ApiStrategyShapeUpdatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type {@link ApiStrategyShapeUpdatedAtMember1}
         * @return a {@link ApiStrategyShapeUpdatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyShapeUpdatedAtMember1 getApiStrategyShapeUpdatedAtMember1() {
            return this.apiStrategyShapeUpdatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyShapeUpdatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyShapeUpdatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiStrategyShapeUpdatedAtMember1());
            }
        }
        /**
         * Sets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type {@link ApiStrategyShapeUpdatedAtMember1}
         * @param value Value to set for the ApiStrategyShape_updatedAtMember1 property.
         */
        public void setApiStrategyShapeUpdatedAtMember1(@jakarta.annotation.Nullable final ApiStrategyShapeUpdatedAtMember1 value) {
            this.apiStrategyShapeUpdatedAtMember1 = value;
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

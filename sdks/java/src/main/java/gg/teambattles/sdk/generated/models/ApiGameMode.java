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
 * Static game mode definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameMode implements Parsable {
    /**
     * The descriptionKey property
     */
    private ApiGameModeDescriptionKey descriptionKey;
    /**
     * The id property
     */
    private String id;
    /**
     * The image property
     */
    private ApiGameModeImage image;
    /**
     * The mapIds property
     */
    private java.util.List<String> mapIds;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * The rewardBonus property
     */
    private ApiGameModeRewardBonus rewardBonus;
    /**
     * The shortName property
     */
    private ApiGameModeShortName shortName;
    /**
     * The supportsDraftToggle property
     */
    private Boolean supportsDraftToggle;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameMode}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameMode createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameMode();
    }
    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return a {@link ApiGameModeDescriptionKey}
     */
    @jakarta.annotation.Nullable
    public ApiGameModeDescriptionKey getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getObjectValue(ApiGameModeDescriptionKey::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("image", (n) -> { this.setImage(n.getObjectValue(ApiGameModeImage::createFromDiscriminatorValue)); });
        deserializerMap.put("mapIds", (n) -> { this.setMapIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        deserializerMap.put("rewardBonus", (n) -> { this.setRewardBonus(n.getObjectValue(ApiGameModeRewardBonus::createFromDiscriminatorValue)); });
        deserializerMap.put("shortName", (n) -> { this.setShortName(n.getObjectValue(ApiGameModeShortName::createFromDiscriminatorValue)); });
        deserializerMap.put("supportsDraftToggle", (n) -> { this.setSupportsDraftToggle(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. The id property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the image property value. The image property
     * @return a {@link ApiGameModeImage}
     */
    @jakarta.annotation.Nullable
    public ApiGameModeImage getImage() {
        return this.image;
    }
    /**
     * Gets the mapIds property value. The mapIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getMapIds() {
        return this.mapIds;
    }
    /**
     * Gets the nameKey property value. The nameKey property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNameKey() {
        return this.nameKey;
    }
    /**
     * Gets the rewardBonus property value. The rewardBonus property
     * @return a {@link ApiGameModeRewardBonus}
     */
    @jakarta.annotation.Nullable
    public ApiGameModeRewardBonus getRewardBonus() {
        return this.rewardBonus;
    }
    /**
     * Gets the shortName property value. The shortName property
     * @return a {@link ApiGameModeShortName}
     */
    @jakarta.annotation.Nullable
    public ApiGameModeShortName getShortName() {
        return this.shortName;
    }
    /**
     * Gets the supportsDraftToggle property value. The supportsDraftToggle property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSupportsDraftToggle() {
        return this.supportsDraftToggle;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("descriptionKey", this.getDescriptionKey());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("image", this.getImage());
        writer.writeCollectionOfPrimitiveValues("mapIds", this.getMapIds());
        writer.writeStringValue("nameKey", this.getNameKey());
        writer.writeObjectValue("rewardBonus", this.getRewardBonus());
        writer.writeObjectValue("shortName", this.getShortName());
        writer.writeBooleanValue("supportsDraftToggle", this.getSupportsDraftToggle());
    }
    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param value Value to set for the descriptionKey property.
     */
    public void setDescriptionKey(@jakarta.annotation.Nullable final ApiGameModeDescriptionKey value) {
        this.descriptionKey = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the image property value. The image property
     * @param value Value to set for the image property.
     */
    public void setImage(@jakarta.annotation.Nullable final ApiGameModeImage value) {
        this.image = value;
    }
    /**
     * Sets the mapIds property value. The mapIds property
     * @param value Value to set for the mapIds property.
     */
    public void setMapIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.mapIds = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
    /**
     * Sets the rewardBonus property value. The rewardBonus property
     * @param value Value to set for the rewardBonus property.
     */
    public void setRewardBonus(@jakarta.annotation.Nullable final ApiGameModeRewardBonus value) {
        this.rewardBonus = value;
    }
    /**
     * Sets the shortName property value. The shortName property
     * @param value Value to set for the shortName property.
     */
    public void setShortName(@jakarta.annotation.Nullable final ApiGameModeShortName value) {
        this.shortName = value;
    }
    /**
     * Sets the supportsDraftToggle property value. The supportsDraftToggle property
     * @param value Value to set for the supportsDraftToggle property.
     */
    public void setSupportsDraftToggle(@jakarta.annotation.Nullable final Boolean value) {
        this.supportsDraftToggle = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiGameModeDescriptionKeyMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameModeDescriptionKey implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameModeDescriptionKeyMember1}
         */
        private ApiGameModeDescriptionKeyMember1 apiGameModeDescriptionKeyMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameModeDescriptionKey}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameModeDescriptionKey createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameModeDescriptionKey result = new ApiGameModeDescriptionKey();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameModeDescriptionKeyMember1(new ApiGameModeDescriptionKeyMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGameModeDescriptionKeyMember1}
         * @return a {@link ApiGameModeDescriptionKeyMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameModeDescriptionKeyMember1 getApiGameModeDescriptionKeyMember1() {
            return this.apiGameModeDescriptionKeyMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameModeDescriptionKeyMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameModeDescriptionKeyMember1());
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
                writer.writeObjectValue(null, this.getApiGameModeDescriptionKeyMember1());
            }
        }
        /**
         * Sets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGameModeDescriptionKeyMember1}
         * @param value Value to set for the ApiGameMode_descriptionKeyMember1 property.
         */
        public void setApiGameModeDescriptionKeyMember1(@jakarta.annotation.Nullable final ApiGameModeDescriptionKeyMember1 value) {
            this.apiGameModeDescriptionKeyMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiGameModeImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameModeImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameModeImageMember1}
         */
        private ApiGameModeImageMember1 apiGameModeImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameModeImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameModeImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameModeImage result = new ApiGameModeImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameModeImageMember1(new ApiGameModeImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMode_imageMember1 property value. Composed type representation for type {@link ApiGameModeImageMember1}
         * @return a {@link ApiGameModeImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameModeImageMember1 getApiGameModeImageMember1() {
            return this.apiGameModeImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameModeImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameModeImageMember1());
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
                writer.writeObjectValue(null, this.getApiGameModeImageMember1());
            }
        }
        /**
         * Sets the ApiGameMode_imageMember1 property value. Composed type representation for type {@link ApiGameModeImageMember1}
         * @param value Value to set for the ApiGameMode_imageMember1 property.
         */
        public void setApiGameModeImageMember1(@jakarta.annotation.Nullable final ApiGameModeImageMember1 value) {
            this.apiGameModeImageMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiGameModeRewardBonusMember1}, {@link Double}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameModeRewardBonus implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameModeRewardBonusMember1}
         */
        private ApiGameModeRewardBonusMember1 apiGameModeRewardBonusMember1;
        /**
         * Composed type representation for type {@link Double}
         */
        private Double doubleEscaped;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameModeRewardBonus}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameModeRewardBonus createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameModeRewardBonus result = new ApiGameModeRewardBonus();
            if (parseNode.getDoubleValue() != null) {
                result.setDouble(parseNode.getDoubleValue());
            } else {
                result.setApiGameModeRewardBonusMember1(new ApiGameModeRewardBonusMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type {@link ApiGameModeRewardBonusMember1}
         * @return a {@link ApiGameModeRewardBonusMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameModeRewardBonusMember1 getApiGameModeRewardBonusMember1() {
            return this.apiGameModeRewardBonusMember1;
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
            if (this.getApiGameModeRewardBonusMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameModeRewardBonusMember1());
            }
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
            } else {
                writer.writeObjectValue(null, this.getApiGameModeRewardBonusMember1());
            }
        }
        /**
         * Sets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type {@link ApiGameModeRewardBonusMember1}
         * @param value Value to set for the ApiGameMode_rewardBonusMember1 property.
         */
        public void setApiGameModeRewardBonusMember1(@jakarta.annotation.Nullable final ApiGameModeRewardBonusMember1 value) {
            this.apiGameModeRewardBonusMember1 = value;
        }
        /**
         * Sets the double property value. Composed type representation for type {@link Double}
         * @param value Value to set for the double property.
         */
        public void setDouble(@jakarta.annotation.Nullable final Double value) {
            this.doubleEscaped = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiGameModeShortNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameModeShortName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameModeShortNameMember1}
         */
        private ApiGameModeShortNameMember1 apiGameModeShortNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameModeShortName}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameModeShortName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameModeShortName result = new ApiGameModeShortName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameModeShortNameMember1(new ApiGameModeShortNameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMode_shortNameMember1 property value. Composed type representation for type {@link ApiGameModeShortNameMember1}
         * @return a {@link ApiGameModeShortNameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameModeShortNameMember1 getApiGameModeShortNameMember1() {
            return this.apiGameModeShortNameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameModeShortNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameModeShortNameMember1());
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
                writer.writeObjectValue(null, this.getApiGameModeShortNameMember1());
            }
        }
        /**
         * Sets the ApiGameMode_shortNameMember1 property value. Composed type representation for type {@link ApiGameModeShortNameMember1}
         * @param value Value to set for the ApiGameMode_shortNameMember1 property.
         */
        public void setApiGameModeShortNameMember1(@jakarta.annotation.Nullable final ApiGameModeShortNameMember1 value) {
            this.apiGameModeShortNameMember1 = value;
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

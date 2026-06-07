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
 * Static game map definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameMap implements Parsable {
    /**
     * The coverImage property
     */
    private ApiGameMapCoverImage coverImage;
    /**
     * The id property
     */
    private String id;
    /**
     * The isReleased property
     */
    private Boolean isReleased;
    /**
     * The minimapImage property
     */
    private ApiGameMapMinimapImage minimapImage;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameMap}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameMap createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameMap();
    }
    /**
     * Gets the coverImage property value. The coverImage property
     * @return a {@link ApiGameMapCoverImage}
     */
    @jakarta.annotation.Nullable
    public ApiGameMapCoverImage getCoverImage() {
        return this.coverImage;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("coverImage", (n) -> { this.setCoverImage(n.getObjectValue(ApiGameMapCoverImage::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isReleased", (n) -> { this.setIsReleased(n.getBooleanValue()); });
        deserializerMap.put("minimapImage", (n) -> { this.setMinimapImage(n.getObjectValue(ApiGameMapMinimapImage::createFromDiscriminatorValue)); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
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
     * Gets the isReleased property value. The isReleased property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsReleased() {
        return this.isReleased;
    }
    /**
     * Gets the minimapImage property value. The minimapImage property
     * @return a {@link ApiGameMapMinimapImage}
     */
    @jakarta.annotation.Nullable
    public ApiGameMapMinimapImage getMinimapImage() {
        return this.minimapImage;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("coverImage", this.getCoverImage());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isReleased", this.getIsReleased());
        writer.writeObjectValue("minimapImage", this.getMinimapImage());
        writer.writeStringValue("nameKey", this.getNameKey());
    }
    /**
     * Sets the coverImage property value. The coverImage property
     * @param value Value to set for the coverImage property.
     */
    public void setCoverImage(@jakarta.annotation.Nullable final ApiGameMapCoverImage value) {
        this.coverImage = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isReleased property value. The isReleased property
     * @param value Value to set for the isReleased property.
     */
    public void setIsReleased(@jakarta.annotation.Nullable final Boolean value) {
        this.isReleased = value;
    }
    /**
     * Sets the minimapImage property value. The minimapImage property
     * @param value Value to set for the minimapImage property.
     */
    public void setMinimapImage(@jakarta.annotation.Nullable final ApiGameMapMinimapImage value) {
        this.minimapImage = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiGameMapCoverImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameMapCoverImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameMapCoverImageMember1}
         */
        private ApiGameMapCoverImageMember1 apiGameMapCoverImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameMapCoverImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameMapCoverImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameMapCoverImage result = new ApiGameMapCoverImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameMapCoverImageMember1(new ApiGameMapCoverImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMap_coverImageMember1 property value. Composed type representation for type {@link ApiGameMapCoverImageMember1}
         * @return a {@link ApiGameMapCoverImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameMapCoverImageMember1 getApiGameMapCoverImageMember1() {
            return this.apiGameMapCoverImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameMapCoverImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameMapCoverImageMember1());
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
                writer.writeObjectValue(null, this.getApiGameMapCoverImageMember1());
            }
        }
        /**
         * Sets the ApiGameMap_coverImageMember1 property value. Composed type representation for type {@link ApiGameMapCoverImageMember1}
         * @param value Value to set for the ApiGameMap_coverImageMember1 property.
         */
        public void setApiGameMapCoverImageMember1(@jakarta.annotation.Nullable final ApiGameMapCoverImageMember1 value) {
            this.apiGameMapCoverImageMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameMapMinimapImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameMapMinimapImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameMapMinimapImageMember1}
         */
        private ApiGameMapMinimapImageMember1 apiGameMapMinimapImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameMapMinimapImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameMapMinimapImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameMapMinimapImage result = new ApiGameMapMinimapImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameMapMinimapImageMember1(new ApiGameMapMinimapImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type {@link ApiGameMapMinimapImageMember1}
         * @return a {@link ApiGameMapMinimapImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameMapMinimapImageMember1 getApiGameMapMinimapImageMember1() {
            return this.apiGameMapMinimapImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameMapMinimapImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameMapMinimapImageMember1());
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
                writer.writeObjectValue(null, this.getApiGameMapMinimapImageMember1());
            }
        }
        /**
         * Sets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type {@link ApiGameMapMinimapImageMember1}
         * @param value Value to set for the ApiGameMap_minimapImageMember1 property.
         */
        public void setApiGameMapMinimapImageMember1(@jakarta.annotation.Nullable final ApiGameMapMinimapImageMember1 value) {
            this.apiGameMapMinimapImageMember1 = value;
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

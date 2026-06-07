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
 * Game-scoped playlist definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGamePlaylist implements Parsable {
    /**
     * The allowedGameModeIds property
     */
    private java.util.List<String> allowedGameModeIds;
    /**
     * The descriptionKey property
     */
    private ApiGamePlaylistDescriptionKey descriptionKey;
    /**
     * The id property
     */
    private String id;
    /**
     * The image property
     */
    private ApiGamePlaylistImage image;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGamePlaylist}
     */
    @jakarta.annotation.Nonnull
    public static ApiGamePlaylist createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGamePlaylist();
    }
    /**
     * Gets the allowedGameModeIds property value. The allowedGameModeIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAllowedGameModeIds() {
        return this.allowedGameModeIds;
    }
    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return a {@link ApiGamePlaylistDescriptionKey}
     */
    @jakarta.annotation.Nullable
    public ApiGamePlaylistDescriptionKey getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("allowedGameModeIds", (n) -> { this.setAllowedGameModeIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getObjectValue(ApiGamePlaylistDescriptionKey::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("image", (n) -> { this.setImage(n.getObjectValue(ApiGamePlaylistImage::createFromDiscriminatorValue)); });
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
     * Gets the image property value. The image property
     * @return a {@link ApiGamePlaylistImage}
     */
    @jakarta.annotation.Nullable
    public ApiGamePlaylistImage getImage() {
        return this.image;
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
        writer.writeCollectionOfPrimitiveValues("allowedGameModeIds", this.getAllowedGameModeIds());
        writer.writeObjectValue("descriptionKey", this.getDescriptionKey());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("image", this.getImage());
        writer.writeStringValue("nameKey", this.getNameKey());
    }
    /**
     * Sets the allowedGameModeIds property value. The allowedGameModeIds property
     * @param value Value to set for the allowedGameModeIds property.
     */
    public void setAllowedGameModeIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.allowedGameModeIds = value;
    }
    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param value Value to set for the descriptionKey property.
     */
    public void setDescriptionKey(@jakarta.annotation.Nullable final ApiGamePlaylistDescriptionKey value) {
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
    public void setImage(@jakarta.annotation.Nullable final ApiGamePlaylistImage value) {
        this.image = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiGamePlaylistDescriptionKeyMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGamePlaylistDescriptionKey implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGamePlaylistDescriptionKeyMember1}
         */
        private ApiGamePlaylistDescriptionKeyMember1 apiGamePlaylistDescriptionKeyMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGamePlaylistDescriptionKey}
         */
        @jakarta.annotation.Nonnull
        public static ApiGamePlaylistDescriptionKey createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGamePlaylistDescriptionKey result = new ApiGamePlaylistDescriptionKey();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGamePlaylistDescriptionKeyMember1(new ApiGamePlaylistDescriptionKeyMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGamePlaylist_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGamePlaylistDescriptionKeyMember1}
         * @return a {@link ApiGamePlaylistDescriptionKeyMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGamePlaylistDescriptionKeyMember1 getApiGamePlaylistDescriptionKeyMember1() {
            return this.apiGamePlaylistDescriptionKeyMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGamePlaylistDescriptionKeyMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGamePlaylistDescriptionKeyMember1());
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
                writer.writeObjectValue(null, this.getApiGamePlaylistDescriptionKeyMember1());
            }
        }
        /**
         * Sets the ApiGamePlaylist_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGamePlaylistDescriptionKeyMember1}
         * @param value Value to set for the ApiGamePlaylist_descriptionKeyMember1 property.
         */
        public void setApiGamePlaylistDescriptionKeyMember1(@jakarta.annotation.Nullable final ApiGamePlaylistDescriptionKeyMember1 value) {
            this.apiGamePlaylistDescriptionKeyMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGamePlaylistImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGamePlaylistImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGamePlaylistImageMember1}
         */
        private ApiGamePlaylistImageMember1 apiGamePlaylistImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGamePlaylistImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGamePlaylistImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGamePlaylistImage result = new ApiGamePlaylistImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGamePlaylistImageMember1(new ApiGamePlaylistImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type {@link ApiGamePlaylistImageMember1}
         * @return a {@link ApiGamePlaylistImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGamePlaylistImageMember1 getApiGamePlaylistImageMember1() {
            return this.apiGamePlaylistImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGamePlaylistImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGamePlaylistImageMember1());
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
                writer.writeObjectValue(null, this.getApiGamePlaylistImageMember1());
            }
        }
        /**
         * Sets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type {@link ApiGamePlaylistImageMember1}
         * @param value Value to set for the ApiGamePlaylist_imageMember1 property.
         */
        public void setApiGamePlaylistImageMember1(@jakarta.annotation.Nullable final ApiGamePlaylistImageMember1 value) {
            this.apiGamePlaylistImageMember1 = value;
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

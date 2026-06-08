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
 * The user&apos;s primary (highest-viewer) live stream.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiPrimaryStream implements Parsable {
    /**
     * Game/category being streamed, when known.
     */
    private ApiPrimaryStreamGameName gameName;
    /**
     * ISO timestamp the user was last observed live, when known.
     */
    private ApiPrimaryStreamLastLiveAt lastLiveAt;
    /**
     * Supported streaming platform.
     */
    private StreamPlatform platform;
    /**
     * Stream start time (platform-provided ISO timestamp), when known.
     */
    private ApiPrimaryStreamStartedAt startedAt;
    /**
     * Watch URL, when known.
     */
    private ApiPrimaryStreamStreamUrl streamUrl;
    /**
     * Stream thumbnail URL, when known.
     */
    private ApiPrimaryStreamThumbnailUrl thumbnailUrl;
    /**
     * Stream title, when known.
     */
    private ApiPrimaryStreamTitle title;
    /**
     * Current viewer count, when known.
     */
    private ApiPrimaryStreamViewerCount viewerCount;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiPrimaryStream}
     */
    @jakarta.annotation.Nonnull
    public static ApiPrimaryStream createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiPrimaryStream();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("gameName", (n) -> { this.setGameName(n.getObjectValue(ApiPrimaryStreamGameName::createFromDiscriminatorValue)); });
        deserializerMap.put("lastLiveAt", (n) -> { this.setLastLiveAt(n.getObjectValue(ApiPrimaryStreamLastLiveAt::createFromDiscriminatorValue)); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(StreamPlatform::forValue)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getObjectValue(ApiPrimaryStreamStartedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("streamUrl", (n) -> { this.setStreamUrl(n.getObjectValue(ApiPrimaryStreamStreamUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("thumbnailUrl", (n) -> { this.setThumbnailUrl(n.getObjectValue(ApiPrimaryStreamThumbnailUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("title", (n) -> { this.setTitle(n.getObjectValue(ApiPrimaryStreamTitle::createFromDiscriminatorValue)); });
        deserializerMap.put("viewerCount", (n) -> { this.setViewerCount(n.getObjectValue(ApiPrimaryStreamViewerCount::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameName property value. Game/category being streamed, when known.
     * @return a {@link ApiPrimaryStreamGameName}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamGameName getGameName() {
        return this.gameName;
    }
    /**
     * Gets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @return a {@link ApiPrimaryStreamLastLiveAt}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamLastLiveAt getLastLiveAt() {
        return this.lastLiveAt;
    }
    /**
     * Gets the platform property value. Supported streaming platform.
     * @return a {@link StreamPlatform}
     */
    @jakarta.annotation.Nullable
    public StreamPlatform getPlatform() {
        return this.platform;
    }
    /**
     * Gets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
     * @return a {@link ApiPrimaryStreamStartedAt}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamStartedAt getStartedAt() {
        return this.startedAt;
    }
    /**
     * Gets the streamUrl property value. Watch URL, when known.
     * @return a {@link ApiPrimaryStreamStreamUrl}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamStreamUrl getStreamUrl() {
        return this.streamUrl;
    }
    /**
     * Gets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @return a {@link ApiPrimaryStreamThumbnailUrl}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamThumbnailUrl getThumbnailUrl() {
        return this.thumbnailUrl;
    }
    /**
     * Gets the title property value. Stream title, when known.
     * @return a {@link ApiPrimaryStreamTitle}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamTitle getTitle() {
        return this.title;
    }
    /**
     * Gets the viewerCount property value. Current viewer count, when known.
     * @return a {@link ApiPrimaryStreamViewerCount}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStreamViewerCount getViewerCount() {
        return this.viewerCount;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("gameName", this.getGameName());
        writer.writeObjectValue("lastLiveAt", this.getLastLiveAt());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeObjectValue("startedAt", this.getStartedAt());
        writer.writeObjectValue("streamUrl", this.getStreamUrl());
        writer.writeObjectValue("thumbnailUrl", this.getThumbnailUrl());
        writer.writeObjectValue("title", this.getTitle());
        writer.writeObjectValue("viewerCount", this.getViewerCount());
    }
    /**
     * Sets the gameName property value. Game/category being streamed, when known.
     * @param value Value to set for the gameName property.
     */
    public void setGameName(@jakarta.annotation.Nullable final ApiPrimaryStreamGameName value) {
        this.gameName = value;
    }
    /**
     * Sets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @param value Value to set for the lastLiveAt property.
     */
    public void setLastLiveAt(@jakarta.annotation.Nullable final ApiPrimaryStreamLastLiveAt value) {
        this.lastLiveAt = value;
    }
    /**
     * Sets the platform property value. Supported streaming platform.
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final StreamPlatform value) {
        this.platform = value;
    }
    /**
     * Sets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
     * @param value Value to set for the startedAt property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final ApiPrimaryStreamStartedAt value) {
        this.startedAt = value;
    }
    /**
     * Sets the streamUrl property value. Watch URL, when known.
     * @param value Value to set for the streamUrl property.
     */
    public void setStreamUrl(@jakarta.annotation.Nullable final ApiPrimaryStreamStreamUrl value) {
        this.streamUrl = value;
    }
    /**
     * Sets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @param value Value to set for the thumbnailUrl property.
     */
    public void setThumbnailUrl(@jakarta.annotation.Nullable final ApiPrimaryStreamThumbnailUrl value) {
        this.thumbnailUrl = value;
    }
    /**
     * Sets the title property value. Stream title, when known.
     * @param value Value to set for the title property.
     */
    public void setTitle(@jakarta.annotation.Nullable final ApiPrimaryStreamTitle value) {
        this.title = value;
    }
    /**
     * Sets the viewerCount property value. Current viewer count, when known.
     * @param value Value to set for the viewerCount property.
     */
    public void setViewerCount(@jakarta.annotation.Nullable final ApiPrimaryStreamViewerCount value) {
        this.viewerCount = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiPrimaryStreamGameNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamGameName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamGameNameMember1}
         */
        private ApiPrimaryStreamGameNameMember1 apiPrimaryStreamGameNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamGameName}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamGameName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamGameName result = new ApiPrimaryStreamGameName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamGameNameMember1(new ApiPrimaryStreamGameNameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_gameNameMember1 property value. Composed type representation for type {@link ApiPrimaryStreamGameNameMember1}
         * @return a {@link ApiPrimaryStreamGameNameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamGameNameMember1 getApiPrimaryStreamGameNameMember1() {
            return this.apiPrimaryStreamGameNameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamGameNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamGameNameMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamGameNameMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_gameNameMember1 property value. Composed type representation for type {@link ApiPrimaryStreamGameNameMember1}
         * @param value Value to set for the ApiPrimaryStream_gameNameMember1 property.
         */
        public void setApiPrimaryStreamGameNameMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamGameNameMember1 value) {
            this.apiPrimaryStreamGameNameMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamLastLiveAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamLastLiveAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamLastLiveAtMember1}
         */
        private ApiPrimaryStreamLastLiveAtMember1 apiPrimaryStreamLastLiveAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamLastLiveAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamLastLiveAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamLastLiveAt result = new ApiPrimaryStreamLastLiveAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamLastLiveAtMember1(new ApiPrimaryStreamLastLiveAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_lastLiveAtMember1 property value. Composed type representation for type {@link ApiPrimaryStreamLastLiveAtMember1}
         * @return a {@link ApiPrimaryStreamLastLiveAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamLastLiveAtMember1 getApiPrimaryStreamLastLiveAtMember1() {
            return this.apiPrimaryStreamLastLiveAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamLastLiveAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamLastLiveAtMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamLastLiveAtMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_lastLiveAtMember1 property value. Composed type representation for type {@link ApiPrimaryStreamLastLiveAtMember1}
         * @param value Value to set for the ApiPrimaryStream_lastLiveAtMember1 property.
         */
        public void setApiPrimaryStreamLastLiveAtMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamLastLiveAtMember1 value) {
            this.apiPrimaryStreamLastLiveAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamStartedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamStartedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamStartedAtMember1}
         */
        private ApiPrimaryStreamStartedAtMember1 apiPrimaryStreamStartedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamStartedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamStartedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamStartedAt result = new ApiPrimaryStreamStartedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamStartedAtMember1(new ApiPrimaryStreamStartedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_startedAtMember1 property value. Composed type representation for type {@link ApiPrimaryStreamStartedAtMember1}
         * @return a {@link ApiPrimaryStreamStartedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamStartedAtMember1 getApiPrimaryStreamStartedAtMember1() {
            return this.apiPrimaryStreamStartedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamStartedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamStartedAtMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamStartedAtMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_startedAtMember1 property value. Composed type representation for type {@link ApiPrimaryStreamStartedAtMember1}
         * @param value Value to set for the ApiPrimaryStream_startedAtMember1 property.
         */
        public void setApiPrimaryStreamStartedAtMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamStartedAtMember1 value) {
            this.apiPrimaryStreamStartedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamStreamUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamStreamUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamStreamUrlMember1}
         */
        private ApiPrimaryStreamStreamUrlMember1 apiPrimaryStreamStreamUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamStreamUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamStreamUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamStreamUrl result = new ApiPrimaryStreamStreamUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamStreamUrlMember1(new ApiPrimaryStreamStreamUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_streamUrlMember1 property value. Composed type representation for type {@link ApiPrimaryStreamStreamUrlMember1}
         * @return a {@link ApiPrimaryStreamStreamUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamStreamUrlMember1 getApiPrimaryStreamStreamUrlMember1() {
            return this.apiPrimaryStreamStreamUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamStreamUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamStreamUrlMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamStreamUrlMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_streamUrlMember1 property value. Composed type representation for type {@link ApiPrimaryStreamStreamUrlMember1}
         * @param value Value to set for the ApiPrimaryStream_streamUrlMember1 property.
         */
        public void setApiPrimaryStreamStreamUrlMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamStreamUrlMember1 value) {
            this.apiPrimaryStreamStreamUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamThumbnailUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamThumbnailUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamThumbnailUrlMember1}
         */
        private ApiPrimaryStreamThumbnailUrlMember1 apiPrimaryStreamThumbnailUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamThumbnailUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamThumbnailUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamThumbnailUrl result = new ApiPrimaryStreamThumbnailUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamThumbnailUrlMember1(new ApiPrimaryStreamThumbnailUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_thumbnailUrlMember1 property value. Composed type representation for type {@link ApiPrimaryStreamThumbnailUrlMember1}
         * @return a {@link ApiPrimaryStreamThumbnailUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamThumbnailUrlMember1 getApiPrimaryStreamThumbnailUrlMember1() {
            return this.apiPrimaryStreamThumbnailUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamThumbnailUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamThumbnailUrlMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamThumbnailUrlMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_thumbnailUrlMember1 property value. Composed type representation for type {@link ApiPrimaryStreamThumbnailUrlMember1}
         * @param value Value to set for the ApiPrimaryStream_thumbnailUrlMember1 property.
         */
        public void setApiPrimaryStreamThumbnailUrlMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamThumbnailUrlMember1 value) {
            this.apiPrimaryStreamThumbnailUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamTitleMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamTitle implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamTitleMember1}
         */
        private ApiPrimaryStreamTitleMember1 apiPrimaryStreamTitleMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamTitle}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamTitle createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamTitle result = new ApiPrimaryStreamTitle();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiPrimaryStreamTitleMember1(new ApiPrimaryStreamTitleMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_titleMember1 property value. Composed type representation for type {@link ApiPrimaryStreamTitleMember1}
         * @return a {@link ApiPrimaryStreamTitleMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamTitleMember1 getApiPrimaryStreamTitleMember1() {
            return this.apiPrimaryStreamTitleMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamTitleMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamTitleMember1());
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
                writer.writeObjectValue(null, this.getApiPrimaryStreamTitleMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_titleMember1 property value. Composed type representation for type {@link ApiPrimaryStreamTitleMember1}
         * @param value Value to set for the ApiPrimaryStream_titleMember1 property.
         */
        public void setApiPrimaryStreamTitleMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamTitleMember1 value) {
            this.apiPrimaryStreamTitleMember1 = value;
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
     * Composed type wrapper for classes {@link ApiPrimaryStreamViewerCountMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiPrimaryStreamViewerCount implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiPrimaryStreamViewerCountMember1}
         */
        private ApiPrimaryStreamViewerCountMember1 apiPrimaryStreamViewerCountMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiPrimaryStreamViewerCount}
         */
        @jakarta.annotation.Nonnull
        public static ApiPrimaryStreamViewerCount createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiPrimaryStreamViewerCount result = new ApiPrimaryStreamViewerCount();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setApiPrimaryStreamViewerCountMember1(new ApiPrimaryStreamViewerCountMember1());
            }
            return result;
        }
        /**
         * Gets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type {@link ApiPrimaryStreamViewerCountMember1}
         * @return a {@link ApiPrimaryStreamViewerCountMember1}
         */
        @jakarta.annotation.Nullable
        public ApiPrimaryStreamViewerCountMember1 getApiPrimaryStreamViewerCountMember1() {
            return this.apiPrimaryStreamViewerCountMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiPrimaryStreamViewerCountMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiPrimaryStreamViewerCountMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the integer property value. Composed type representation for type {@link Integer}
         * @return a {@link Integer}
         */
        @jakarta.annotation.Nullable
        public Integer getInteger() {
            return this.integer;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getApiPrimaryStreamViewerCountMember1());
            }
        }
        /**
         * Sets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type {@link ApiPrimaryStreamViewerCountMember1}
         * @param value Value to set for the ApiPrimaryStream_viewerCountMember1 property.
         */
        public void setApiPrimaryStreamViewerCountMember1(@jakarta.annotation.Nullable final ApiPrimaryStreamViewerCountMember1 value) {
            this.apiPrimaryStreamViewerCountMember1 = value;
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
    }
}

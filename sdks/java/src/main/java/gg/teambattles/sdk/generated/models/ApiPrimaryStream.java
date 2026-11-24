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
    private String gameName;
    /**
     * ISO timestamp the user was last observed live, when known.
     */
    private String lastLiveAt;
    /**
     * Supported streaming platform.
     */
    private StreamPlatform platform;
    /**
     * Stream start time (platform-provided ISO timestamp), when known.
     */
    private String startedAt;
    /**
     * Watch URL, when known.
     */
    private String streamUrl;
    /**
     * Stream thumbnail URL, when known.
     */
    private String thumbnailUrl;
    /**
     * Stream title, when known.
     */
    private String title;
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
        deserializerMap.put("gameName", (n) -> { this.setGameName(n.getStringValue()); });
        deserializerMap.put("lastLiveAt", (n) -> { this.setLastLiveAt(n.getStringValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(StreamPlatform::forValue)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getStringValue()); });
        deserializerMap.put("streamUrl", (n) -> { this.setStreamUrl(n.getStringValue()); });
        deserializerMap.put("thumbnailUrl", (n) -> { this.setThumbnailUrl(n.getStringValue()); });
        deserializerMap.put("title", (n) -> { this.setTitle(n.getStringValue()); });
        deserializerMap.put("viewerCount", (n) -> { this.setViewerCount(n.getObjectValue(ApiPrimaryStreamViewerCount::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameName property value. Game/category being streamed, when known.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameName() {
        return this.gameName;
    }
    /**
     * Gets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLastLiveAt() {
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStartedAt() {
        return this.startedAt;
    }
    /**
     * Gets the streamUrl property value. Watch URL, when known.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStreamUrl() {
        return this.streamUrl;
    }
    /**
     * Gets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }
    /**
     * Gets the title property value. Stream title, when known.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTitle() {
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
        writer.writeStringValue("gameName", this.getGameName());
        writer.writeStringValue("lastLiveAt", this.getLastLiveAt());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeStringValue("startedAt", this.getStartedAt());
        writer.writeStringValue("streamUrl", this.getStreamUrl());
        writer.writeStringValue("thumbnailUrl", this.getThumbnailUrl());
        writer.writeStringValue("title", this.getTitle());
        writer.writeObjectValue("viewerCount", this.getViewerCount());
    }
    /**
     * Sets the gameName property value. Game/category being streamed, when known.
     * @param value Value to set for the gameName property.
     */
    public void setGameName(@jakarta.annotation.Nullable final String value) {
        this.gameName = value;
    }
    /**
     * Sets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @param value Value to set for the lastLiveAt property.
     */
    public void setLastLiveAt(@jakarta.annotation.Nullable final String value) {
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
    public void setStartedAt(@jakarta.annotation.Nullable final String value) {
        this.startedAt = value;
    }
    /**
     * Sets the streamUrl property value. Watch URL, when known.
     * @param value Value to set for the streamUrl property.
     */
    public void setStreamUrl(@jakarta.annotation.Nullable final String value) {
        this.streamUrl = value;
    }
    /**
     * Sets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @param value Value to set for the thumbnailUrl property.
     */
    public void setThumbnailUrl(@jakarta.annotation.Nullable final String value) {
        this.thumbnailUrl = value;
    }
    /**
     * Sets the title property value. Stream title, when known.
     * @param value Value to set for the title property.
     */
    public void setTitle(@jakarta.annotation.Nullable final String value) {
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

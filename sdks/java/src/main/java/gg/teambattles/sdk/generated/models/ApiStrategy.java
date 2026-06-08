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
 * API-safe shareable strategy.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStrategy implements Parsable {
    /**
     * The createdAt property
     */
    private ApiStrategyCreatedAt createdAt;
    /**
     * Author description, when set.
     */
    private ApiStrategyDescription description;
    /**
     * Game slug the strategy targets.
     */
    private String game;
    /**
     * Strategy ID.
     */
    private String id;
    /**
     * Built-in map slug, or the sentinel &quot;__custom&quot; for a custom map.
     */
    private String mapId;
    /**
     * Map render orientation in degrees (0, 90, 180, or 270).
     */
    private Double mapRotation;
    /**
     * Strategy name.
     */
    private String name;
    /**
     * Owning user ID.
     */
    private String ownerId;
    /**
     * Whether frame playback wraps from the last stage to the first.
     */
    private Boolean playbackLoop;
    /**
     * Freshly signed preview image URL, when a preview has been rendered.
     */
    private ApiStrategyPreviewUrl previewUrl;
    /**
     * Public share slug.
     */
    private String shareSlug;
    /**
     * The stageCount property
     */
    private Integer stageCount;
    /**
     * The stages property
     */
    private java.util.List<ApiStrategyStage> stages;
    /**
     * The updatedAt property
     */
    private ApiStrategyUpdatedAt updatedAt;
    /**
     * Strategy share visibility setting.
     */
    private StrategyVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStrategy}
     */
    @jakarta.annotation.Nonnull
    public static ApiStrategy createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStrategy();
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link ApiStrategyCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the description property value. Author description, when set.
     * @return a {@link ApiStrategyDescription}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyDescription getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(15);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiStrategyCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getObjectValue(ApiStrategyDescription::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("mapId", (n) -> { this.setMapId(n.getStringValue()); });
        deserializerMap.put("mapRotation", (n) -> { this.setMapRotation(n.getDoubleValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("ownerId", (n) -> { this.setOwnerId(n.getStringValue()); });
        deserializerMap.put("playbackLoop", (n) -> { this.setPlaybackLoop(n.getBooleanValue()); });
        deserializerMap.put("previewUrl", (n) -> { this.setPreviewUrl(n.getObjectValue(ApiStrategyPreviewUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("shareSlug", (n) -> { this.setShareSlug(n.getStringValue()); });
        deserializerMap.put("stageCount", (n) -> { this.setStageCount(n.getIntegerValue()); });
        deserializerMap.put("stages", (n) -> { this.setStages(n.getCollectionOfObjectValues(ApiStrategyStage::createFromDiscriminatorValue)); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getObjectValue(ApiStrategyUpdatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(StrategyVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the game property value. Game slug the strategy targets.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGame() {
        return this.game;
    }
    /**
     * Gets the id property value. Strategy ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the mapId property value. Built-in map slug, or the sentinel &quot;__custom&quot; for a custom map.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMapId() {
        return this.mapId;
    }
    /**
     * Gets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMapRotation() {
        return this.mapRotation;
    }
    /**
     * Gets the name property value. Strategy name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the ownerId property value. Owning user ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getOwnerId() {
        return this.ownerId;
    }
    /**
     * Gets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getPlaybackLoop() {
        return this.playbackLoop;
    }
    /**
     * Gets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
     * @return a {@link ApiStrategyPreviewUrl}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyPreviewUrl getPreviewUrl() {
        return this.previewUrl;
    }
    /**
     * Gets the shareSlug property value. Public share slug.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getShareSlug() {
        return this.shareSlug;
    }
    /**
     * Gets the stageCount property value. The stageCount property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getStageCount() {
        return this.stageCount;
    }
    /**
     * Gets the stages property value. The stages property
     * @return a {@link java.util.List<ApiStrategyStage>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiStrategyStage> getStages() {
        return this.stages;
    }
    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return a {@link ApiStrategyUpdatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiStrategyUpdatedAt getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Gets the visibility property value. Strategy share visibility setting.
     * @return a {@link StrategyVisibility}
     */
    @jakarta.annotation.Nullable
    public StrategyVisibility getVisibility() {
        return this.visibility;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeObjectValue("description", this.getDescription());
        writer.writeStringValue("game", this.getGame());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("mapId", this.getMapId());
        writer.writeDoubleValue("mapRotation", this.getMapRotation());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("ownerId", this.getOwnerId());
        writer.writeBooleanValue("playbackLoop", this.getPlaybackLoop());
        writer.writeObjectValue("previewUrl", this.getPreviewUrl());
        writer.writeStringValue("shareSlug", this.getShareSlug());
        writer.writeIntegerValue("stageCount", this.getStageCount());
        writer.writeCollectionOfObjectValues("stages", this.getStages());
        writer.writeObjectValue("updatedAt", this.getUpdatedAt());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final ApiStrategyCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the description property value. Author description, when set.
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final ApiStrategyDescription value) {
        this.description = value;
    }
    /**
     * Sets the game property value. Game slug the strategy targets.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final String value) {
        this.game = value;
    }
    /**
     * Sets the id property value. Strategy ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the mapId property value. Built-in map slug, or the sentinel &quot;__custom&quot; for a custom map.
     * @param value Value to set for the mapId property.
     */
    public void setMapId(@jakarta.annotation.Nullable final String value) {
        this.mapId = value;
    }
    /**
     * Sets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
     * @param value Value to set for the mapRotation property.
     */
    public void setMapRotation(@jakarta.annotation.Nullable final Double value) {
        this.mapRotation = value;
    }
    /**
     * Sets the name property value. Strategy name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the ownerId property value. Owning user ID.
     * @param value Value to set for the ownerId property.
     */
    public void setOwnerId(@jakarta.annotation.Nullable final String value) {
        this.ownerId = value;
    }
    /**
     * Sets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
     * @param value Value to set for the playbackLoop property.
     */
    public void setPlaybackLoop(@jakarta.annotation.Nullable final Boolean value) {
        this.playbackLoop = value;
    }
    /**
     * Sets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
     * @param value Value to set for the previewUrl property.
     */
    public void setPreviewUrl(@jakarta.annotation.Nullable final ApiStrategyPreviewUrl value) {
        this.previewUrl = value;
    }
    /**
     * Sets the shareSlug property value. Public share slug.
     * @param value Value to set for the shareSlug property.
     */
    public void setShareSlug(@jakarta.annotation.Nullable final String value) {
        this.shareSlug = value;
    }
    /**
     * Sets the stageCount property value. The stageCount property
     * @param value Value to set for the stageCount property.
     */
    public void setStageCount(@jakarta.annotation.Nullable final Integer value) {
        this.stageCount = value;
    }
    /**
     * Sets the stages property value. The stages property
     * @param value Value to set for the stages property.
     */
    public void setStages(@jakarta.annotation.Nullable final java.util.List<ApiStrategyStage> value) {
        this.stages = value;
    }
    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final ApiStrategyUpdatedAt value) {
        this.updatedAt = value;
    }
    /**
     * Sets the visibility property value. Strategy share visibility setting.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final StrategyVisibility value) {
        this.visibility = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiStrategyCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyCreatedAtMember1}
         */
        private ApiStrategyCreatedAtMember1 apiStrategyCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyCreatedAt result = new ApiStrategyCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyCreatedAtMember1(new ApiStrategyCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategy_createdAtMember1 property value. Composed type representation for type {@link ApiStrategyCreatedAtMember1}
         * @return a {@link ApiStrategyCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyCreatedAtMember1 getApiStrategyCreatedAtMember1() {
            return this.apiStrategyCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyCreatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiStrategyCreatedAtMember1());
            }
        }
        /**
         * Sets the ApiStrategy_createdAtMember1 property value. Composed type representation for type {@link ApiStrategyCreatedAtMember1}
         * @param value Value to set for the ApiStrategy_createdAtMember1 property.
         */
        public void setApiStrategyCreatedAtMember1(@jakarta.annotation.Nullable final ApiStrategyCreatedAtMember1 value) {
            this.apiStrategyCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiStrategyDescriptionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyDescription implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyDescriptionMember1}
         */
        private ApiStrategyDescriptionMember1 apiStrategyDescriptionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyDescription}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyDescription createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyDescription result = new ApiStrategyDescription();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyDescriptionMember1(new ApiStrategyDescriptionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategy_descriptionMember1 property value. Composed type representation for type {@link ApiStrategyDescriptionMember1}
         * @return a {@link ApiStrategyDescriptionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyDescriptionMember1 getApiStrategyDescriptionMember1() {
            return this.apiStrategyDescriptionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyDescriptionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyDescriptionMember1());
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
                writer.writeObjectValue(null, this.getApiStrategyDescriptionMember1());
            }
        }
        /**
         * Sets the ApiStrategy_descriptionMember1 property value. Composed type representation for type {@link ApiStrategyDescriptionMember1}
         * @param value Value to set for the ApiStrategy_descriptionMember1 property.
         */
        public void setApiStrategyDescriptionMember1(@jakarta.annotation.Nullable final ApiStrategyDescriptionMember1 value) {
            this.apiStrategyDescriptionMember1 = value;
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
     * Composed type wrapper for classes {@link ApiStrategyPreviewUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyPreviewUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyPreviewUrlMember1}
         */
        private ApiStrategyPreviewUrlMember1 apiStrategyPreviewUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyPreviewUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyPreviewUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyPreviewUrl result = new ApiStrategyPreviewUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyPreviewUrlMember1(new ApiStrategyPreviewUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type {@link ApiStrategyPreviewUrlMember1}
         * @return a {@link ApiStrategyPreviewUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyPreviewUrlMember1 getApiStrategyPreviewUrlMember1() {
            return this.apiStrategyPreviewUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyPreviewUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyPreviewUrlMember1());
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
                writer.writeObjectValue(null, this.getApiStrategyPreviewUrlMember1());
            }
        }
        /**
         * Sets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type {@link ApiStrategyPreviewUrlMember1}
         * @param value Value to set for the ApiStrategy_previewUrlMember1 property.
         */
        public void setApiStrategyPreviewUrlMember1(@jakarta.annotation.Nullable final ApiStrategyPreviewUrlMember1 value) {
            this.apiStrategyPreviewUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiStrategyUpdatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiStrategyUpdatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiStrategyUpdatedAtMember1}
         */
        private ApiStrategyUpdatedAtMember1 apiStrategyUpdatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiStrategyUpdatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiStrategyUpdatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiStrategyUpdatedAt result = new ApiStrategyUpdatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiStrategyUpdatedAtMember1(new ApiStrategyUpdatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiStrategy_updatedAtMember1 property value. Composed type representation for type {@link ApiStrategyUpdatedAtMember1}
         * @return a {@link ApiStrategyUpdatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiStrategyUpdatedAtMember1 getApiStrategyUpdatedAtMember1() {
            return this.apiStrategyUpdatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiStrategyUpdatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiStrategyUpdatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiStrategyUpdatedAtMember1());
            }
        }
        /**
         * Sets the ApiStrategy_updatedAtMember1 property value. Composed type representation for type {@link ApiStrategyUpdatedAtMember1}
         * @param value Value to set for the ApiStrategy_updatedAtMember1 property.
         */
        public void setApiStrategyUpdatedAtMember1(@jakarta.annotation.Nullable final ApiStrategyUpdatedAtMember1 value) {
            this.apiStrategyUpdatedAtMember1 = value;
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

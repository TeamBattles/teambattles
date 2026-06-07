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
 * Static public game catalog entry.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameCatalogEntry implements Parsable {
    /**
     * The bannerImage property
     */
    private ApiGameCatalogEntryBannerImage bannerImage;
    /**
     * The category property
     */
    private String category;
    /**
     * Active Convex games-table ID, when available for match APIs.
     */
    private ApiGameCatalogEntryConvexId convexId;
    /**
     * The coverImage property
     */
    private ApiGameCatalogEntryCoverImage coverImage;
    /**
     * The defaultTeamSize property
     */
    private Integer defaultTeamSize;
    /**
     * The descriptionKey property
     */
    private ApiGameCatalogEntryDescriptionKey descriptionKey;
    /**
     * The hasCompetitiveMode property
     */
    private Boolean hasCompetitiveMode;
    /**
     * Static public game ID/slug.
     */
    private String id;
    /**
     * The isAvailableForMatchApi property
     */
    private Boolean isAvailableForMatchApi;
    /**
     * The isComingSoon property
     */
    private Boolean isComingSoon;
    /**
     * The maps property
     */
    private java.util.List<ApiGameMap> maps;
    /**
     * The modeMapPools property
     */
    private java.util.List<ApiGameModeMapPool> modeMapPools;
    /**
     * The modes property
     */
    private java.util.List<ApiGameMode> modes;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * The playlists property
     */
    private java.util.List<ApiGamePlaylist> playlists;
    /**
     * The rulesLink property
     */
    private ApiGameCatalogEntryRulesLink rulesLink;
    /**
     * The shortNameKey property
     */
    private ApiGameCatalogEntryShortNameKey shortNameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameCatalogEntry}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameCatalogEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameCatalogEntry();
    }
    /**
     * Gets the bannerImage property value. The bannerImage property
     * @return a {@link ApiGameCatalogEntryBannerImage}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryBannerImage getBannerImage() {
        return this.bannerImage;
    }
    /**
     * Gets the category property value. The category property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCategory() {
        return this.category;
    }
    /**
     * Gets the convexId property value. Active Convex games-table ID, when available for match APIs.
     * @return a {@link ApiGameCatalogEntryConvexId}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryConvexId getConvexId() {
        return this.convexId;
    }
    /**
     * Gets the coverImage property value. The coverImage property
     * @return a {@link ApiGameCatalogEntryCoverImage}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryCoverImage getCoverImage() {
        return this.coverImage;
    }
    /**
     * Gets the defaultTeamSize property value. The defaultTeamSize property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDefaultTeamSize() {
        return this.defaultTeamSize;
    }
    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return a {@link ApiGameCatalogEntryDescriptionKey}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryDescriptionKey getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(17);
        deserializerMap.put("bannerImage", (n) -> { this.setBannerImage(n.getObjectValue(ApiGameCatalogEntryBannerImage::createFromDiscriminatorValue)); });
        deserializerMap.put("category", (n) -> { this.setCategory(n.getStringValue()); });
        deserializerMap.put("convexId", (n) -> { this.setConvexId(n.getObjectValue(ApiGameCatalogEntryConvexId::createFromDiscriminatorValue)); });
        deserializerMap.put("coverImage", (n) -> { this.setCoverImage(n.getObjectValue(ApiGameCatalogEntryCoverImage::createFromDiscriminatorValue)); });
        deserializerMap.put("defaultTeamSize", (n) -> { this.setDefaultTeamSize(n.getIntegerValue()); });
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getObjectValue(ApiGameCatalogEntryDescriptionKey::createFromDiscriminatorValue)); });
        deserializerMap.put("hasCompetitiveMode", (n) -> { this.setHasCompetitiveMode(n.getBooleanValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isAvailableForMatchApi", (n) -> { this.setIsAvailableForMatchApi(n.getBooleanValue()); });
        deserializerMap.put("isComingSoon", (n) -> { this.setIsComingSoon(n.getBooleanValue()); });
        deserializerMap.put("maps", (n) -> { this.setMaps(n.getCollectionOfObjectValues(ApiGameMap::createFromDiscriminatorValue)); });
        deserializerMap.put("modeMapPools", (n) -> { this.setModeMapPools(n.getCollectionOfObjectValues(ApiGameModeMapPool::createFromDiscriminatorValue)); });
        deserializerMap.put("modes", (n) -> { this.setModes(n.getCollectionOfObjectValues(ApiGameMode::createFromDiscriminatorValue)); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        deserializerMap.put("playlists", (n) -> { this.setPlaylists(n.getCollectionOfObjectValues(ApiGamePlaylist::createFromDiscriminatorValue)); });
        deserializerMap.put("rulesLink", (n) -> { this.setRulesLink(n.getObjectValue(ApiGameCatalogEntryRulesLink::createFromDiscriminatorValue)); });
        deserializerMap.put("shortNameKey", (n) -> { this.setShortNameKey(n.getObjectValue(ApiGameCatalogEntryShortNameKey::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the hasCompetitiveMode property value. The hasCompetitiveMode property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getHasCompetitiveMode() {
        return this.hasCompetitiveMode;
    }
    /**
     * Gets the id property value. Static public game ID/slug.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsAvailableForMatchApi() {
        return this.isAvailableForMatchApi;
    }
    /**
     * Gets the isComingSoon property value. The isComingSoon property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsComingSoon() {
        return this.isComingSoon;
    }
    /**
     * Gets the maps property value. The maps property
     * @return a {@link java.util.List<ApiGameMap>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGameMap> getMaps() {
        return this.maps;
    }
    /**
     * Gets the modeMapPools property value. The modeMapPools property
     * @return a {@link java.util.List<ApiGameModeMapPool>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGameModeMapPool> getModeMapPools() {
        return this.modeMapPools;
    }
    /**
     * Gets the modes property value. The modes property
     * @return a {@link java.util.List<ApiGameMode>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGameMode> getModes() {
        return this.modes;
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
     * Gets the playlists property value. The playlists property
     * @return a {@link java.util.List<ApiGamePlaylist>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGamePlaylist> getPlaylists() {
        return this.playlists;
    }
    /**
     * Gets the rulesLink property value. The rulesLink property
     * @return a {@link ApiGameCatalogEntryRulesLink}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryRulesLink getRulesLink() {
        return this.rulesLink;
    }
    /**
     * Gets the shortNameKey property value. The shortNameKey property
     * @return a {@link ApiGameCatalogEntryShortNameKey}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntryShortNameKey getShortNameKey() {
        return this.shortNameKey;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("bannerImage", this.getBannerImage());
        writer.writeStringValue("category", this.getCategory());
        writer.writeObjectValue("convexId", this.getConvexId());
        writer.writeObjectValue("coverImage", this.getCoverImage());
        writer.writeIntegerValue("defaultTeamSize", this.getDefaultTeamSize());
        writer.writeObjectValue("descriptionKey", this.getDescriptionKey());
        writer.writeBooleanValue("hasCompetitiveMode", this.getHasCompetitiveMode());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isAvailableForMatchApi", this.getIsAvailableForMatchApi());
        writer.writeBooleanValue("isComingSoon", this.getIsComingSoon());
        writer.writeCollectionOfObjectValues("maps", this.getMaps());
        writer.writeCollectionOfObjectValues("modeMapPools", this.getModeMapPools());
        writer.writeCollectionOfObjectValues("modes", this.getModes());
        writer.writeStringValue("nameKey", this.getNameKey());
        writer.writeCollectionOfObjectValues("playlists", this.getPlaylists());
        writer.writeObjectValue("rulesLink", this.getRulesLink());
        writer.writeObjectValue("shortNameKey", this.getShortNameKey());
    }
    /**
     * Sets the bannerImage property value. The bannerImage property
     * @param value Value to set for the bannerImage property.
     */
    public void setBannerImage(@jakarta.annotation.Nullable final ApiGameCatalogEntryBannerImage value) {
        this.bannerImage = value;
    }
    /**
     * Sets the category property value. The category property
     * @param value Value to set for the category property.
     */
    public void setCategory(@jakarta.annotation.Nullable final String value) {
        this.category = value;
    }
    /**
     * Sets the convexId property value. Active Convex games-table ID, when available for match APIs.
     * @param value Value to set for the convexId property.
     */
    public void setConvexId(@jakarta.annotation.Nullable final ApiGameCatalogEntryConvexId value) {
        this.convexId = value;
    }
    /**
     * Sets the coverImage property value. The coverImage property
     * @param value Value to set for the coverImage property.
     */
    public void setCoverImage(@jakarta.annotation.Nullable final ApiGameCatalogEntryCoverImage value) {
        this.coverImage = value;
    }
    /**
     * Sets the defaultTeamSize property value. The defaultTeamSize property
     * @param value Value to set for the defaultTeamSize property.
     */
    public void setDefaultTeamSize(@jakarta.annotation.Nullable final Integer value) {
        this.defaultTeamSize = value;
    }
    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param value Value to set for the descriptionKey property.
     */
    public void setDescriptionKey(@jakarta.annotation.Nullable final ApiGameCatalogEntryDescriptionKey value) {
        this.descriptionKey = value;
    }
    /**
     * Sets the hasCompetitiveMode property value. The hasCompetitiveMode property
     * @param value Value to set for the hasCompetitiveMode property.
     */
    public void setHasCompetitiveMode(@jakarta.annotation.Nullable final Boolean value) {
        this.hasCompetitiveMode = value;
    }
    /**
     * Sets the id property value. Static public game ID/slug.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
     * @param value Value to set for the isAvailableForMatchApi property.
     */
    public void setIsAvailableForMatchApi(@jakarta.annotation.Nullable final Boolean value) {
        this.isAvailableForMatchApi = value;
    }
    /**
     * Sets the isComingSoon property value. The isComingSoon property
     * @param value Value to set for the isComingSoon property.
     */
    public void setIsComingSoon(@jakarta.annotation.Nullable final Boolean value) {
        this.isComingSoon = value;
    }
    /**
     * Sets the maps property value. The maps property
     * @param value Value to set for the maps property.
     */
    public void setMaps(@jakarta.annotation.Nullable final java.util.List<ApiGameMap> value) {
        this.maps = value;
    }
    /**
     * Sets the modeMapPools property value. The modeMapPools property
     * @param value Value to set for the modeMapPools property.
     */
    public void setModeMapPools(@jakarta.annotation.Nullable final java.util.List<ApiGameModeMapPool> value) {
        this.modeMapPools = value;
    }
    /**
     * Sets the modes property value. The modes property
     * @param value Value to set for the modes property.
     */
    public void setModes(@jakarta.annotation.Nullable final java.util.List<ApiGameMode> value) {
        this.modes = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
    /**
     * Sets the playlists property value. The playlists property
     * @param value Value to set for the playlists property.
     */
    public void setPlaylists(@jakarta.annotation.Nullable final java.util.List<ApiGamePlaylist> value) {
        this.playlists = value;
    }
    /**
     * Sets the rulesLink property value. The rulesLink property
     * @param value Value to set for the rulesLink property.
     */
    public void setRulesLink(@jakarta.annotation.Nullable final ApiGameCatalogEntryRulesLink value) {
        this.rulesLink = value;
    }
    /**
     * Sets the shortNameKey property value. The shortNameKey property
     * @param value Value to set for the shortNameKey property.
     */
    public void setShortNameKey(@jakarta.annotation.Nullable final ApiGameCatalogEntryShortNameKey value) {
        this.shortNameKey = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiGameCatalogEntryBannerImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryBannerImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryBannerImageMember1}
         */
        private ApiGameCatalogEntryBannerImageMember1 apiGameCatalogEntryBannerImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryBannerImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryBannerImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryBannerImage result = new ApiGameCatalogEntryBannerImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryBannerImageMember1(new ApiGameCatalogEntryBannerImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryBannerImageMember1}
         * @return a {@link ApiGameCatalogEntryBannerImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryBannerImageMember1 getApiGameCatalogEntryBannerImageMember1() {
            return this.apiGameCatalogEntryBannerImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryBannerImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryBannerImageMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryBannerImageMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryBannerImageMember1}
         * @param value Value to set for the ApiGameCatalogEntry_bannerImageMember1 property.
         */
        public void setApiGameCatalogEntryBannerImageMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryBannerImageMember1 value) {
            this.apiGameCatalogEntryBannerImageMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameCatalogEntryConvexIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryConvexId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryConvexIdMember1}
         */
        private ApiGameCatalogEntryConvexIdMember1 apiGameCatalogEntryConvexIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryConvexId}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryConvexId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryConvexId result = new ApiGameCatalogEntryConvexId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryConvexIdMember1(new ApiGameCatalogEntryConvexIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_convexIdMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryConvexIdMember1}
         * @return a {@link ApiGameCatalogEntryConvexIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryConvexIdMember1 getApiGameCatalogEntryConvexIdMember1() {
            return this.apiGameCatalogEntryConvexIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryConvexIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryConvexIdMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryConvexIdMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_convexIdMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryConvexIdMember1}
         * @param value Value to set for the ApiGameCatalogEntry_convexIdMember1 property.
         */
        public void setApiGameCatalogEntryConvexIdMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryConvexIdMember1 value) {
            this.apiGameCatalogEntryConvexIdMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameCatalogEntryCoverImageMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryCoverImage implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryCoverImageMember1}
         */
        private ApiGameCatalogEntryCoverImageMember1 apiGameCatalogEntryCoverImageMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryCoverImage}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryCoverImage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryCoverImage result = new ApiGameCatalogEntryCoverImage();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryCoverImageMember1(new ApiGameCatalogEntryCoverImageMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryCoverImageMember1}
         * @return a {@link ApiGameCatalogEntryCoverImageMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryCoverImageMember1 getApiGameCatalogEntryCoverImageMember1() {
            return this.apiGameCatalogEntryCoverImageMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryCoverImageMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryCoverImageMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryCoverImageMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryCoverImageMember1}
         * @param value Value to set for the ApiGameCatalogEntry_coverImageMember1 property.
         */
        public void setApiGameCatalogEntryCoverImageMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryCoverImageMember1 value) {
            this.apiGameCatalogEntryCoverImageMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameCatalogEntryDescriptionKeyMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryDescriptionKey implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryDescriptionKeyMember1}
         */
        private ApiGameCatalogEntryDescriptionKeyMember1 apiGameCatalogEntryDescriptionKeyMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryDescriptionKey}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryDescriptionKey createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryDescriptionKey result = new ApiGameCatalogEntryDescriptionKey();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryDescriptionKeyMember1(new ApiGameCatalogEntryDescriptionKeyMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryDescriptionKeyMember1}
         * @return a {@link ApiGameCatalogEntryDescriptionKeyMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryDescriptionKeyMember1 getApiGameCatalogEntryDescriptionKeyMember1() {
            return this.apiGameCatalogEntryDescriptionKeyMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryDescriptionKeyMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryDescriptionKeyMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryDescriptionKeyMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_descriptionKeyMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryDescriptionKeyMember1}
         * @param value Value to set for the ApiGameCatalogEntry_descriptionKeyMember1 property.
         */
        public void setApiGameCatalogEntryDescriptionKeyMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryDescriptionKeyMember1 value) {
            this.apiGameCatalogEntryDescriptionKeyMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameCatalogEntryRulesLinkMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryRulesLink implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryRulesLinkMember1}
         */
        private ApiGameCatalogEntryRulesLinkMember1 apiGameCatalogEntryRulesLinkMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryRulesLink}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryRulesLink createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryRulesLink result = new ApiGameCatalogEntryRulesLink();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryRulesLinkMember1(new ApiGameCatalogEntryRulesLinkMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryRulesLinkMember1}
         * @return a {@link ApiGameCatalogEntryRulesLinkMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryRulesLinkMember1 getApiGameCatalogEntryRulesLinkMember1() {
            return this.apiGameCatalogEntryRulesLinkMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryRulesLinkMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryRulesLinkMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryRulesLinkMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryRulesLinkMember1}
         * @param value Value to set for the ApiGameCatalogEntry_rulesLinkMember1 property.
         */
        public void setApiGameCatalogEntryRulesLinkMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryRulesLinkMember1 value) {
            this.apiGameCatalogEntryRulesLinkMember1 = value;
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
     * Composed type wrapper for classes {@link ApiGameCatalogEntryShortNameKeyMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameCatalogEntryShortNameKey implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameCatalogEntryShortNameKeyMember1}
         */
        private ApiGameCatalogEntryShortNameKeyMember1 apiGameCatalogEntryShortNameKeyMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameCatalogEntryShortNameKey}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameCatalogEntryShortNameKey createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameCatalogEntryShortNameKey result = new ApiGameCatalogEntryShortNameKey();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiGameCatalogEntryShortNameKeyMember1(new ApiGameCatalogEntryShortNameKeyMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameCatalogEntry_shortNameKeyMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryShortNameKeyMember1}
         * @return a {@link ApiGameCatalogEntryShortNameKeyMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameCatalogEntryShortNameKeyMember1 getApiGameCatalogEntryShortNameKeyMember1() {
            return this.apiGameCatalogEntryShortNameKeyMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameCatalogEntryShortNameKeyMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameCatalogEntryShortNameKeyMember1());
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
                writer.writeObjectValue(null, this.getApiGameCatalogEntryShortNameKeyMember1());
            }
        }
        /**
         * Sets the ApiGameCatalogEntry_shortNameKeyMember1 property value. Composed type representation for type {@link ApiGameCatalogEntryShortNameKeyMember1}
         * @param value Value to set for the ApiGameCatalogEntry_shortNameKeyMember1 property.
         */
        public void setApiGameCatalogEntryShortNameKeyMember1(@jakarta.annotation.Nullable final ApiGameCatalogEntryShortNameKeyMember1 value) {
            this.apiGameCatalogEntryShortNameKeyMember1 = value;
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

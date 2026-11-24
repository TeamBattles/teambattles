package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
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
    private String bannerImage;
    /**
     * The category property
     */
    private String category;
    /**
     * Active Convex games-table ID, when available for match APIs.
     */
    private String convexId;
    /**
     * The coverImage property
     */
    private String coverImage;
    /**
     * The defaultTeamSize property
     */
    private Integer defaultTeamSize;
    /**
     * The descriptionKey property
     */
    private String descriptionKey;
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
    private String rulesLink;
    /**
     * The shortNameKey property
     */
    private String shortNameKey;
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBannerImage() {
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getConvexId() {
        return this.convexId;
    }
    /**
     * Gets the coverImage property value. The coverImage property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCoverImage() {
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(17);
        deserializerMap.put("bannerImage", (n) -> { this.setBannerImage(n.getStringValue()); });
        deserializerMap.put("category", (n) -> { this.setCategory(n.getStringValue()); });
        deserializerMap.put("convexId", (n) -> { this.setConvexId(n.getStringValue()); });
        deserializerMap.put("coverImage", (n) -> { this.setCoverImage(n.getStringValue()); });
        deserializerMap.put("defaultTeamSize", (n) -> { this.setDefaultTeamSize(n.getIntegerValue()); });
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getStringValue()); });
        deserializerMap.put("hasCompetitiveMode", (n) -> { this.setHasCompetitiveMode(n.getBooleanValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isAvailableForMatchApi", (n) -> { this.setIsAvailableForMatchApi(n.getBooleanValue()); });
        deserializerMap.put("isComingSoon", (n) -> { this.setIsComingSoon(n.getBooleanValue()); });
        deserializerMap.put("maps", (n) -> { this.setMaps(n.getCollectionOfObjectValues(ApiGameMap::createFromDiscriminatorValue)); });
        deserializerMap.put("modeMapPools", (n) -> { this.setModeMapPools(n.getCollectionOfObjectValues(ApiGameModeMapPool::createFromDiscriminatorValue)); });
        deserializerMap.put("modes", (n) -> { this.setModes(n.getCollectionOfObjectValues(ApiGameMode::createFromDiscriminatorValue)); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        deserializerMap.put("playlists", (n) -> { this.setPlaylists(n.getCollectionOfObjectValues(ApiGamePlaylist::createFromDiscriminatorValue)); });
        deserializerMap.put("rulesLink", (n) -> { this.setRulesLink(n.getStringValue()); });
        deserializerMap.put("shortNameKey", (n) -> { this.setShortNameKey(n.getStringValue()); });
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRulesLink() {
        return this.rulesLink;
    }
    /**
     * Gets the shortNameKey property value. The shortNameKey property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getShortNameKey() {
        return this.shortNameKey;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("bannerImage", this.getBannerImage());
        writer.writeStringValue("category", this.getCategory());
        writer.writeStringValue("convexId", this.getConvexId());
        writer.writeStringValue("coverImage", this.getCoverImage());
        writer.writeIntegerValue("defaultTeamSize", this.getDefaultTeamSize());
        writer.writeStringValue("descriptionKey", this.getDescriptionKey());
        writer.writeBooleanValue("hasCompetitiveMode", this.getHasCompetitiveMode());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isAvailableForMatchApi", this.getIsAvailableForMatchApi());
        writer.writeBooleanValue("isComingSoon", this.getIsComingSoon());
        writer.writeCollectionOfObjectValues("maps", this.getMaps());
        writer.writeCollectionOfObjectValues("modeMapPools", this.getModeMapPools());
        writer.writeCollectionOfObjectValues("modes", this.getModes());
        writer.writeStringValue("nameKey", this.getNameKey());
        writer.writeCollectionOfObjectValues("playlists", this.getPlaylists());
        writer.writeStringValue("rulesLink", this.getRulesLink());
        writer.writeStringValue("shortNameKey", this.getShortNameKey());
    }
    /**
     * Sets the bannerImage property value. The bannerImage property
     * @param value Value to set for the bannerImage property.
     */
    public void setBannerImage(@jakarta.annotation.Nullable final String value) {
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
    public void setConvexId(@jakarta.annotation.Nullable final String value) {
        this.convexId = value;
    }
    /**
     * Sets the coverImage property value. The coverImage property
     * @param value Value to set for the coverImage property.
     */
    public void setCoverImage(@jakarta.annotation.Nullable final String value) {
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
    public void setDescriptionKey(@jakarta.annotation.Nullable final String value) {
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
    public void setRulesLink(@jakarta.annotation.Nullable final String value) {
        this.rulesLink = value;
    }
    /**
     * Sets the shortNameKey property value. The shortNameKey property
     * @param value Value to set for the shortNameKey property.
     */
    public void setShortNameKey(@jakarta.annotation.Nullable final String value) {
        this.shortNameKey = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentUpdateRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     */
    private String bannerStorageId;
    /**
     * The checkInOpensMinutesBefore property
     */
    private Integer checkInOpensMinutesBefore;
    /**
     * The checkInRequired property
     */
    private Boolean checkInRequired;
    /**
     * The description property
     */
    private String description;
    /**
     * Unix ms.
     */
    private Integer endsAt;
    /**
     * The format property
     */
    private TournamentUpdateRequestBodyFormat format;
    /**
     * Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
     */
    private TournamentFormatConfig formatConfig;
    /**
     * Convex game id.
     */
    private String gameId;
    /**
     * Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     */
    private String logoStorageId;
    /**
     * Re-checked against the format entrant ceiling AND the host plan&apos;s participant limit whenever it or `format` changes.
     */
    private Integer maxParticipants;
    /**
     * The minParticipants property
     */
    private Integer minParticipants;
    /**
     * The name property
     */
    private String name;
    /**
     * Convex game playlist id.
     */
    private String playlistId;
    /**
     * The prizeBreakdown property
     */
    private java.util.List<TournamentPrizeBreakdownEntry> prizeBreakdown;
    /**
     * The prizeCurrency property
     */
    private String prizeCurrency;
    /**
     * The prizeDescription property
     */
    private String prizeDescription;
    /**
     * The prizePool property
     */
    private Double prizePool;
    /**
     * Unix ms.
     */
    private Integer registrationEndsAt;
    /**
     * The registrationMode property
     */
    private TournamentUpdateRequestBodyRegistrationMode registrationMode;
    /**
     * Unix ms.
     */
    private Integer registrationStartsAt;
    /**
     * The rules property
     */
    private String rules;
    /**
     * Organizer social links.
     */
    private TournamentSocialLinks socialLinks;
    /**
     * The sponsorTags property
     */
    private java.util.List<TournamentSponsorTag> sponsorTags;
    /**
     * Unix ms.
     */
    private Integer startsAt;
    /**
     * The teamSize property
     */
    private Integer teamSize;
    /**
     * The visibility property
     */
    private TournamentUpdateRequestBodyVisibility visibility;
    /**
     * Instantiates a new {@link TournamentUpdateRequestBody} and sets the default values.
     */
    public TournamentUpdateRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentUpdateRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentUpdateRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentUpdateRequestBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBannerStorageId() {
        return this.bannerStorageId;
    }
    /**
     * Gets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCheckInOpensMinutesBefore() {
        return this.checkInOpensMinutesBefore;
    }
    /**
     * Gets the checkInRequired property value. The checkInRequired property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getCheckInRequired() {
        return this.checkInRequired;
    }
    /**
     * Gets the description property value. The description property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescription() {
        return this.description;
    }
    /**
     * Gets the endsAt property value. Unix ms.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getEndsAt() {
        return this.endsAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(26);
        deserializerMap.put("bannerStorageId", (n) -> { this.setBannerStorageId(n.getStringValue()); });
        deserializerMap.put("checkInOpensMinutesBefore", (n) -> { this.setCheckInOpensMinutesBefore(n.getIntegerValue()); });
        deserializerMap.put("checkInRequired", (n) -> { this.setCheckInRequired(n.getBooleanValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("endsAt", (n) -> { this.setEndsAt(n.getIntegerValue()); });
        deserializerMap.put("format", (n) -> { this.setFormat(n.getEnumValue(TournamentUpdateRequestBodyFormat::forValue)); });
        deserializerMap.put("formatConfig", (n) -> { this.setFormatConfig(n.getObjectValue(TournamentFormatConfig::createFromDiscriminatorValue)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("logoStorageId", (n) -> { this.setLogoStorageId(n.getStringValue()); });
        deserializerMap.put("maxParticipants", (n) -> { this.setMaxParticipants(n.getIntegerValue()); });
        deserializerMap.put("minParticipants", (n) -> { this.setMinParticipants(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("playlistId", (n) -> { this.setPlaylistId(n.getStringValue()); });
        deserializerMap.put("prizeBreakdown", (n) -> { this.setPrizeBreakdown(n.getCollectionOfObjectValues(TournamentPrizeBreakdownEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("prizeCurrency", (n) -> { this.setPrizeCurrency(n.getStringValue()); });
        deserializerMap.put("prizeDescription", (n) -> { this.setPrizeDescription(n.getStringValue()); });
        deserializerMap.put("prizePool", (n) -> { this.setPrizePool(n.getDoubleValue()); });
        deserializerMap.put("registrationEndsAt", (n) -> { this.setRegistrationEndsAt(n.getIntegerValue()); });
        deserializerMap.put("registrationMode", (n) -> { this.setRegistrationMode(n.getEnumValue(TournamentUpdateRequestBodyRegistrationMode::forValue)); });
        deserializerMap.put("registrationStartsAt", (n) -> { this.setRegistrationStartsAt(n.getIntegerValue()); });
        deserializerMap.put("rules", (n) -> { this.setRules(n.getStringValue()); });
        deserializerMap.put("socialLinks", (n) -> { this.setSocialLinks(n.getObjectValue(TournamentSocialLinks::createFromDiscriminatorValue)); });
        deserializerMap.put("sponsorTags", (n) -> { this.setSponsorTags(n.getCollectionOfObjectValues(TournamentSponsorTag::createFromDiscriminatorValue)); });
        deserializerMap.put("startsAt", (n) -> { this.setStartsAt(n.getIntegerValue()); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getIntegerValue()); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(TournamentUpdateRequestBodyVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the format property value. The format property
     * @return a {@link TournamentUpdateRequestBodyFormat}
     */
    @jakarta.annotation.Nullable
    public TournamentUpdateRequestBodyFormat getFormat() {
        return this.format;
    }
    /**
     * Gets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
     * @return a {@link TournamentFormatConfig}
     */
    @jakarta.annotation.Nullable
    public TournamentFormatConfig getFormatConfig() {
        return this.formatConfig;
    }
    /**
     * Gets the gameId property value. Convex game id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLogoStorageId() {
        return this.logoStorageId;
    }
    /**
     * Gets the maxParticipants property value. Re-checked against the format entrant ceiling AND the host plan&apos;s participant limit whenever it or `format` changes.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMaxParticipants() {
        return this.maxParticipants;
    }
    /**
     * Gets the minParticipants property value. The minParticipants property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMinParticipants() {
        return this.minParticipants;
    }
    /**
     * Gets the name property value. The name property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the playlistId property value. Convex game playlist id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPlaylistId() {
        return this.playlistId;
    }
    /**
     * Gets the prizeBreakdown property value. The prizeBreakdown property
     * @return a {@link java.util.List<TournamentPrizeBreakdownEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentPrizeBreakdownEntry> getPrizeBreakdown() {
        return this.prizeBreakdown;
    }
    /**
     * Gets the prizeCurrency property value. The prizeCurrency property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPrizeCurrency() {
        return this.prizeCurrency;
    }
    /**
     * Gets the prizeDescription property value. The prizeDescription property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPrizeDescription() {
        return this.prizeDescription;
    }
    /**
     * Gets the prizePool property value. The prizePool property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getPrizePool() {
        return this.prizePool;
    }
    /**
     * Gets the registrationEndsAt property value. Unix ms.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getRegistrationEndsAt() {
        return this.registrationEndsAt;
    }
    /**
     * Gets the registrationMode property value. The registrationMode property
     * @return a {@link TournamentUpdateRequestBodyRegistrationMode}
     */
    @jakarta.annotation.Nullable
    public TournamentUpdateRequestBodyRegistrationMode getRegistrationMode() {
        return this.registrationMode;
    }
    /**
     * Gets the registrationStartsAt property value. Unix ms.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getRegistrationStartsAt() {
        return this.registrationStartsAt;
    }
    /**
     * Gets the rules property value. The rules property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRules() {
        return this.rules;
    }
    /**
     * Gets the socialLinks property value. Organizer social links.
     * @return a {@link TournamentSocialLinks}
     */
    @jakarta.annotation.Nullable
    public TournamentSocialLinks getSocialLinks() {
        return this.socialLinks;
    }
    /**
     * Gets the sponsorTags property value. The sponsorTags property
     * @return a {@link java.util.List<TournamentSponsorTag>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentSponsorTag> getSponsorTags() {
        return this.sponsorTags;
    }
    /**
     * Gets the startsAt property value. Unix ms.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getStartsAt() {
        return this.startsAt;
    }
    /**
     * Gets the teamSize property value. The teamSize property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamSize() {
        return this.teamSize;
    }
    /**
     * Gets the visibility property value. The visibility property
     * @return a {@link TournamentUpdateRequestBodyVisibility}
     */
    @jakarta.annotation.Nullable
    public TournamentUpdateRequestBodyVisibility getVisibility() {
        return this.visibility;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("bannerStorageId", this.getBannerStorageId());
        writer.writeIntegerValue("checkInOpensMinutesBefore", this.getCheckInOpensMinutesBefore());
        writer.writeBooleanValue("checkInRequired", this.getCheckInRequired());
        writer.writeStringValue("description", this.getDescription());
        writer.writeIntegerValue("endsAt", this.getEndsAt());
        writer.writeEnumValue("format", this.getFormat());
        writer.writeObjectValue("formatConfig", this.getFormatConfig());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("logoStorageId", this.getLogoStorageId());
        writer.writeIntegerValue("maxParticipants", this.getMaxParticipants());
        writer.writeIntegerValue("minParticipants", this.getMinParticipants());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("playlistId", this.getPlaylistId());
        writer.writeCollectionOfObjectValues("prizeBreakdown", this.getPrizeBreakdown());
        writer.writeStringValue("prizeCurrency", this.getPrizeCurrency());
        writer.writeStringValue("prizeDescription", this.getPrizeDescription());
        writer.writeDoubleValue("prizePool", this.getPrizePool());
        writer.writeIntegerValue("registrationEndsAt", this.getRegistrationEndsAt());
        writer.writeEnumValue("registrationMode", this.getRegistrationMode());
        writer.writeIntegerValue("registrationStartsAt", this.getRegistrationStartsAt());
        writer.writeStringValue("rules", this.getRules());
        writer.writeObjectValue("socialLinks", this.getSocialLinks());
        writer.writeCollectionOfObjectValues("sponsorTags", this.getSponsorTags());
        writer.writeIntegerValue("startsAt", this.getStartsAt());
        writer.writeIntegerValue("teamSize", this.getTeamSize());
        writer.writeEnumValue("visibility", this.getVisibility());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @param value Value to set for the bannerStorageId property.
     */
    public void setBannerStorageId(@jakarta.annotation.Nullable final String value) {
        this.bannerStorageId = value;
    }
    /**
     * Sets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
     * @param value Value to set for the checkInOpensMinutesBefore property.
     */
    public void setCheckInOpensMinutesBefore(@jakarta.annotation.Nullable final Integer value) {
        this.checkInOpensMinutesBefore = value;
    }
    /**
     * Sets the checkInRequired property value. The checkInRequired property
     * @param value Value to set for the checkInRequired property.
     */
    public void setCheckInRequired(@jakarta.annotation.Nullable final Boolean value) {
        this.checkInRequired = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the endsAt property value. Unix ms.
     * @param value Value to set for the endsAt property.
     */
    public void setEndsAt(@jakarta.annotation.Nullable final Integer value) {
        this.endsAt = value;
    }
    /**
     * Sets the format property value. The format property
     * @param value Value to set for the format property.
     */
    public void setFormat(@jakarta.annotation.Nullable final TournamentUpdateRequestBodyFormat value) {
        this.format = value;
    }
    /**
     * Sets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
     * @param value Value to set for the formatConfig property.
     */
    public void setFormatConfig(@jakarta.annotation.Nullable final TournamentFormatConfig value) {
        this.formatConfig = value;
    }
    /**
     * Sets the gameId property value. Convex game id.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @param value Value to set for the logoStorageId property.
     */
    public void setLogoStorageId(@jakarta.annotation.Nullable final String value) {
        this.logoStorageId = value;
    }
    /**
     * Sets the maxParticipants property value. Re-checked against the format entrant ceiling AND the host plan&apos;s participant limit whenever it or `format` changes.
     * @param value Value to set for the maxParticipants property.
     */
    public void setMaxParticipants(@jakarta.annotation.Nullable final Integer value) {
        this.maxParticipants = value;
    }
    /**
     * Sets the minParticipants property value. The minParticipants property
     * @param value Value to set for the minParticipants property.
     */
    public void setMinParticipants(@jakarta.annotation.Nullable final Integer value) {
        this.minParticipants = value;
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the playlistId property value. Convex game playlist id.
     * @param value Value to set for the playlistId property.
     */
    public void setPlaylistId(@jakarta.annotation.Nullable final String value) {
        this.playlistId = value;
    }
    /**
     * Sets the prizeBreakdown property value. The prizeBreakdown property
     * @param value Value to set for the prizeBreakdown property.
     */
    public void setPrizeBreakdown(@jakarta.annotation.Nullable final java.util.List<TournamentPrizeBreakdownEntry> value) {
        this.prizeBreakdown = value;
    }
    /**
     * Sets the prizeCurrency property value. The prizeCurrency property
     * @param value Value to set for the prizeCurrency property.
     */
    public void setPrizeCurrency(@jakarta.annotation.Nullable final String value) {
        this.prizeCurrency = value;
    }
    /**
     * Sets the prizeDescription property value. The prizeDescription property
     * @param value Value to set for the prizeDescription property.
     */
    public void setPrizeDescription(@jakarta.annotation.Nullable final String value) {
        this.prizeDescription = value;
    }
    /**
     * Sets the prizePool property value. The prizePool property
     * @param value Value to set for the prizePool property.
     */
    public void setPrizePool(@jakarta.annotation.Nullable final Double value) {
        this.prizePool = value;
    }
    /**
     * Sets the registrationEndsAt property value. Unix ms.
     * @param value Value to set for the registrationEndsAt property.
     */
    public void setRegistrationEndsAt(@jakarta.annotation.Nullable final Integer value) {
        this.registrationEndsAt = value;
    }
    /**
     * Sets the registrationMode property value. The registrationMode property
     * @param value Value to set for the registrationMode property.
     */
    public void setRegistrationMode(@jakarta.annotation.Nullable final TournamentUpdateRequestBodyRegistrationMode value) {
        this.registrationMode = value;
    }
    /**
     * Sets the registrationStartsAt property value. Unix ms.
     * @param value Value to set for the registrationStartsAt property.
     */
    public void setRegistrationStartsAt(@jakarta.annotation.Nullable final Integer value) {
        this.registrationStartsAt = value;
    }
    /**
     * Sets the rules property value. The rules property
     * @param value Value to set for the rules property.
     */
    public void setRules(@jakarta.annotation.Nullable final String value) {
        this.rules = value;
    }
    /**
     * Sets the socialLinks property value. Organizer social links.
     * @param value Value to set for the socialLinks property.
     */
    public void setSocialLinks(@jakarta.annotation.Nullable final TournamentSocialLinks value) {
        this.socialLinks = value;
    }
    /**
     * Sets the sponsorTags property value. The sponsorTags property
     * @param value Value to set for the sponsorTags property.
     */
    public void setSponsorTags(@jakarta.annotation.Nullable final java.util.List<TournamentSponsorTag> value) {
        this.sponsorTags = value;
    }
    /**
     * Sets the startsAt property value. Unix ms.
     * @param value Value to set for the startsAt property.
     */
    public void setStartsAt(@jakarta.annotation.Nullable final Integer value) {
        this.startsAt = value;
    }
    /**
     * Sets the teamSize property value. The teamSize property
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final Integer value) {
        this.teamSize = value;
    }
    /**
     * Sets the visibility property value. The visibility property
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final TournamentUpdateRequestBodyVisibility value) {
        this.visibility = value;
    }
}

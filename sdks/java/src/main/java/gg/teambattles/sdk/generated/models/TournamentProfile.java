package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentProfile implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Platform review state, independent of `status`.
     */
    private String approvalStatus;
    /**
     * Banner image URL.
     */
    private String bannerUrl;
    /**
     * Bracket format of a tournament.
     */
    private TournamentFormat format;
    /**
     * Game summary, or null if the game row is missing.
     */
    private UntypedNode game;
    /**
     * Host identity (user, org, or league), or null if unresolvable.
     */
    private UntypedNode host;
    /**
     * Tournament ID.
     */
    private String id;
    /**
     * Whether the tournament appears in discovery.
     */
    private Boolean isPubliclyListed;
    /**
     * Logo image URL.
     */
    private String logoUrl;
    /**
     * Participant cap.
     */
    private Integer maxParticipants;
    /**
     * Tournament display name.
     */
    private String name;
    /**
     * Whether the tournament is non-terminal AND awaiting organizer action on approval.
     */
    private Boolean needsAttention;
    /**
     * Current number of participants.
     */
    private Integer participantCount;
    /**
     * URL-friendly tournament identifier.
     */
    private String slug;
    /**
     * Lifecycle status of a tournament.
     */
    private TournamentStatus status;
    /**
     * Players per participating team.
     */
    private Integer teamSize;
    /**
     * The caller&apos;s standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
     */
    private TournamentProfileViewerManagement viewerManagement;
    /**
     * PUBLIC or UNLISTED.
     */
    private String visibility;
    /**
     * Instantiates a new {@link TournamentProfile} and sets the default values.
     */
    public TournamentProfile() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentProfile}
     */
    @jakarta.annotation.Nonnull
    public static TournamentProfile createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentProfile();
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
     * Gets the approvalStatus property value. Platform review state, independent of `status`.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getApprovalStatus() {
        return this.approvalStatus;
    }
    /**
     * Gets the bannerUrl property value. Banner image URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(17);
        deserializerMap.put("approvalStatus", (n) -> { this.setApprovalStatus(n.getStringValue()); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getStringValue()); });
        deserializerMap.put("format", (n) -> { this.setFormat(n.getEnumValue(TournamentFormat::forValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("host", (n) -> { this.setHost(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("_id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isPubliclyListed", (n) -> { this.setIsPubliclyListed(n.getBooleanValue()); });
        deserializerMap.put("logoUrl", (n) -> { this.setLogoUrl(n.getStringValue()); });
        deserializerMap.put("maxParticipants", (n) -> { this.setMaxParticipants(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("needsAttention", (n) -> { this.setNeedsAttention(n.getBooleanValue()); });
        deserializerMap.put("participantCount", (n) -> { this.setParticipantCount(n.getIntegerValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentStatus::forValue)); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getIntegerValue()); });
        deserializerMap.put("viewerManagement", (n) -> { this.setViewerManagement(n.getObjectValue(TournamentProfileViewerManagement::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the format property value. Bracket format of a tournament.
     * @return a {@link TournamentFormat}
     */
    @jakarta.annotation.Nullable
    public TournamentFormat getFormat() {
        return this.format;
    }
    /**
     * Gets the game property value. Game summary, or null if the game row is missing.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getGame() {
        return this.game;
    }
    /**
     * Gets the host property value. Host identity (user, org, or league), or null if unresolvable.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getHost() {
        return this.host;
    }
    /**
     * Gets the _id property value. Tournament ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isPubliclyListed property value. Whether the tournament appears in discovery.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsPubliclyListed() {
        return this.isPubliclyListed;
    }
    /**
     * Gets the logoUrl property value. Logo image URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLogoUrl() {
        return this.logoUrl;
    }
    /**
     * Gets the maxParticipants property value. Participant cap.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMaxParticipants() {
        return this.maxParticipants;
    }
    /**
     * Gets the name property value. Tournament display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getNeedsAttention() {
        return this.needsAttention;
    }
    /**
     * Gets the participantCount property value. Current number of participants.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getParticipantCount() {
        return this.participantCount;
    }
    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the status property value. Lifecycle status of a tournament.
     * @return a {@link TournamentStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the teamSize property value. Players per participating team.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamSize() {
        return this.teamSize;
    }
    /**
     * Gets the viewerManagement property value. The caller&apos;s standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
     * @return a {@link TournamentProfileViewerManagement}
     */
    @jakarta.annotation.Nullable
    public TournamentProfileViewerManagement getViewerManagement() {
        return this.viewerManagement;
    }
    /**
     * Gets the visibility property value. PUBLIC or UNLISTED.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getVisibility() {
        return this.visibility;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("approvalStatus", this.getApprovalStatus());
        writer.writeStringValue("bannerUrl", this.getBannerUrl());
        writer.writeEnumValue("format", this.getFormat());
        writer.writeObjectValue("game", this.getGame());
        writer.writeObjectValue("host", this.getHost());
        writer.writeStringValue("_id", this.getId());
        writer.writeBooleanValue("isPubliclyListed", this.getIsPubliclyListed());
        writer.writeStringValue("logoUrl", this.getLogoUrl());
        writer.writeIntegerValue("maxParticipants", this.getMaxParticipants());
        writer.writeStringValue("name", this.getName());
        writer.writeBooleanValue("needsAttention", this.getNeedsAttention());
        writer.writeIntegerValue("participantCount", this.getParticipantCount());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeIntegerValue("teamSize", this.getTeamSize());
        writer.writeObjectValue("viewerManagement", this.getViewerManagement());
        writer.writeStringValue("visibility", this.getVisibility());
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
     * Sets the approvalStatus property value. Platform review state, independent of `status`.
     * @param value Value to set for the approvalStatus property.
     */
    public void setApprovalStatus(@jakarta.annotation.Nullable final String value) {
        this.approvalStatus = value;
    }
    /**
     * Sets the bannerUrl property value. Banner image URL.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final String value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the format property value. Bracket format of a tournament.
     * @param value Value to set for the format property.
     */
    public void setFormat(@jakarta.annotation.Nullable final TournamentFormat value) {
        this.format = value;
    }
    /**
     * Sets the game property value. Game summary, or null if the game row is missing.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final UntypedNode value) {
        this.game = value;
    }
    /**
     * Sets the host property value. Host identity (user, org, or league), or null if unresolvable.
     * @param value Value to set for the host property.
     */
    public void setHost(@jakarta.annotation.Nullable final UntypedNode value) {
        this.host = value;
    }
    /**
     * Sets the _id property value. Tournament ID.
     * @param value Value to set for the _id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isPubliclyListed property value. Whether the tournament appears in discovery.
     * @param value Value to set for the isPubliclyListed property.
     */
    public void setIsPubliclyListed(@jakarta.annotation.Nullable final Boolean value) {
        this.isPubliclyListed = value;
    }
    /**
     * Sets the logoUrl property value. Logo image URL.
     * @param value Value to set for the logoUrl property.
     */
    public void setLogoUrl(@jakarta.annotation.Nullable final String value) {
        this.logoUrl = value;
    }
    /**
     * Sets the maxParticipants property value. Participant cap.
     * @param value Value to set for the maxParticipants property.
     */
    public void setMaxParticipants(@jakarta.annotation.Nullable final Integer value) {
        this.maxParticipants = value;
    }
    /**
     * Sets the name property value. Tournament display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
     * @param value Value to set for the needsAttention property.
     */
    public void setNeedsAttention(@jakarta.annotation.Nullable final Boolean value) {
        this.needsAttention = value;
    }
    /**
     * Sets the participantCount property value. Current number of participants.
     * @param value Value to set for the participantCount property.
     */
    public void setParticipantCount(@jakarta.annotation.Nullable final Integer value) {
        this.participantCount = value;
    }
    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the status property value. Lifecycle status of a tournament.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentStatus value) {
        this.status = value;
    }
    /**
     * Sets the teamSize property value. Players per participating team.
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final Integer value) {
        this.teamSize = value;
    }
    /**
     * Sets the viewerManagement property value. The caller&apos;s standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
     * @param value Value to set for the viewerManagement property.
     */
    public void setViewerManagement(@jakarta.annotation.Nullable final TournamentProfileViewerManagement value) {
        this.viewerManagement = value;
    }
    /**
     * Sets the visibility property value. PUBLIC or UNLISTED.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final String value) {
        this.visibility = value;
    }
}

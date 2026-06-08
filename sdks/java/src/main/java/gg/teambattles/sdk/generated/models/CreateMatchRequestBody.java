package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates a new match as the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CreateMatchRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Active roster user IDs (must be creator-team members).
     */
    private java.util.List<String> activeRoster;
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Optional bench roster.
     */
    private java.util.List<CreateMatchRequestBodyBenchRoster> benchRoster;
    /**
     * Series length (best of N).
     */
    private Integer bestOf;
    /**
     * Challenged team ID (required when isChallenge is true).
     */
    private String challengedTeamId;
    /**
     * Game ID for the match.
     */
    private String gameId;
    /**
     * Game mode ID (client-side definition).
     */
    private String gameModeId;
    /**
     * Game-specific options.
     */
    private CreateMatchRequestBodyGameSpecificOptions gameSpecificOptions;
    /**
     * Input device (defaults to ALL).
     */
    private CreateMatchRequestBodyInputDevice inputDevice;
    /**
     * Create as a direct challenge to another team.
     */
    private Boolean isChallenge;
    /**
     * League ID for a league match.
     */
    private String leagueId;
    /**
     * Locked rule flags.
     */
    private CreateMatchRequestBodyLockedRules lockedRules;
    /**
     * Map preference mode.
     */
    private CreateMatchRequestBodyMapPreferenceMode mapPreferenceMode;
    /**
     * Map selection type.
     */
    private CreateMatchRequestBodyMapSelectionType mapSelectionType;
    /**
     * Match type.
     */
    private CreateMatchRequestBodyMatchType matchType;
    /**
     * Optional match notes.
     */
    private String notes;
    /**
     * Platform (defaults to CROSSPLAY).
     */
    private CreateMatchRequestBodyPlatform platform;
    /**
     * Publish status (defaults to DRAFT).
     */
    private CreateMatchRequestBodyPublishStatus publishStatus;
    /**
     * Region (defaults to NONE).
     */
    private CreateMatchRequestBodyRegion region;
    /**
     * Scheduled start (epoch ms).
     */
    private Double scheduledAt;
    /**
     * Selected map IDs.
     */
    private java.util.List<String> selectedMaps;
    /**
     * Selected objective IDs.
     */
    private java.util.List<String> selectedObjectives;
    /**
     * Creator team ID. The owner must captain it.
     */
    private String teamId;
    /**
     * Players per team.
     */
    private Integer teamSize;
    /**
     * Wager amount (WAGER matches only).
     */
    private Double wagerAmount;
    /**
     * Instantiates a new {@link CreateMatchRequestBody} and sets the default values.
     */
    public CreateMatchRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link CreateMatchRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static CreateMatchRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new CreateMatchRequestBody();
    }
    /**
     * Gets the activeRoster property value. Active roster user IDs (must be creator-team members).
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getActiveRoster() {
        return this.activeRoster;
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
     * Gets the benchRoster property value. Optional bench roster.
     * @return a {@link java.util.List<CreateMatchRequestBodyBenchRoster>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<CreateMatchRequestBodyBenchRoster> getBenchRoster() {
        return this.benchRoster;
    }
    /**
     * Gets the bestOf property value. Series length (best of N).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getBestOf() {
        return this.bestOf;
    }
    /**
     * Gets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getChallengedTeamId() {
        return this.challengedTeamId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(24);
        deserializerMap.put("activeRoster", (n) -> { this.setActiveRoster(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("benchRoster", (n) -> { this.setBenchRoster(n.getCollectionOfObjectValues(CreateMatchRequestBodyBenchRoster::createFromDiscriminatorValue)); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getIntegerValue()); });
        deserializerMap.put("challengedTeamId", (n) -> { this.setChallengedTeamId(n.getStringValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("gameModeId", (n) -> { this.setGameModeId(n.getStringValue()); });
        deserializerMap.put("gameSpecificOptions", (n) -> { this.setGameSpecificOptions(n.getObjectValue(CreateMatchRequestBodyGameSpecificOptions::createFromDiscriminatorValue)); });
        deserializerMap.put("inputDevice", (n) -> { this.setInputDevice(n.getEnumValue(CreateMatchRequestBodyInputDevice::forValue)); });
        deserializerMap.put("isChallenge", (n) -> { this.setIsChallenge(n.getBooleanValue()); });
        deserializerMap.put("leagueId", (n) -> { this.setLeagueId(n.getStringValue()); });
        deserializerMap.put("lockedRules", (n) -> { this.setLockedRules(n.getObjectValue(CreateMatchRequestBodyLockedRules::createFromDiscriminatorValue)); });
        deserializerMap.put("mapPreferenceMode", (n) -> { this.setMapPreferenceMode(n.getEnumValue(CreateMatchRequestBodyMapPreferenceMode::forValue)); });
        deserializerMap.put("mapSelectionType", (n) -> { this.setMapSelectionType(n.getEnumValue(CreateMatchRequestBodyMapSelectionType::forValue)); });
        deserializerMap.put("matchType", (n) -> { this.setMatchType(n.getEnumValue(CreateMatchRequestBodyMatchType::forValue)); });
        deserializerMap.put("notes", (n) -> { this.setNotes(n.getStringValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(CreateMatchRequestBodyPlatform::forValue)); });
        deserializerMap.put("publishStatus", (n) -> { this.setPublishStatus(n.getEnumValue(CreateMatchRequestBodyPublishStatus::forValue)); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getEnumValue(CreateMatchRequestBodyRegion::forValue)); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getDoubleValue()); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("selectedObjectives", (n) -> { this.setSelectedObjectives(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getIntegerValue()); });
        deserializerMap.put("wagerAmount", (n) -> { this.setWagerAmount(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game ID for the match.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the gameModeId property value. Game mode ID (client-side definition).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameModeId() {
        return this.gameModeId;
    }
    /**
     * Gets the gameSpecificOptions property value. Game-specific options.
     * @return a {@link CreateMatchRequestBodyGameSpecificOptions}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyGameSpecificOptions getGameSpecificOptions() {
        return this.gameSpecificOptions;
    }
    /**
     * Gets the inputDevice property value. Input device (defaults to ALL).
     * @return a {@link CreateMatchRequestBodyInputDevice}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyInputDevice getInputDevice() {
        return this.inputDevice;
    }
    /**
     * Gets the isChallenge property value. Create as a direct challenge to another team.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsChallenge() {
        return this.isChallenge;
    }
    /**
     * Gets the leagueId property value. League ID for a league match.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLeagueId() {
        return this.leagueId;
    }
    /**
     * Gets the lockedRules property value. Locked rule flags.
     * @return a {@link CreateMatchRequestBodyLockedRules}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyLockedRules getLockedRules() {
        return this.lockedRules;
    }
    /**
     * Gets the mapPreferenceMode property value. Map preference mode.
     * @return a {@link CreateMatchRequestBodyMapPreferenceMode}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyMapPreferenceMode getMapPreferenceMode() {
        return this.mapPreferenceMode;
    }
    /**
     * Gets the mapSelectionType property value. Map selection type.
     * @return a {@link CreateMatchRequestBodyMapSelectionType}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyMapSelectionType getMapSelectionType() {
        return this.mapSelectionType;
    }
    /**
     * Gets the matchType property value. Match type.
     * @return a {@link CreateMatchRequestBodyMatchType}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyMatchType getMatchType() {
        return this.matchType;
    }
    /**
     * Gets the notes property value. Optional match notes.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNotes() {
        return this.notes;
    }
    /**
     * Gets the platform property value. Platform (defaults to CROSSPLAY).
     * @return a {@link CreateMatchRequestBodyPlatform}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyPlatform getPlatform() {
        return this.platform;
    }
    /**
     * Gets the publishStatus property value. Publish status (defaults to DRAFT).
     * @return a {@link CreateMatchRequestBodyPublishStatus}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyPublishStatus getPublishStatus() {
        return this.publishStatus;
    }
    /**
     * Gets the region property value. Region (defaults to NONE).
     * @return a {@link CreateMatchRequestBodyRegion}
     */
    @jakarta.annotation.Nullable
    public CreateMatchRequestBodyRegion getRegion() {
        return this.region;
    }
    /**
     * Gets the scheduledAt property value. Scheduled start (epoch ms).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the selectedMaps property value. Selected map IDs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedMaps() {
        return this.selectedMaps;
    }
    /**
     * Gets the selectedObjectives property value. Selected objective IDs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedObjectives() {
        return this.selectedObjectives;
    }
    /**
     * Gets the teamId property value. Creator team ID. The owner must captain it.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the teamSize property value. Players per team.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamSize() {
        return this.teamSize;
    }
    /**
     * Gets the wagerAmount property value. Wager amount (WAGER matches only).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getWagerAmount() {
        return this.wagerAmount;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("activeRoster", this.getActiveRoster());
        writer.writeCollectionOfObjectValues("benchRoster", this.getBenchRoster());
        writer.writeIntegerValue("bestOf", this.getBestOf());
        writer.writeStringValue("challengedTeamId", this.getChallengedTeamId());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("gameModeId", this.getGameModeId());
        writer.writeObjectValue("gameSpecificOptions", this.getGameSpecificOptions());
        writer.writeEnumValue("inputDevice", this.getInputDevice());
        writer.writeBooleanValue("isChallenge", this.getIsChallenge());
        writer.writeStringValue("leagueId", this.getLeagueId());
        writer.writeObjectValue("lockedRules", this.getLockedRules());
        writer.writeEnumValue("mapPreferenceMode", this.getMapPreferenceMode());
        writer.writeEnumValue("mapSelectionType", this.getMapSelectionType());
        writer.writeEnumValue("matchType", this.getMatchType());
        writer.writeStringValue("notes", this.getNotes());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeEnumValue("publishStatus", this.getPublishStatus());
        writer.writeEnumValue("region", this.getRegion());
        writer.writeDoubleValue("scheduledAt", this.getScheduledAt());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeCollectionOfPrimitiveValues("selectedObjectives", this.getSelectedObjectives());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeIntegerValue("teamSize", this.getTeamSize());
        writer.writeDoubleValue("wagerAmount", this.getWagerAmount());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the activeRoster property value. Active roster user IDs (must be creator-team members).
     * @param value Value to set for the activeRoster property.
     */
    public void setActiveRoster(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.activeRoster = value;
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the benchRoster property value. Optional bench roster.
     * @param value Value to set for the benchRoster property.
     */
    public void setBenchRoster(@jakarta.annotation.Nullable final java.util.List<CreateMatchRequestBodyBenchRoster> value) {
        this.benchRoster = value;
    }
    /**
     * Sets the bestOf property value. Series length (best of N).
     * @param value Value to set for the bestOf property.
     */
    public void setBestOf(@jakarta.annotation.Nullable final Integer value) {
        this.bestOf = value;
    }
    /**
     * Sets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
     * @param value Value to set for the challengedTeamId property.
     */
    public void setChallengedTeamId(@jakarta.annotation.Nullable final String value) {
        this.challengedTeamId = value;
    }
    /**
     * Sets the gameId property value. Game ID for the match.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the gameModeId property value. Game mode ID (client-side definition).
     * @param value Value to set for the gameModeId property.
     */
    public void setGameModeId(@jakarta.annotation.Nullable final String value) {
        this.gameModeId = value;
    }
    /**
     * Sets the gameSpecificOptions property value. Game-specific options.
     * @param value Value to set for the gameSpecificOptions property.
     */
    public void setGameSpecificOptions(@jakarta.annotation.Nullable final CreateMatchRequestBodyGameSpecificOptions value) {
        this.gameSpecificOptions = value;
    }
    /**
     * Sets the inputDevice property value. Input device (defaults to ALL).
     * @param value Value to set for the inputDevice property.
     */
    public void setInputDevice(@jakarta.annotation.Nullable final CreateMatchRequestBodyInputDevice value) {
        this.inputDevice = value;
    }
    /**
     * Sets the isChallenge property value. Create as a direct challenge to another team.
     * @param value Value to set for the isChallenge property.
     */
    public void setIsChallenge(@jakarta.annotation.Nullable final Boolean value) {
        this.isChallenge = value;
    }
    /**
     * Sets the leagueId property value. League ID for a league match.
     * @param value Value to set for the leagueId property.
     */
    public void setLeagueId(@jakarta.annotation.Nullable final String value) {
        this.leagueId = value;
    }
    /**
     * Sets the lockedRules property value. Locked rule flags.
     * @param value Value to set for the lockedRules property.
     */
    public void setLockedRules(@jakarta.annotation.Nullable final CreateMatchRequestBodyLockedRules value) {
        this.lockedRules = value;
    }
    /**
     * Sets the mapPreferenceMode property value. Map preference mode.
     * @param value Value to set for the mapPreferenceMode property.
     */
    public void setMapPreferenceMode(@jakarta.annotation.Nullable final CreateMatchRequestBodyMapPreferenceMode value) {
        this.mapPreferenceMode = value;
    }
    /**
     * Sets the mapSelectionType property value. Map selection type.
     * @param value Value to set for the mapSelectionType property.
     */
    public void setMapSelectionType(@jakarta.annotation.Nullable final CreateMatchRequestBodyMapSelectionType value) {
        this.mapSelectionType = value;
    }
    /**
     * Sets the matchType property value. Match type.
     * @param value Value to set for the matchType property.
     */
    public void setMatchType(@jakarta.annotation.Nullable final CreateMatchRequestBodyMatchType value) {
        this.matchType = value;
    }
    /**
     * Sets the notes property value. Optional match notes.
     * @param value Value to set for the notes property.
     */
    public void setNotes(@jakarta.annotation.Nullable final String value) {
        this.notes = value;
    }
    /**
     * Sets the platform property value. Platform (defaults to CROSSPLAY).
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final CreateMatchRequestBodyPlatform value) {
        this.platform = value;
    }
    /**
     * Sets the publishStatus property value. Publish status (defaults to DRAFT).
     * @param value Value to set for the publishStatus property.
     */
    public void setPublishStatus(@jakarta.annotation.Nullable final CreateMatchRequestBodyPublishStatus value) {
        this.publishStatus = value;
    }
    /**
     * Sets the region property value. Region (defaults to NONE).
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final CreateMatchRequestBodyRegion value) {
        this.region = value;
    }
    /**
     * Sets the scheduledAt property value. Scheduled start (epoch ms).
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final Double value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the selectedMaps property value. Selected map IDs.
     * @param value Value to set for the selectedMaps property.
     */
    public void setSelectedMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedMaps = value;
    }
    /**
     * Sets the selectedObjectives property value. Selected objective IDs.
     * @param value Value to set for the selectedObjectives property.
     */
    public void setSelectedObjectives(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedObjectives = value;
    }
    /**
     * Sets the teamId property value. Creator team ID. The owner must captain it.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the teamSize property value. Players per team.
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final Integer value) {
        this.teamSize = value;
    }
    /**
     * Sets the wagerAmount property value. Wager amount (WAGER matches only).
     * @param value Value to set for the wagerAmount property.
     */
    public void setWagerAmount(@jakarta.annotation.Nullable final Double value) {
        this.wagerAmount = value;
    }
}

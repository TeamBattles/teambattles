package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates league game rules.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateGameRulesRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The allowedDays property
     */
    private java.util.List<String> allowedDays;
    /**
     * The allowedMapIds property
     */
    private java.util.List<String> allowedMapIds;
    /**
     * The allowedPlaylistIds property
     */
    private java.util.List<String> allowedPlaylistIds;
    /**
     * The allowedTimeRange property
     */
    private UpdateGameRulesRequestBodyAllowedTimeRange allowedTimeRange;
    /**
     * The blockedDays property
     */
    private java.util.List<String> blockedDays;
    /**
     * The challengeCooldownMinutes property
     */
    private Double challengeCooldownMinutes;
    /**
     * The challengesEnabled property
     */
    private Boolean challengesEnabled;
    /**
     * The forceCompetitive property
     */
    private Boolean forceCompetitive;
    /**
     * Game ID whose league rules should change.
     */
    private String gameId;
    /**
     * The matchFormat property
     */
    private UpdateGameRulesRequestBodyMatchFormat matchFormat;
    /**
     * The maxChallengesPerTeamPerSeason property
     */
    private Double maxChallengesPerTeamPerSeason;
    /**
     * The maxPendingChallengesPerOpponent property
     */
    private Double maxPendingChallengesPerOpponent;
    /**
     * The maxPendingChallengesTotal property
     */
    private Double maxPendingChallengesTotal;
    /**
     * The maxPointsMatchesPerPairPer24h property
     */
    private Double maxPointsMatchesPerPairPer24h;
    /**
     * The maxRosterChangesPerWeek property
     */
    private Double maxRosterChangesPerWeek;
    /**
     * The maxRosterSize property
     */
    private Double maxRosterSize;
    /**
     * The maxWagerAmount property
     */
    private Double maxWagerAmount;
    /**
     * The minRosterSize property
     */
    private Double minRosterSize;
    /**
     * The minWagerAmount property
     */
    private Double minWagerAmount;
    /**
     * The rosterChangeWindowDays property
     */
    private java.util.List<String> rosterChangeWindowDays;
    /**
     * The rosterChangeWindowTime property
     */
    private UpdateGameRulesRequestBodyRosterChangeWindowTime rosterChangeWindowTime;
    /**
     * The rosterLockEnabled property
     */
    private Boolean rosterLockEnabled;
    /**
     * The teamSize property
     */
    private UpdateGameRulesRequestBodyTeamSize teamSize;
    /**
     * The timezone property
     */
    private String timezone;
    /**
     * The wagersAllowed property
     */
    private Boolean wagersAllowed;
    /**
     * Instantiates a new {@link UpdateGameRulesRequestBody} and sets the default values.
     */
    public UpdateGameRulesRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateGameRulesRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateGameRulesRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateGameRulesRequestBody();
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
     * Gets the allowedDays property value. The allowedDays property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAllowedDays() {
        return this.allowedDays;
    }
    /**
     * Gets the allowedMapIds property value. The allowedMapIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAllowedMapIds() {
        return this.allowedMapIds;
    }
    /**
     * Gets the allowedPlaylistIds property value. The allowedPlaylistIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAllowedPlaylistIds() {
        return this.allowedPlaylistIds;
    }
    /**
     * Gets the allowedTimeRange property value. The allowedTimeRange property
     * @return a {@link UpdateGameRulesRequestBodyAllowedTimeRange}
     */
    @jakarta.annotation.Nullable
    public UpdateGameRulesRequestBodyAllowedTimeRange getAllowedTimeRange() {
        return this.allowedTimeRange;
    }
    /**
     * Gets the blockedDays property value. The blockedDays property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getBlockedDays() {
        return this.blockedDays;
    }
    /**
     * Gets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getChallengeCooldownMinutes() {
        return this.challengeCooldownMinutes;
    }
    /**
     * Gets the challengesEnabled property value. The challengesEnabled property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getChallengesEnabled() {
        return this.challengesEnabled;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(25);
        deserializerMap.put("allowedDays", (n) -> { this.setAllowedDays(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("allowedMapIds", (n) -> { this.setAllowedMapIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("allowedPlaylistIds", (n) -> { this.setAllowedPlaylistIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("allowedTimeRange", (n) -> { this.setAllowedTimeRange(n.getObjectValue(UpdateGameRulesRequestBodyAllowedTimeRange::createFromDiscriminatorValue)); });
        deserializerMap.put("blockedDays", (n) -> { this.setBlockedDays(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("challengeCooldownMinutes", (n) -> { this.setChallengeCooldownMinutes(n.getDoubleValue()); });
        deserializerMap.put("challengesEnabled", (n) -> { this.setChallengesEnabled(n.getBooleanValue()); });
        deserializerMap.put("forceCompetitive", (n) -> { this.setForceCompetitive(n.getBooleanValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("matchFormat", (n) -> { this.setMatchFormat(n.getEnumValue(UpdateGameRulesRequestBodyMatchFormat::forValue)); });
        deserializerMap.put("maxChallengesPerTeamPerSeason", (n) -> { this.setMaxChallengesPerTeamPerSeason(n.getDoubleValue()); });
        deserializerMap.put("maxPendingChallengesPerOpponent", (n) -> { this.setMaxPendingChallengesPerOpponent(n.getDoubleValue()); });
        deserializerMap.put("maxPendingChallengesTotal", (n) -> { this.setMaxPendingChallengesTotal(n.getDoubleValue()); });
        deserializerMap.put("maxPointsMatchesPerPairPer24h", (n) -> { this.setMaxPointsMatchesPerPairPer24h(n.getDoubleValue()); });
        deserializerMap.put("maxRosterChangesPerWeek", (n) -> { this.setMaxRosterChangesPerWeek(n.getDoubleValue()); });
        deserializerMap.put("maxRosterSize", (n) -> { this.setMaxRosterSize(n.getDoubleValue()); });
        deserializerMap.put("maxWagerAmount", (n) -> { this.setMaxWagerAmount(n.getDoubleValue()); });
        deserializerMap.put("minRosterSize", (n) -> { this.setMinRosterSize(n.getDoubleValue()); });
        deserializerMap.put("minWagerAmount", (n) -> { this.setMinWagerAmount(n.getDoubleValue()); });
        deserializerMap.put("rosterChangeWindowDays", (n) -> { this.setRosterChangeWindowDays(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("rosterChangeWindowTime", (n) -> { this.setRosterChangeWindowTime(n.getObjectValue(UpdateGameRulesRequestBodyRosterChangeWindowTime::createFromDiscriminatorValue)); });
        deserializerMap.put("rosterLockEnabled", (n) -> { this.setRosterLockEnabled(n.getBooleanValue()); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getObjectValue(UpdateGameRulesRequestBodyTeamSize::createFromDiscriminatorValue)); });
        deserializerMap.put("timezone", (n) -> { this.setTimezone(n.getStringValue()); });
        deserializerMap.put("wagersAllowed", (n) -> { this.setWagersAllowed(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the forceCompetitive property value. The forceCompetitive property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getForceCompetitive() {
        return this.forceCompetitive;
    }
    /**
     * Gets the gameId property value. Game ID whose league rules should change.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the matchFormat property value. The matchFormat property
     * @return a {@link UpdateGameRulesRequestBodyMatchFormat}
     */
    @jakarta.annotation.Nullable
    public UpdateGameRulesRequestBodyMatchFormat getMatchFormat() {
        return this.matchFormat;
    }
    /**
     * Gets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxChallengesPerTeamPerSeason() {
        return this.maxChallengesPerTeamPerSeason;
    }
    /**
     * Gets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxPendingChallengesPerOpponent() {
        return this.maxPendingChallengesPerOpponent;
    }
    /**
     * Gets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxPendingChallengesTotal() {
        return this.maxPendingChallengesTotal;
    }
    /**
     * Gets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxPointsMatchesPerPairPer24h() {
        return this.maxPointsMatchesPerPairPer24h;
    }
    /**
     * Gets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxRosterChangesPerWeek() {
        return this.maxRosterChangesPerWeek;
    }
    /**
     * Gets the maxRosterSize property value. The maxRosterSize property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxRosterSize() {
        return this.maxRosterSize;
    }
    /**
     * Gets the maxWagerAmount property value. The maxWagerAmount property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMaxWagerAmount() {
        return this.maxWagerAmount;
    }
    /**
     * Gets the minRosterSize property value. The minRosterSize property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMinRosterSize() {
        return this.minRosterSize;
    }
    /**
     * Gets the minWagerAmount property value. The minWagerAmount property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getMinWagerAmount() {
        return this.minWagerAmount;
    }
    /**
     * Gets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getRosterChangeWindowDays() {
        return this.rosterChangeWindowDays;
    }
    /**
     * Gets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
     * @return a {@link UpdateGameRulesRequestBodyRosterChangeWindowTime}
     */
    @jakarta.annotation.Nullable
    public UpdateGameRulesRequestBodyRosterChangeWindowTime getRosterChangeWindowTime() {
        return this.rosterChangeWindowTime;
    }
    /**
     * Gets the rosterLockEnabled property value. The rosterLockEnabled property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getRosterLockEnabled() {
        return this.rosterLockEnabled;
    }
    /**
     * Gets the teamSize property value. The teamSize property
     * @return a {@link UpdateGameRulesRequestBodyTeamSize}
     */
    @jakarta.annotation.Nullable
    public UpdateGameRulesRequestBodyTeamSize getTeamSize() {
        return this.teamSize;
    }
    /**
     * Gets the timezone property value. The timezone property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimezone() {
        return this.timezone;
    }
    /**
     * Gets the wagersAllowed property value. The wagersAllowed property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getWagersAllowed() {
        return this.wagersAllowed;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("allowedDays", this.getAllowedDays());
        writer.writeCollectionOfPrimitiveValues("allowedMapIds", this.getAllowedMapIds());
        writer.writeCollectionOfPrimitiveValues("allowedPlaylistIds", this.getAllowedPlaylistIds());
        writer.writeObjectValue("allowedTimeRange", this.getAllowedTimeRange());
        writer.writeCollectionOfPrimitiveValues("blockedDays", this.getBlockedDays());
        writer.writeDoubleValue("challengeCooldownMinutes", this.getChallengeCooldownMinutes());
        writer.writeBooleanValue("challengesEnabled", this.getChallengesEnabled());
        writer.writeBooleanValue("forceCompetitive", this.getForceCompetitive());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeEnumValue("matchFormat", this.getMatchFormat());
        writer.writeDoubleValue("maxChallengesPerTeamPerSeason", this.getMaxChallengesPerTeamPerSeason());
        writer.writeDoubleValue("maxPendingChallengesPerOpponent", this.getMaxPendingChallengesPerOpponent());
        writer.writeDoubleValue("maxPendingChallengesTotal", this.getMaxPendingChallengesTotal());
        writer.writeDoubleValue("maxPointsMatchesPerPairPer24h", this.getMaxPointsMatchesPerPairPer24h());
        writer.writeDoubleValue("maxRosterChangesPerWeek", this.getMaxRosterChangesPerWeek());
        writer.writeDoubleValue("maxRosterSize", this.getMaxRosterSize());
        writer.writeDoubleValue("maxWagerAmount", this.getMaxWagerAmount());
        writer.writeDoubleValue("minRosterSize", this.getMinRosterSize());
        writer.writeDoubleValue("minWagerAmount", this.getMinWagerAmount());
        writer.writeCollectionOfPrimitiveValues("rosterChangeWindowDays", this.getRosterChangeWindowDays());
        writer.writeObjectValue("rosterChangeWindowTime", this.getRosterChangeWindowTime());
        writer.writeBooleanValue("rosterLockEnabled", this.getRosterLockEnabled());
        writer.writeObjectValue("teamSize", this.getTeamSize());
        writer.writeStringValue("timezone", this.getTimezone());
        writer.writeBooleanValue("wagersAllowed", this.getWagersAllowed());
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
     * Sets the allowedDays property value. The allowedDays property
     * @param value Value to set for the allowedDays property.
     */
    public void setAllowedDays(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.allowedDays = value;
    }
    /**
     * Sets the allowedMapIds property value. The allowedMapIds property
     * @param value Value to set for the allowedMapIds property.
     */
    public void setAllowedMapIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.allowedMapIds = value;
    }
    /**
     * Sets the allowedPlaylistIds property value. The allowedPlaylistIds property
     * @param value Value to set for the allowedPlaylistIds property.
     */
    public void setAllowedPlaylistIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.allowedPlaylistIds = value;
    }
    /**
     * Sets the allowedTimeRange property value. The allowedTimeRange property
     * @param value Value to set for the allowedTimeRange property.
     */
    public void setAllowedTimeRange(@jakarta.annotation.Nullable final UpdateGameRulesRequestBodyAllowedTimeRange value) {
        this.allowedTimeRange = value;
    }
    /**
     * Sets the blockedDays property value. The blockedDays property
     * @param value Value to set for the blockedDays property.
     */
    public void setBlockedDays(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.blockedDays = value;
    }
    /**
     * Sets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
     * @param value Value to set for the challengeCooldownMinutes property.
     */
    public void setChallengeCooldownMinutes(@jakarta.annotation.Nullable final Double value) {
        this.challengeCooldownMinutes = value;
    }
    /**
     * Sets the challengesEnabled property value. The challengesEnabled property
     * @param value Value to set for the challengesEnabled property.
     */
    public void setChallengesEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.challengesEnabled = value;
    }
    /**
     * Sets the forceCompetitive property value. The forceCompetitive property
     * @param value Value to set for the forceCompetitive property.
     */
    public void setForceCompetitive(@jakarta.annotation.Nullable final Boolean value) {
        this.forceCompetitive = value;
    }
    /**
     * Sets the gameId property value. Game ID whose league rules should change.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the matchFormat property value. The matchFormat property
     * @param value Value to set for the matchFormat property.
     */
    public void setMatchFormat(@jakarta.annotation.Nullable final UpdateGameRulesRequestBodyMatchFormat value) {
        this.matchFormat = value;
    }
    /**
     * Sets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
     * @param value Value to set for the maxChallengesPerTeamPerSeason property.
     */
    public void setMaxChallengesPerTeamPerSeason(@jakarta.annotation.Nullable final Double value) {
        this.maxChallengesPerTeamPerSeason = value;
    }
    /**
     * Sets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
     * @param value Value to set for the maxPendingChallengesPerOpponent property.
     */
    public void setMaxPendingChallengesPerOpponent(@jakarta.annotation.Nullable final Double value) {
        this.maxPendingChallengesPerOpponent = value;
    }
    /**
     * Sets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
     * @param value Value to set for the maxPendingChallengesTotal property.
     */
    public void setMaxPendingChallengesTotal(@jakarta.annotation.Nullable final Double value) {
        this.maxPendingChallengesTotal = value;
    }
    /**
     * Sets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
     * @param value Value to set for the maxPointsMatchesPerPairPer24h property.
     */
    public void setMaxPointsMatchesPerPairPer24h(@jakarta.annotation.Nullable final Double value) {
        this.maxPointsMatchesPerPairPer24h = value;
    }
    /**
     * Sets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
     * @param value Value to set for the maxRosterChangesPerWeek property.
     */
    public void setMaxRosterChangesPerWeek(@jakarta.annotation.Nullable final Double value) {
        this.maxRosterChangesPerWeek = value;
    }
    /**
     * Sets the maxRosterSize property value. The maxRosterSize property
     * @param value Value to set for the maxRosterSize property.
     */
    public void setMaxRosterSize(@jakarta.annotation.Nullable final Double value) {
        this.maxRosterSize = value;
    }
    /**
     * Sets the maxWagerAmount property value. The maxWagerAmount property
     * @param value Value to set for the maxWagerAmount property.
     */
    public void setMaxWagerAmount(@jakarta.annotation.Nullable final Double value) {
        this.maxWagerAmount = value;
    }
    /**
     * Sets the minRosterSize property value. The minRosterSize property
     * @param value Value to set for the minRosterSize property.
     */
    public void setMinRosterSize(@jakarta.annotation.Nullable final Double value) {
        this.minRosterSize = value;
    }
    /**
     * Sets the minWagerAmount property value. The minWagerAmount property
     * @param value Value to set for the minWagerAmount property.
     */
    public void setMinWagerAmount(@jakarta.annotation.Nullable final Double value) {
        this.minWagerAmount = value;
    }
    /**
     * Sets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
     * @param value Value to set for the rosterChangeWindowDays property.
     */
    public void setRosterChangeWindowDays(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.rosterChangeWindowDays = value;
    }
    /**
     * Sets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
     * @param value Value to set for the rosterChangeWindowTime property.
     */
    public void setRosterChangeWindowTime(@jakarta.annotation.Nullable final UpdateGameRulesRequestBodyRosterChangeWindowTime value) {
        this.rosterChangeWindowTime = value;
    }
    /**
     * Sets the rosterLockEnabled property value. The rosterLockEnabled property
     * @param value Value to set for the rosterLockEnabled property.
     */
    public void setRosterLockEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.rosterLockEnabled = value;
    }
    /**
     * Sets the teamSize property value. The teamSize property
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final UpdateGameRulesRequestBodyTeamSize value) {
        this.teamSize = value;
    }
    /**
     * Sets the timezone property value. The timezone property
     * @param value Value to set for the timezone property.
     */
    public void setTimezone(@jakarta.annotation.Nullable final String value) {
        this.timezone = value;
    }
    /**
     * Sets the wagersAllowed property value. The wagersAllowed property
     * @param value Value to set for the wagersAllowed property.
     */
    public void setWagersAllowed(@jakarta.annotation.Nullable final Boolean value) {
        this.wagersAllowed = value;
    }
}

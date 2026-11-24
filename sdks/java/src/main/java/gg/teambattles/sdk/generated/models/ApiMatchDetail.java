package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMatchDetail implements Parsable {
    /**
     * The acceptedTeam property
     */
    private ApiMatchTeam acceptedTeam;
    /**
     * The bestOf property
     */
    private Integer bestOf;
    /**
     * The challengedTeam property
     */
    private ApiMatchTeam challengedTeam;
    /**
     * The completedAt property
     */
    private String completedAt;
    /**
     * The createdAt property
     */
    private String createdAt;
    /**
     * The creatorTeam property
     */
    private ApiMatchTeam creatorTeam;
    /**
     * Game definition.
     */
    private Game game;
    /**
     * The gameMode property
     */
    private String gameMode;
    /**
     * The id property
     */
    private String id;
    /**
     * The leagueId property
     */
    private String leagueId;
    /**
     * The leagueSeasonId property
     */
    private String leagueSeasonId;
    /**
     * The matchType property
     */
    private String matchType;
    /**
     * The platform property
     */
    private String platform;
    /**
     * The publishStatus property
     */
    private String publishStatus;
    /**
     * The region property
     */
    private String region;
    /**
     * The scheduledAt property
     */
    private String scheduledAt;
    /**
     * The selectedMaps property
     */
    private java.util.List<String> selectedMaps;
    /**
     * The selectedObjectives property
     */
    private java.util.List<String> selectedObjectives;
    /**
     * The startedAt property
     */
    private String startedAt;
    /**
     * Lifecycle status of a match.
     */
    private MatchStatus status;
    /**
     * The teamSize property
     */
    private Integer teamSize;
    /**
     * The winnerTeamId property
     */
    private String winnerTeamId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMatchDetail}
     */
    @jakarta.annotation.Nonnull
    public static ApiMatchDetail createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMatchDetail();
    }
    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return a {@link ApiMatchTeam}
     */
    @jakarta.annotation.Nullable
    public ApiMatchTeam getAcceptedTeam() {
        return this.acceptedTeam;
    }
    /**
     * Gets the bestOf property value. The bestOf property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getBestOf() {
        return this.bestOf;
    }
    /**
     * Gets the challengedTeam property value. The challengedTeam property
     * @return a {@link ApiMatchTeam}
     */
    @jakarta.annotation.Nullable
    public ApiMatchTeam getChallengedTeam() {
        return this.challengedTeam;
    }
    /**
     * Gets the completedAt property value. The completedAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCompletedAt() {
        return this.completedAt;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return a {@link ApiMatchTeam}
     */
    @jakarta.annotation.Nullable
    public ApiMatchTeam getCreatorTeam() {
        return this.creatorTeam;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(22);
        deserializerMap.put("acceptedTeam", (n) -> { this.setAcceptedTeam(n.getObjectValue(ApiMatchTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getIntegerValue()); });
        deserializerMap.put("challengedTeam", (n) -> { this.setChallengedTeam(n.getObjectValue(ApiMatchTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getStringValue()); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(ApiMatchTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(Game::createFromDiscriminatorValue)); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("leagueId", (n) -> { this.setLeagueId(n.getStringValue()); });
        deserializerMap.put("leagueSeasonId", (n) -> { this.setLeagueSeasonId(n.getStringValue()); });
        deserializerMap.put("matchType", (n) -> { this.setMatchType(n.getStringValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getStringValue()); });
        deserializerMap.put("publishStatus", (n) -> { this.setPublishStatus(n.getStringValue()); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getStringValue()); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getStringValue()); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("selectedObjectives", (n) -> { this.setSelectedObjectives(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(MatchStatus::forValue)); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getIntegerValue()); });
        deserializerMap.put("winnerTeamId", (n) -> { this.setWinnerTeamId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the game property value. Game definition.
     * @return a {@link Game}
     */
    @jakarta.annotation.Nullable
    public Game getGame() {
        return this.game;
    }
    /**
     * Gets the gameMode property value. The gameMode property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameMode() {
        return this.gameMode;
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
     * Gets the leagueId property value. The leagueId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLeagueId() {
        return this.leagueId;
    }
    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLeagueSeasonId() {
        return this.leagueSeasonId;
    }
    /**
     * Gets the matchType property value. The matchType property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMatchType() {
        return this.matchType;
    }
    /**
     * Gets the platform property value. The platform property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPlatform() {
        return this.platform;
    }
    /**
     * Gets the publishStatus property value. The publishStatus property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPublishStatus() {
        return this.publishStatus;
    }
    /**
     * Gets the region property value. The region property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRegion() {
        return this.region;
    }
    /**
     * Gets the scheduledAt property value. The scheduledAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the selectedMaps property value. The selectedMaps property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedMaps() {
        return this.selectedMaps;
    }
    /**
     * Gets the selectedObjectives property value. The selectedObjectives property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedObjectives() {
        return this.selectedObjectives;
    }
    /**
     * Gets the startedAt property value. The startedAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStartedAt() {
        return this.startedAt;
    }
    /**
     * Gets the status property value. Lifecycle status of a match.
     * @return a {@link MatchStatus}
     */
    @jakarta.annotation.Nullable
    public MatchStatus getStatus() {
        return this.status;
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
     * Gets the winnerTeamId property value. The winnerTeamId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getWinnerTeamId() {
        return this.winnerTeamId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("acceptedTeam", this.getAcceptedTeam());
        writer.writeIntegerValue("bestOf", this.getBestOf());
        writer.writeObjectValue("challengedTeam", this.getChallengedTeam());
        writer.writeStringValue("completedAt", this.getCompletedAt());
        writer.writeStringValue("createdAt", this.getCreatedAt());
        writer.writeObjectValue("creatorTeam", this.getCreatorTeam());
        writer.writeObjectValue("game", this.getGame());
        writer.writeStringValue("gameMode", this.getGameMode());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("leagueId", this.getLeagueId());
        writer.writeStringValue("leagueSeasonId", this.getLeagueSeasonId());
        writer.writeStringValue("matchType", this.getMatchType());
        writer.writeStringValue("platform", this.getPlatform());
        writer.writeStringValue("publishStatus", this.getPublishStatus());
        writer.writeStringValue("region", this.getRegion());
        writer.writeStringValue("scheduledAt", this.getScheduledAt());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeCollectionOfPrimitiveValues("selectedObjectives", this.getSelectedObjectives());
        writer.writeStringValue("startedAt", this.getStartedAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeIntegerValue("teamSize", this.getTeamSize());
        writer.writeStringValue("winnerTeamId", this.getWinnerTeamId());
    }
    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param value Value to set for the acceptedTeam property.
     */
    public void setAcceptedTeam(@jakarta.annotation.Nullable final ApiMatchTeam value) {
        this.acceptedTeam = value;
    }
    /**
     * Sets the bestOf property value. The bestOf property
     * @param value Value to set for the bestOf property.
     */
    public void setBestOf(@jakarta.annotation.Nullable final Integer value) {
        this.bestOf = value;
    }
    /**
     * Sets the challengedTeam property value. The challengedTeam property
     * @param value Value to set for the challengedTeam property.
     */
    public void setChallengedTeam(@jakarta.annotation.Nullable final ApiMatchTeam value) {
        this.challengedTeam = value;
    }
    /**
     * Sets the completedAt property value. The completedAt property
     * @param value Value to set for the completedAt property.
     */
    public void setCompletedAt(@jakarta.annotation.Nullable final String value) {
        this.completedAt = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final String value) {
        this.createdAt = value;
    }
    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param value Value to set for the creatorTeam property.
     */
    public void setCreatorTeam(@jakarta.annotation.Nullable final ApiMatchTeam value) {
        this.creatorTeam = value;
    }
    /**
     * Sets the game property value. Game definition.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final Game value) {
        this.game = value;
    }
    /**
     * Sets the gameMode property value. The gameMode property
     * @param value Value to set for the gameMode property.
     */
    public void setGameMode(@jakarta.annotation.Nullable final String value) {
        this.gameMode = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the leagueId property value. The leagueId property
     * @param value Value to set for the leagueId property.
     */
    public void setLeagueId(@jakarta.annotation.Nullable final String value) {
        this.leagueId = value;
    }
    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param value Value to set for the leagueSeasonId property.
     */
    public void setLeagueSeasonId(@jakarta.annotation.Nullable final String value) {
        this.leagueSeasonId = value;
    }
    /**
     * Sets the matchType property value. The matchType property
     * @param value Value to set for the matchType property.
     */
    public void setMatchType(@jakarta.annotation.Nullable final String value) {
        this.matchType = value;
    }
    /**
     * Sets the platform property value. The platform property
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final String value) {
        this.platform = value;
    }
    /**
     * Sets the publishStatus property value. The publishStatus property
     * @param value Value to set for the publishStatus property.
     */
    public void setPublishStatus(@jakarta.annotation.Nullable final String value) {
        this.publishStatus = value;
    }
    /**
     * Sets the region property value. The region property
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final String value) {
        this.region = value;
    }
    /**
     * Sets the scheduledAt property value. The scheduledAt property
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final String value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the selectedMaps property value. The selectedMaps property
     * @param value Value to set for the selectedMaps property.
     */
    public void setSelectedMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedMaps = value;
    }
    /**
     * Sets the selectedObjectives property value. The selectedObjectives property
     * @param value Value to set for the selectedObjectives property.
     */
    public void setSelectedObjectives(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedObjectives = value;
    }
    /**
     * Sets the startedAt property value. The startedAt property
     * @param value Value to set for the startedAt property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final String value) {
        this.startedAt = value;
    }
    /**
     * Sets the status property value. Lifecycle status of a match.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final MatchStatus value) {
        this.status = value;
    }
    /**
     * Sets the teamSize property value. The teamSize property
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final Integer value) {
        this.teamSize = value;
    }
    /**
     * Sets the winnerTeamId property value. The winnerTeamId property
     * @param value Value to set for the winnerTeamId property.
     */
    public void setWinnerTeamId(@jakarta.annotation.Nullable final String value) {
        this.winnerTeamId = value;
    }
}

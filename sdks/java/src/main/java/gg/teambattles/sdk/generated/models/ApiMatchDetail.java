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
    private ApiMatchDetailCompletedAt completedAt;
    /**
     * The createdAt property
     */
    private ApiMatchDetailCreatedAt createdAt;
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
    private ApiMatchDetailLeagueId leagueId;
    /**
     * The leagueSeasonId property
     */
    private ApiMatchDetailLeagueSeasonId leagueSeasonId;
    /**
     * The matchType property
     */
    private ApiMatchDetailMatchType matchType;
    /**
     * The platform property
     */
    private ApiMatchDetailPlatform platform;
    /**
     * The publishStatus property
     */
    private String publishStatus;
    /**
     * The region property
     */
    private ApiMatchDetailRegion region;
    /**
     * The scheduledAt property
     */
    private ApiMatchDetailScheduledAt scheduledAt;
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
    private ApiMatchDetailStartedAt startedAt;
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
    private ApiMatchDetailWinnerTeamId winnerTeamId;
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
     * @return a {@link ApiMatchDetailCompletedAt}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailCompletedAt getCompletedAt() {
        return this.completedAt;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link ApiMatchDetailCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailCreatedAt getCreatedAt() {
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
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getObjectValue(ApiMatchDetailCompletedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiMatchDetailCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(ApiMatchTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(Game::createFromDiscriminatorValue)); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("leagueId", (n) -> { this.setLeagueId(n.getObjectValue(ApiMatchDetailLeagueId::createFromDiscriminatorValue)); });
        deserializerMap.put("leagueSeasonId", (n) -> { this.setLeagueSeasonId(n.getObjectValue(ApiMatchDetailLeagueSeasonId::createFromDiscriminatorValue)); });
        deserializerMap.put("matchType", (n) -> { this.setMatchType(n.getObjectValue(ApiMatchDetailMatchType::createFromDiscriminatorValue)); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getObjectValue(ApiMatchDetailPlatform::createFromDiscriminatorValue)); });
        deserializerMap.put("publishStatus", (n) -> { this.setPublishStatus(n.getStringValue()); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getObjectValue(ApiMatchDetailRegion::createFromDiscriminatorValue)); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getObjectValue(ApiMatchDetailScheduledAt::createFromDiscriminatorValue)); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("selectedObjectives", (n) -> { this.setSelectedObjectives(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getObjectValue(ApiMatchDetailStartedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(MatchStatus::forValue)); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getIntegerValue()); });
        deserializerMap.put("winnerTeamId", (n) -> { this.setWinnerTeamId(n.getObjectValue(ApiMatchDetailWinnerTeamId::createFromDiscriminatorValue)); });
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
     * @return a {@link ApiMatchDetailLeagueId}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailLeagueId getLeagueId() {
        return this.leagueId;
    }
    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return a {@link ApiMatchDetailLeagueSeasonId}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailLeagueSeasonId getLeagueSeasonId() {
        return this.leagueSeasonId;
    }
    /**
     * Gets the matchType property value. The matchType property
     * @return a {@link ApiMatchDetailMatchType}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailMatchType getMatchType() {
        return this.matchType;
    }
    /**
     * Gets the platform property value. The platform property
     * @return a {@link ApiMatchDetailPlatform}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailPlatform getPlatform() {
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
     * @return a {@link ApiMatchDetailRegion}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailRegion getRegion() {
        return this.region;
    }
    /**
     * Gets the scheduledAt property value. The scheduledAt property
     * @return a {@link ApiMatchDetailScheduledAt}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailScheduledAt getScheduledAt() {
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
     * @return a {@link ApiMatchDetailStartedAt}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailStartedAt getStartedAt() {
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
     * @return a {@link ApiMatchDetailWinnerTeamId}
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailWinnerTeamId getWinnerTeamId() {
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
        writer.writeObjectValue("completedAt", this.getCompletedAt());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeObjectValue("creatorTeam", this.getCreatorTeam());
        writer.writeObjectValue("game", this.getGame());
        writer.writeStringValue("gameMode", this.getGameMode());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("leagueId", this.getLeagueId());
        writer.writeObjectValue("leagueSeasonId", this.getLeagueSeasonId());
        writer.writeObjectValue("matchType", this.getMatchType());
        writer.writeObjectValue("platform", this.getPlatform());
        writer.writeStringValue("publishStatus", this.getPublishStatus());
        writer.writeObjectValue("region", this.getRegion());
        writer.writeObjectValue("scheduledAt", this.getScheduledAt());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeCollectionOfPrimitiveValues("selectedObjectives", this.getSelectedObjectives());
        writer.writeObjectValue("startedAt", this.getStartedAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeIntegerValue("teamSize", this.getTeamSize());
        writer.writeObjectValue("winnerTeamId", this.getWinnerTeamId());
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
    public void setCompletedAt(@jakarta.annotation.Nullable final ApiMatchDetailCompletedAt value) {
        this.completedAt = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final ApiMatchDetailCreatedAt value) {
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
    public void setLeagueId(@jakarta.annotation.Nullable final ApiMatchDetailLeagueId value) {
        this.leagueId = value;
    }
    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param value Value to set for the leagueSeasonId property.
     */
    public void setLeagueSeasonId(@jakarta.annotation.Nullable final ApiMatchDetailLeagueSeasonId value) {
        this.leagueSeasonId = value;
    }
    /**
     * Sets the matchType property value. The matchType property
     * @param value Value to set for the matchType property.
     */
    public void setMatchType(@jakarta.annotation.Nullable final ApiMatchDetailMatchType value) {
        this.matchType = value;
    }
    /**
     * Sets the platform property value. The platform property
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final ApiMatchDetailPlatform value) {
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
    public void setRegion(@jakarta.annotation.Nullable final ApiMatchDetailRegion value) {
        this.region = value;
    }
    /**
     * Sets the scheduledAt property value. The scheduledAt property
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final ApiMatchDetailScheduledAt value) {
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
    public void setStartedAt(@jakarta.annotation.Nullable final ApiMatchDetailStartedAt value) {
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
    public void setWinnerTeamId(@jakarta.annotation.Nullable final ApiMatchDetailWinnerTeamId value) {
        this.winnerTeamId = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiMatchDetailCompletedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailCompletedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailCompletedAtMember1}
         */
        private ApiMatchDetailCompletedAtMember1 apiMatchDetailCompletedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailCompletedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailCompletedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailCompletedAt result = new ApiMatchDetailCompletedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailCompletedAtMember1(new ApiMatchDetailCompletedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type {@link ApiMatchDetailCompletedAtMember1}
         * @return a {@link ApiMatchDetailCompletedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailCompletedAtMember1 getApiMatchDetailCompletedAtMember1() {
            return this.apiMatchDetailCompletedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailCompletedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailCompletedAtMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailCompletedAtMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type {@link ApiMatchDetailCompletedAtMember1}
         * @param value Value to set for the ApiMatchDetail_completedAtMember1 property.
         */
        public void setApiMatchDetailCompletedAtMember1(@jakarta.annotation.Nullable final ApiMatchDetailCompletedAtMember1 value) {
            this.apiMatchDetailCompletedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailCreatedAtMember1}
         */
        private ApiMatchDetailCreatedAtMember1 apiMatchDetailCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailCreatedAt result = new ApiMatchDetailCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailCreatedAtMember1(new ApiMatchDetailCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_createdAtMember1 property value. Composed type representation for type {@link ApiMatchDetailCreatedAtMember1}
         * @return a {@link ApiMatchDetailCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailCreatedAtMember1 getApiMatchDetailCreatedAtMember1() {
            return this.apiMatchDetailCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailCreatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailCreatedAtMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_createdAtMember1 property value. Composed type representation for type {@link ApiMatchDetailCreatedAtMember1}
         * @param value Value to set for the ApiMatchDetail_createdAtMember1 property.
         */
        public void setApiMatchDetailCreatedAtMember1(@jakarta.annotation.Nullable final ApiMatchDetailCreatedAtMember1 value) {
            this.apiMatchDetailCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailLeagueIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailLeagueId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailLeagueIdMember1}
         */
        private ApiMatchDetailLeagueIdMember1 apiMatchDetailLeagueIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailLeagueId}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailLeagueId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailLeagueId result = new ApiMatchDetailLeagueId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailLeagueIdMember1(new ApiMatchDetailLeagueIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type {@link ApiMatchDetailLeagueIdMember1}
         * @return a {@link ApiMatchDetailLeagueIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailLeagueIdMember1 getApiMatchDetailLeagueIdMember1() {
            return this.apiMatchDetailLeagueIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailLeagueIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailLeagueIdMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailLeagueIdMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type {@link ApiMatchDetailLeagueIdMember1}
         * @param value Value to set for the ApiMatchDetail_leagueIdMember1 property.
         */
        public void setApiMatchDetailLeagueIdMember1(@jakarta.annotation.Nullable final ApiMatchDetailLeagueIdMember1 value) {
            this.apiMatchDetailLeagueIdMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailLeagueSeasonIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailLeagueSeasonId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailLeagueSeasonIdMember1}
         */
        private ApiMatchDetailLeagueSeasonIdMember1 apiMatchDetailLeagueSeasonIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailLeagueSeasonId}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailLeagueSeasonId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailLeagueSeasonId result = new ApiMatchDetailLeagueSeasonId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailLeagueSeasonIdMember1(new ApiMatchDetailLeagueSeasonIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type {@link ApiMatchDetailLeagueSeasonIdMember1}
         * @return a {@link ApiMatchDetailLeagueSeasonIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailLeagueSeasonIdMember1 getApiMatchDetailLeagueSeasonIdMember1() {
            return this.apiMatchDetailLeagueSeasonIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailLeagueSeasonIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailLeagueSeasonIdMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailLeagueSeasonIdMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type {@link ApiMatchDetailLeagueSeasonIdMember1}
         * @param value Value to set for the ApiMatchDetail_leagueSeasonIdMember1 property.
         */
        public void setApiMatchDetailLeagueSeasonIdMember1(@jakarta.annotation.Nullable final ApiMatchDetailLeagueSeasonIdMember1 value) {
            this.apiMatchDetailLeagueSeasonIdMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailMatchTypeMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailMatchType implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailMatchTypeMember1}
         */
        private ApiMatchDetailMatchTypeMember1 apiMatchDetailMatchTypeMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailMatchType}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailMatchType createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailMatchType result = new ApiMatchDetailMatchType();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailMatchTypeMember1(new ApiMatchDetailMatchTypeMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type {@link ApiMatchDetailMatchTypeMember1}
         * @return a {@link ApiMatchDetailMatchTypeMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailMatchTypeMember1 getApiMatchDetailMatchTypeMember1() {
            return this.apiMatchDetailMatchTypeMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailMatchTypeMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailMatchTypeMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailMatchTypeMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type {@link ApiMatchDetailMatchTypeMember1}
         * @param value Value to set for the ApiMatchDetail_matchTypeMember1 property.
         */
        public void setApiMatchDetailMatchTypeMember1(@jakarta.annotation.Nullable final ApiMatchDetailMatchTypeMember1 value) {
            this.apiMatchDetailMatchTypeMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailPlatformMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailPlatform implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailPlatformMember1}
         */
        private ApiMatchDetailPlatformMember1 apiMatchDetailPlatformMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailPlatform}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailPlatform createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailPlatform result = new ApiMatchDetailPlatform();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailPlatformMember1(new ApiMatchDetailPlatformMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_platformMember1 property value. Composed type representation for type {@link ApiMatchDetailPlatformMember1}
         * @return a {@link ApiMatchDetailPlatformMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailPlatformMember1 getApiMatchDetailPlatformMember1() {
            return this.apiMatchDetailPlatformMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailPlatformMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailPlatformMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailPlatformMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_platformMember1 property value. Composed type representation for type {@link ApiMatchDetailPlatformMember1}
         * @param value Value to set for the ApiMatchDetail_platformMember1 property.
         */
        public void setApiMatchDetailPlatformMember1(@jakarta.annotation.Nullable final ApiMatchDetailPlatformMember1 value) {
            this.apiMatchDetailPlatformMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailRegionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailRegion implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailRegionMember1}
         */
        private ApiMatchDetailRegionMember1 apiMatchDetailRegionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailRegion}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailRegion createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailRegion result = new ApiMatchDetailRegion();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailRegionMember1(new ApiMatchDetailRegionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_regionMember1 property value. Composed type representation for type {@link ApiMatchDetailRegionMember1}
         * @return a {@link ApiMatchDetailRegionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailRegionMember1 getApiMatchDetailRegionMember1() {
            return this.apiMatchDetailRegionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailRegionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailRegionMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailRegionMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_regionMember1 property value. Composed type representation for type {@link ApiMatchDetailRegionMember1}
         * @param value Value to set for the ApiMatchDetail_regionMember1 property.
         */
        public void setApiMatchDetailRegionMember1(@jakarta.annotation.Nullable final ApiMatchDetailRegionMember1 value) {
            this.apiMatchDetailRegionMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailScheduledAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailScheduledAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailScheduledAtMember1}
         */
        private ApiMatchDetailScheduledAtMember1 apiMatchDetailScheduledAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailScheduledAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailScheduledAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailScheduledAt result = new ApiMatchDetailScheduledAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailScheduledAtMember1(new ApiMatchDetailScheduledAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_scheduledAtMember1 property value. Composed type representation for type {@link ApiMatchDetailScheduledAtMember1}
         * @return a {@link ApiMatchDetailScheduledAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailScheduledAtMember1 getApiMatchDetailScheduledAtMember1() {
            return this.apiMatchDetailScheduledAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailScheduledAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailScheduledAtMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailScheduledAtMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_scheduledAtMember1 property value. Composed type representation for type {@link ApiMatchDetailScheduledAtMember1}
         * @param value Value to set for the ApiMatchDetail_scheduledAtMember1 property.
         */
        public void setApiMatchDetailScheduledAtMember1(@jakarta.annotation.Nullable final ApiMatchDetailScheduledAtMember1 value) {
            this.apiMatchDetailScheduledAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailStartedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailStartedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailStartedAtMember1}
         */
        private ApiMatchDetailStartedAtMember1 apiMatchDetailStartedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailStartedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailStartedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailStartedAt result = new ApiMatchDetailStartedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailStartedAtMember1(new ApiMatchDetailStartedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_startedAtMember1 property value. Composed type representation for type {@link ApiMatchDetailStartedAtMember1}
         * @return a {@link ApiMatchDetailStartedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailStartedAtMember1 getApiMatchDetailStartedAtMember1() {
            return this.apiMatchDetailStartedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailStartedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailStartedAtMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailStartedAtMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_startedAtMember1 property value. Composed type representation for type {@link ApiMatchDetailStartedAtMember1}
         * @param value Value to set for the ApiMatchDetail_startedAtMember1 property.
         */
        public void setApiMatchDetailStartedAtMember1(@jakarta.annotation.Nullable final ApiMatchDetailStartedAtMember1 value) {
            this.apiMatchDetailStartedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchDetailWinnerTeamIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchDetailWinnerTeamId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchDetailWinnerTeamIdMember1}
         */
        private ApiMatchDetailWinnerTeamIdMember1 apiMatchDetailWinnerTeamIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchDetailWinnerTeamId}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchDetailWinnerTeamId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchDetailWinnerTeamId result = new ApiMatchDetailWinnerTeamId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchDetailWinnerTeamIdMember1(new ApiMatchDetailWinnerTeamIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type {@link ApiMatchDetailWinnerTeamIdMember1}
         * @return a {@link ApiMatchDetailWinnerTeamIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchDetailWinnerTeamIdMember1 getApiMatchDetailWinnerTeamIdMember1() {
            return this.apiMatchDetailWinnerTeamIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchDetailWinnerTeamIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchDetailWinnerTeamIdMember1());
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
                writer.writeObjectValue(null, this.getApiMatchDetailWinnerTeamIdMember1());
            }
        }
        /**
         * Sets the ApiMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type {@link ApiMatchDetailWinnerTeamIdMember1}
         * @param value Value to set for the ApiMatchDetail_winnerTeamIdMember1 property.
         */
        public void setApiMatchDetailWinnerTeamIdMember1(@jakarta.annotation.Nullable final ApiMatchDetailWinnerTeamIdMember1 value) {
            this.apiMatchDetailWinnerTeamIdMember1 = value;
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

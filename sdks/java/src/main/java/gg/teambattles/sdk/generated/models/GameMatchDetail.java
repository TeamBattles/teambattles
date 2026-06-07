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
 * Detailed match payload returned inside the game-developer match-detail response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameMatchDetail implements Parsable {
    /**
     * The acceptedTeam property
     */
    private GameDetailTeam acceptedTeam;
    /**
     * The acceptedTeamScore property
     */
    private GameMatchDetailAcceptedTeamScore acceptedTeamScore;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    private Integer bestOf;
    /**
     * Completion time (ISO 8601).
     */
    private GameMatchDetailCompletedAt completedAt;
    /**
     * Creation time (ISO 8601).
     */
    private GameMatchDetailCreatedAt createdAt;
    /**
     * The creatorTeam property
     */
    private GameDetailTeam creatorTeam;
    /**
     * The creatorTeamScore property
     */
    private GameMatchDetailCreatorTeamScore creatorTeamScore;
    /**
     * Game ID the match belongs to.
     */
    private String gameId;
    /**
     * Game mode identifier (from the match&apos;s gameModeId).
     */
    private String gameMode;
    /**
     * The id property
     */
    private String id;
    /**
     * League this match belongs to, if any (SP-7 league wave).
     */
    private GameMatchDetailLeagueId leagueId;
    /**
     * League season this match belongs to, if any.
     */
    private GameMatchDetailLeagueSeasonId leagueSeasonId;
    /**
     * Losing team ID once the match completes.
     */
    private GameMatchDetailLoserTeamId loserTeamId;
    /**
     * Scheduled start time (ISO 8601).
     */
    private GameMatchDetailScheduledAt scheduledAt;
    /**
     * Actual start time (ISO 8601).
     */
    private GameMatchDetailStartedAt startedAt;
    /**
     * Lifecycle status of a match.
     */
    private MatchStatus status;
    /**
     * Winning team ID once the match completes.
     */
    private GameMatchDetailWinnerTeamId winnerTeamId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameMatchDetail}
     */
    @jakarta.annotation.Nonnull
    public static GameMatchDetail createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameMatchDetail();
    }
    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return a {@link GameDetailTeam}
     */
    @jakarta.annotation.Nullable
    public GameDetailTeam getAcceptedTeam() {
        return this.acceptedTeam;
    }
    /**
     * Gets the acceptedTeamScore property value. The acceptedTeamScore property
     * @return a {@link GameMatchDetailAcceptedTeamScore}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailAcceptedTeamScore getAcceptedTeamScore() {
        return this.acceptedTeamScore;
    }
    /**
     * Gets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getBestOf() {
        return this.bestOf;
    }
    /**
     * Gets the completedAt property value. Completion time (ISO 8601).
     * @return a {@link GameMatchDetailCompletedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailCompletedAt getCompletedAt() {
        return this.completedAt;
    }
    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return a {@link GameMatchDetailCreatedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return a {@link GameDetailTeam}
     */
    @jakarta.annotation.Nullable
    public GameDetailTeam getCreatorTeam() {
        return this.creatorTeam;
    }
    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
     * @return a {@link GameMatchDetailCreatorTeamScore}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailCreatorTeamScore getCreatorTeamScore() {
        return this.creatorTeamScore;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(17);
        deserializerMap.put("acceptedTeam", (n) -> { this.setAcceptedTeam(n.getObjectValue(GameDetailTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("acceptedTeamScore", (n) -> { this.setAcceptedTeamScore(n.getObjectValue(GameMatchDetailAcceptedTeamScore::createFromDiscriminatorValue)); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getIntegerValue()); });
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getObjectValue(GameMatchDetailCompletedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(GameMatchDetailCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(GameDetailTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getObjectValue(GameMatchDetailCreatorTeamScore::createFromDiscriminatorValue)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("leagueId", (n) -> { this.setLeagueId(n.getObjectValue(GameMatchDetailLeagueId::createFromDiscriminatorValue)); });
        deserializerMap.put("leagueSeasonId", (n) -> { this.setLeagueSeasonId(n.getObjectValue(GameMatchDetailLeagueSeasonId::createFromDiscriminatorValue)); });
        deserializerMap.put("loserTeamId", (n) -> { this.setLoserTeamId(n.getObjectValue(GameMatchDetailLoserTeamId::createFromDiscriminatorValue)); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getObjectValue(GameMatchDetailScheduledAt::createFromDiscriminatorValue)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getObjectValue(GameMatchDetailStartedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(MatchStatus::forValue)); });
        deserializerMap.put("winnerTeamId", (n) -> { this.setWinnerTeamId(n.getObjectValue(GameMatchDetailWinnerTeamId::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game ID the match belongs to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the gameMode property value. Game mode identifier (from the match&apos;s gameModeId).
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
     * Gets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
     * @return a {@link GameMatchDetailLeagueId}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailLeagueId getLeagueId() {
        return this.leagueId;
    }
    /**
     * Gets the leagueSeasonId property value. League season this match belongs to, if any.
     * @return a {@link GameMatchDetailLeagueSeasonId}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailLeagueSeasonId getLeagueSeasonId() {
        return this.leagueSeasonId;
    }
    /**
     * Gets the loserTeamId property value. Losing team ID once the match completes.
     * @return a {@link GameMatchDetailLoserTeamId}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailLoserTeamId getLoserTeamId() {
        return this.loserTeamId;
    }
    /**
     * Gets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @return a {@link GameMatchDetailScheduledAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailScheduledAt getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
     * @return a {@link GameMatchDetailStartedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailStartedAt getStartedAt() {
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
     * Gets the winnerTeamId property value. Winning team ID once the match completes.
     * @return a {@link GameMatchDetailWinnerTeamId}
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailWinnerTeamId getWinnerTeamId() {
        return this.winnerTeamId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("acceptedTeam", this.getAcceptedTeam());
        writer.writeObjectValue("acceptedTeamScore", this.getAcceptedTeamScore());
        writer.writeIntegerValue("bestOf", this.getBestOf());
        writer.writeObjectValue("completedAt", this.getCompletedAt());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeObjectValue("creatorTeam", this.getCreatorTeam());
        writer.writeObjectValue("creatorTeamScore", this.getCreatorTeamScore());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("gameMode", this.getGameMode());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("leagueId", this.getLeagueId());
        writer.writeObjectValue("leagueSeasonId", this.getLeagueSeasonId());
        writer.writeObjectValue("loserTeamId", this.getLoserTeamId());
        writer.writeObjectValue("scheduledAt", this.getScheduledAt());
        writer.writeObjectValue("startedAt", this.getStartedAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeObjectValue("winnerTeamId", this.getWinnerTeamId());
    }
    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param value Value to set for the acceptedTeam property.
     */
    public void setAcceptedTeam(@jakarta.annotation.Nullable final GameDetailTeam value) {
        this.acceptedTeam = value;
    }
    /**
     * Sets the acceptedTeamScore property value. The acceptedTeamScore property
     * @param value Value to set for the acceptedTeamScore property.
     */
    public void setAcceptedTeamScore(@jakarta.annotation.Nullable final GameMatchDetailAcceptedTeamScore value) {
        this.acceptedTeamScore = value;
    }
    /**
     * Sets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @param value Value to set for the bestOf property.
     */
    public void setBestOf(@jakarta.annotation.Nullable final Integer value) {
        this.bestOf = value;
    }
    /**
     * Sets the completedAt property value. Completion time (ISO 8601).
     * @param value Value to set for the completedAt property.
     */
    public void setCompletedAt(@jakarta.annotation.Nullable final GameMatchDetailCompletedAt value) {
        this.completedAt = value;
    }
    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final GameMatchDetailCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param value Value to set for the creatorTeam property.
     */
    public void setCreatorTeam(@jakarta.annotation.Nullable final GameDetailTeam value) {
        this.creatorTeam = value;
    }
    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final GameMatchDetailCreatorTeamScore value) {
        this.creatorTeamScore = value;
    }
    /**
     * Sets the gameId property value. Game ID the match belongs to.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the gameMode property value. Game mode identifier (from the match&apos;s gameModeId).
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
     * Sets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
     * @param value Value to set for the leagueId property.
     */
    public void setLeagueId(@jakarta.annotation.Nullable final GameMatchDetailLeagueId value) {
        this.leagueId = value;
    }
    /**
     * Sets the leagueSeasonId property value. League season this match belongs to, if any.
     * @param value Value to set for the leagueSeasonId property.
     */
    public void setLeagueSeasonId(@jakarta.annotation.Nullable final GameMatchDetailLeagueSeasonId value) {
        this.leagueSeasonId = value;
    }
    /**
     * Sets the loserTeamId property value. Losing team ID once the match completes.
     * @param value Value to set for the loserTeamId property.
     */
    public void setLoserTeamId(@jakarta.annotation.Nullable final GameMatchDetailLoserTeamId value) {
        this.loserTeamId = value;
    }
    /**
     * Sets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final GameMatchDetailScheduledAt value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
     * @param value Value to set for the startedAt property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final GameMatchDetailStartedAt value) {
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
     * Sets the winnerTeamId property value. Winning team ID once the match completes.
     * @param value Value to set for the winnerTeamId property.
     */
    public void setWinnerTeamId(@jakarta.annotation.Nullable final GameMatchDetailWinnerTeamId value) {
        this.winnerTeamId = value;
    }
    /**
     * Composed type wrapper for classes {@link GameMatchDetailAcceptedTeamScoreMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailAcceptedTeamScore implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailAcceptedTeamScoreMember1}
         */
        private GameMatchDetailAcceptedTeamScoreMember1 gameMatchDetailAcceptedTeamScoreMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailAcceptedTeamScore}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailAcceptedTeamScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailAcceptedTeamScore result = new GameMatchDetailAcceptedTeamScore();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setGameMatchDetailAcceptedTeamScoreMember1(new GameMatchDetailAcceptedTeamScoreMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailAcceptedTeamScoreMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailAcceptedTeamScoreMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type {@link GameMatchDetailAcceptedTeamScoreMember1}
         * @return a {@link GameMatchDetailAcceptedTeamScoreMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailAcceptedTeamScoreMember1 getGameMatchDetailAcceptedTeamScoreMember1() {
            return this.gameMatchDetailAcceptedTeamScoreMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailAcceptedTeamScoreMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_acceptedTeamScoreMember1 property value. Composed type representation for type {@link GameMatchDetailAcceptedTeamScoreMember1}
         * @param value Value to set for the GameMatchDetail_acceptedTeamScoreMember1 property.
         */
        public void setGameMatchDetailAcceptedTeamScoreMember1(@jakarta.annotation.Nullable final GameMatchDetailAcceptedTeamScoreMember1 value) {
            this.gameMatchDetailAcceptedTeamScoreMember1 = value;
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link GameMatchDetailCompletedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailCompletedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailCompletedAtMember1}
         */
        private GameMatchDetailCompletedAtMember1 gameMatchDetailCompletedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailCompletedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailCompletedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailCompletedAt result = new GameMatchDetailCompletedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailCompletedAtMember1(new GameMatchDetailCompletedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailCompletedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailCompletedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_completedAtMember1 property value. Composed type representation for type {@link GameMatchDetailCompletedAtMember1}
         * @return a {@link GameMatchDetailCompletedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailCompletedAtMember1 getGameMatchDetailCompletedAtMember1() {
            return this.gameMatchDetailCompletedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailCompletedAtMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_completedAtMember1 property value. Composed type representation for type {@link GameMatchDetailCompletedAtMember1}
         * @param value Value to set for the GameMatchDetail_completedAtMember1 property.
         */
        public void setGameMatchDetailCompletedAtMember1(@jakarta.annotation.Nullable final GameMatchDetailCompletedAtMember1 value) {
            this.gameMatchDetailCompletedAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailCreatedAtMember1}
         */
        private GameMatchDetailCreatedAtMember1 gameMatchDetailCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailCreatedAt result = new GameMatchDetailCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailCreatedAtMember1(new GameMatchDetailCreatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailCreatedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type {@link GameMatchDetailCreatedAtMember1}
         * @return a {@link GameMatchDetailCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailCreatedAtMember1 getGameMatchDetailCreatedAtMember1() {
            return this.gameMatchDetailCreatedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailCreatedAtMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type {@link GameMatchDetailCreatedAtMember1}
         * @param value Value to set for the GameMatchDetail_createdAtMember1 property.
         */
        public void setGameMatchDetailCreatedAtMember1(@jakarta.annotation.Nullable final GameMatchDetailCreatedAtMember1 value) {
            this.gameMatchDetailCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailCreatorTeamScoreMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailCreatorTeamScore implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailCreatorTeamScoreMember1}
         */
        private GameMatchDetailCreatorTeamScoreMember1 gameMatchDetailCreatorTeamScoreMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailCreatorTeamScore}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailCreatorTeamScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailCreatorTeamScore result = new GameMatchDetailCreatorTeamScore();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setGameMatchDetailCreatorTeamScoreMember1(new GameMatchDetailCreatorTeamScoreMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailCreatorTeamScoreMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailCreatorTeamScoreMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_creatorTeamScoreMember1 property value. Composed type representation for type {@link GameMatchDetailCreatorTeamScoreMember1}
         * @return a {@link GameMatchDetailCreatorTeamScoreMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailCreatorTeamScoreMember1 getGameMatchDetailCreatorTeamScoreMember1() {
            return this.gameMatchDetailCreatorTeamScoreMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailCreatorTeamScoreMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_creatorTeamScoreMember1 property value. Composed type representation for type {@link GameMatchDetailCreatorTeamScoreMember1}
         * @param value Value to set for the GameMatchDetail_creatorTeamScoreMember1 property.
         */
        public void setGameMatchDetailCreatorTeamScoreMember1(@jakarta.annotation.Nullable final GameMatchDetailCreatorTeamScoreMember1 value) {
            this.gameMatchDetailCreatorTeamScoreMember1 = value;
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link GameMatchDetailLeagueIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailLeagueId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailLeagueIdMember1}
         */
        private GameMatchDetailLeagueIdMember1 gameMatchDetailLeagueIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailLeagueId}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailLeagueId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailLeagueId result = new GameMatchDetailLeagueId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailLeagueIdMember1(new GameMatchDetailLeagueIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailLeagueIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailLeagueIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_leagueIdMember1 property value. Composed type representation for type {@link GameMatchDetailLeagueIdMember1}
         * @return a {@link GameMatchDetailLeagueIdMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailLeagueIdMember1 getGameMatchDetailLeagueIdMember1() {
            return this.gameMatchDetailLeagueIdMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailLeagueIdMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_leagueIdMember1 property value. Composed type representation for type {@link GameMatchDetailLeagueIdMember1}
         * @param value Value to set for the GameMatchDetail_leagueIdMember1 property.
         */
        public void setGameMatchDetailLeagueIdMember1(@jakarta.annotation.Nullable final GameMatchDetailLeagueIdMember1 value) {
            this.gameMatchDetailLeagueIdMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailLeagueSeasonIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailLeagueSeasonId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailLeagueSeasonIdMember1}
         */
        private GameMatchDetailLeagueSeasonIdMember1 gameMatchDetailLeagueSeasonIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailLeagueSeasonId}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailLeagueSeasonId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailLeagueSeasonId result = new GameMatchDetailLeagueSeasonId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailLeagueSeasonIdMember1(new GameMatchDetailLeagueSeasonIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailLeagueSeasonIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailLeagueSeasonIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type {@link GameMatchDetailLeagueSeasonIdMember1}
         * @return a {@link GameMatchDetailLeagueSeasonIdMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailLeagueSeasonIdMember1 getGameMatchDetailLeagueSeasonIdMember1() {
            return this.gameMatchDetailLeagueSeasonIdMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailLeagueSeasonIdMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type {@link GameMatchDetailLeagueSeasonIdMember1}
         * @param value Value to set for the GameMatchDetail_leagueSeasonIdMember1 property.
         */
        public void setGameMatchDetailLeagueSeasonIdMember1(@jakarta.annotation.Nullable final GameMatchDetailLeagueSeasonIdMember1 value) {
            this.gameMatchDetailLeagueSeasonIdMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailLoserTeamIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailLoserTeamId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailLoserTeamIdMember1}
         */
        private GameMatchDetailLoserTeamIdMember1 gameMatchDetailLoserTeamIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailLoserTeamId}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailLoserTeamId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailLoserTeamId result = new GameMatchDetailLoserTeamId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailLoserTeamIdMember1(new GameMatchDetailLoserTeamIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailLoserTeamIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailLoserTeamIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_loserTeamIdMember1 property value. Composed type representation for type {@link GameMatchDetailLoserTeamIdMember1}
         * @return a {@link GameMatchDetailLoserTeamIdMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailLoserTeamIdMember1 getGameMatchDetailLoserTeamIdMember1() {
            return this.gameMatchDetailLoserTeamIdMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailLoserTeamIdMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_loserTeamIdMember1 property value. Composed type representation for type {@link GameMatchDetailLoserTeamIdMember1}
         * @param value Value to set for the GameMatchDetail_loserTeamIdMember1 property.
         */
        public void setGameMatchDetailLoserTeamIdMember1(@jakarta.annotation.Nullable final GameMatchDetailLoserTeamIdMember1 value) {
            this.gameMatchDetailLoserTeamIdMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailScheduledAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailScheduledAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailScheduledAtMember1}
         */
        private GameMatchDetailScheduledAtMember1 gameMatchDetailScheduledAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailScheduledAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailScheduledAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailScheduledAt result = new GameMatchDetailScheduledAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailScheduledAtMember1(new GameMatchDetailScheduledAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailScheduledAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailScheduledAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type {@link GameMatchDetailScheduledAtMember1}
         * @return a {@link GameMatchDetailScheduledAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailScheduledAtMember1 getGameMatchDetailScheduledAtMember1() {
            return this.gameMatchDetailScheduledAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailScheduledAtMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type {@link GameMatchDetailScheduledAtMember1}
         * @param value Value to set for the GameMatchDetail_scheduledAtMember1 property.
         */
        public void setGameMatchDetailScheduledAtMember1(@jakarta.annotation.Nullable final GameMatchDetailScheduledAtMember1 value) {
            this.gameMatchDetailScheduledAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailStartedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailStartedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailStartedAtMember1}
         */
        private GameMatchDetailStartedAtMember1 gameMatchDetailStartedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailStartedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailStartedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailStartedAt result = new GameMatchDetailStartedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailStartedAtMember1(new GameMatchDetailStartedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailStartedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailStartedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type {@link GameMatchDetailStartedAtMember1}
         * @return a {@link GameMatchDetailStartedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailStartedAtMember1 getGameMatchDetailStartedAtMember1() {
            return this.gameMatchDetailStartedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailStartedAtMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_startedAtMember1 property value. Composed type representation for type {@link GameMatchDetailStartedAtMember1}
         * @param value Value to set for the GameMatchDetail_startedAtMember1 property.
         */
        public void setGameMatchDetailStartedAtMember1(@jakarta.annotation.Nullable final GameMatchDetailStartedAtMember1 value) {
            this.gameMatchDetailStartedAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchDetailWinnerTeamIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchDetailWinnerTeamId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchDetailWinnerTeamIdMember1}
         */
        private GameMatchDetailWinnerTeamIdMember1 gameMatchDetailWinnerTeamIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchDetailWinnerTeamId}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchDetailWinnerTeamId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchDetailWinnerTeamId result = new GameMatchDetailWinnerTeamId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchDetailWinnerTeamIdMember1(new GameMatchDetailWinnerTeamIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchDetailWinnerTeamIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchDetailWinnerTeamIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type {@link GameMatchDetailWinnerTeamIdMember1}
         * @return a {@link GameMatchDetailWinnerTeamIdMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchDetailWinnerTeamIdMember1 getGameMatchDetailWinnerTeamIdMember1() {
            return this.gameMatchDetailWinnerTeamIdMember1;
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
                writer.writeObjectValue(null, this.getGameMatchDetailWinnerTeamIdMember1());
            }
        }
        /**
         * Sets the GameMatchDetail_winnerTeamIdMember1 property value. Composed type representation for type {@link GameMatchDetailWinnerTeamIdMember1}
         * @param value Value to set for the GameMatchDetail_winnerTeamIdMember1 property.
         */
        public void setGameMatchDetailWinnerTeamIdMember1(@jakarta.annotation.Nullable final GameMatchDetailWinnerTeamIdMember1 value) {
            this.gameMatchDetailWinnerTeamIdMember1 = value;
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

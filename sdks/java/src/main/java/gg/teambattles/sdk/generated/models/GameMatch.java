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
 * Match as returned by the game-developer endpoints (includes scores, omits the game object).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameMatch implements Parsable {
    /**
     * The acceptedTeam property
     */
    private Team acceptedTeam;
    /**
     * The acceptedTeamScore property
     */
    private GameMatchAcceptedTeamScore acceptedTeamScore;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    private Integer bestOf;
    /**
     * Completion time (ISO 8601).
     */
    private GameMatchCompletedAt completedAt;
    /**
     * Creation time (ISO 8601).
     */
    private GameMatchCreatedAt createdAt;
    /**
     * The creatorTeam property
     */
    private Team creatorTeam;
    /**
     * The creatorTeamScore property
     */
    private GameMatchCreatorTeamScore creatorTeamScore;
    /**
     * Game mode identifier (from the match&apos;s gameModeId).
     */
    private String gameMode;
    /**
     * The id property
     */
    private String id;
    /**
     * Scheduled start time (ISO 8601).
     */
    private GameMatchScheduledAt scheduledAt;
    /**
     * Actual start time (ISO 8601).
     */
    private GameMatchStartedAt startedAt;
    /**
     * Lifecycle status of a match.
     */
    private MatchStatus status;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameMatch}
     */
    @jakarta.annotation.Nonnull
    public static GameMatch createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameMatch();
    }
    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return a {@link Team}
     */
    @jakarta.annotation.Nullable
    public Team getAcceptedTeam() {
        return this.acceptedTeam;
    }
    /**
     * Gets the acceptedTeamScore property value. The acceptedTeamScore property
     * @return a {@link GameMatchAcceptedTeamScore}
     */
    @jakarta.annotation.Nullable
    public GameMatchAcceptedTeamScore getAcceptedTeamScore() {
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
     * @return a {@link GameMatchCompletedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchCompletedAt getCompletedAt() {
        return this.completedAt;
    }
    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return a {@link GameMatchCreatedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return a {@link Team}
     */
    @jakarta.annotation.Nullable
    public Team getCreatorTeam() {
        return this.creatorTeam;
    }
    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
     * @return a {@link GameMatchCreatorTeamScore}
     */
    @jakarta.annotation.Nullable
    public GameMatchCreatorTeamScore getCreatorTeamScore() {
        return this.creatorTeamScore;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(12);
        deserializerMap.put("acceptedTeam", (n) -> { this.setAcceptedTeam(n.getObjectValue(Team::createFromDiscriminatorValue)); });
        deserializerMap.put("acceptedTeamScore", (n) -> { this.setAcceptedTeamScore(n.getObjectValue(GameMatchAcceptedTeamScore::createFromDiscriminatorValue)); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getIntegerValue()); });
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getObjectValue(GameMatchCompletedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(GameMatchCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(Team::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getObjectValue(GameMatchCreatorTeamScore::createFromDiscriminatorValue)); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getObjectValue(GameMatchScheduledAt::createFromDiscriminatorValue)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getObjectValue(GameMatchStartedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(MatchStatus::forValue)); });
        return deserializerMap;
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
     * Gets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @return a {@link GameMatchScheduledAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchScheduledAt getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
     * @return a {@link GameMatchStartedAt}
     */
    @jakarta.annotation.Nullable
    public GameMatchStartedAt getStartedAt() {
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
        writer.writeStringValue("gameMode", this.getGameMode());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("scheduledAt", this.getScheduledAt());
        writer.writeObjectValue("startedAt", this.getStartedAt());
        writer.writeEnumValue("status", this.getStatus());
    }
    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param value Value to set for the acceptedTeam property.
     */
    public void setAcceptedTeam(@jakarta.annotation.Nullable final Team value) {
        this.acceptedTeam = value;
    }
    /**
     * Sets the acceptedTeamScore property value. The acceptedTeamScore property
     * @param value Value to set for the acceptedTeamScore property.
     */
    public void setAcceptedTeamScore(@jakarta.annotation.Nullable final GameMatchAcceptedTeamScore value) {
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
    public void setCompletedAt(@jakarta.annotation.Nullable final GameMatchCompletedAt value) {
        this.completedAt = value;
    }
    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final GameMatchCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param value Value to set for the creatorTeam property.
     */
    public void setCreatorTeam(@jakarta.annotation.Nullable final Team value) {
        this.creatorTeam = value;
    }
    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final GameMatchCreatorTeamScore value) {
        this.creatorTeamScore = value;
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
     * Sets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final GameMatchScheduledAt value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
     * @param value Value to set for the startedAt property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final GameMatchStartedAt value) {
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
     * Composed type wrapper for classes {@link GameMatchAcceptedTeamScoreMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchAcceptedTeamScore implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchAcceptedTeamScoreMember1}
         */
        private GameMatchAcceptedTeamScoreMember1 gameMatchAcceptedTeamScoreMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchAcceptedTeamScore}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchAcceptedTeamScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchAcceptedTeamScore result = new GameMatchAcceptedTeamScore();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setGameMatchAcceptedTeamScoreMember1(new GameMatchAcceptedTeamScoreMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchAcceptedTeamScoreMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchAcceptedTeamScoreMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type {@link GameMatchAcceptedTeamScoreMember1}
         * @return a {@link GameMatchAcceptedTeamScoreMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchAcceptedTeamScoreMember1 getGameMatchAcceptedTeamScoreMember1() {
            return this.gameMatchAcceptedTeamScoreMember1;
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
                writer.writeObjectValue(null, this.getGameMatchAcceptedTeamScoreMember1());
            }
        }
        /**
         * Sets the GameMatch_acceptedTeamScoreMember1 property value. Composed type representation for type {@link GameMatchAcceptedTeamScoreMember1}
         * @param value Value to set for the GameMatch_acceptedTeamScoreMember1 property.
         */
        public void setGameMatchAcceptedTeamScoreMember1(@jakarta.annotation.Nullable final GameMatchAcceptedTeamScoreMember1 value) {
            this.gameMatchAcceptedTeamScoreMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchCompletedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchCompletedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchCompletedAtMember1}
         */
        private GameMatchCompletedAtMember1 gameMatchCompletedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchCompletedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchCompletedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchCompletedAt result = new GameMatchCompletedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchCompletedAtMember1(new GameMatchCompletedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchCompletedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchCompletedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_completedAtMember1 property value. Composed type representation for type {@link GameMatchCompletedAtMember1}
         * @return a {@link GameMatchCompletedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchCompletedAtMember1 getGameMatchCompletedAtMember1() {
            return this.gameMatchCompletedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchCompletedAtMember1());
            }
        }
        /**
         * Sets the GameMatch_completedAtMember1 property value. Composed type representation for type {@link GameMatchCompletedAtMember1}
         * @param value Value to set for the GameMatch_completedAtMember1 property.
         */
        public void setGameMatchCompletedAtMember1(@jakarta.annotation.Nullable final GameMatchCompletedAtMember1 value) {
            this.gameMatchCompletedAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchCreatedAtMember1}
         */
        private GameMatchCreatedAtMember1 gameMatchCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchCreatedAt result = new GameMatchCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchCreatedAtMember1(new GameMatchCreatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchCreatedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_createdAtMember1 property value. Composed type representation for type {@link GameMatchCreatedAtMember1}
         * @return a {@link GameMatchCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchCreatedAtMember1 getGameMatchCreatedAtMember1() {
            return this.gameMatchCreatedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchCreatedAtMember1());
            }
        }
        /**
         * Sets the GameMatch_createdAtMember1 property value. Composed type representation for type {@link GameMatchCreatedAtMember1}
         * @param value Value to set for the GameMatch_createdAtMember1 property.
         */
        public void setGameMatchCreatedAtMember1(@jakarta.annotation.Nullable final GameMatchCreatedAtMember1 value) {
            this.gameMatchCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchCreatorTeamScoreMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchCreatorTeamScore implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchCreatorTeamScoreMember1}
         */
        private GameMatchCreatorTeamScoreMember1 gameMatchCreatorTeamScoreMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchCreatorTeamScore}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchCreatorTeamScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchCreatorTeamScore result = new GameMatchCreatorTeamScore();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setGameMatchCreatorTeamScoreMember1(new GameMatchCreatorTeamScoreMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchCreatorTeamScoreMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchCreatorTeamScoreMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type {@link GameMatchCreatorTeamScoreMember1}
         * @return a {@link GameMatchCreatorTeamScoreMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchCreatorTeamScoreMember1 getGameMatchCreatorTeamScoreMember1() {
            return this.gameMatchCreatorTeamScoreMember1;
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
                writer.writeObjectValue(null, this.getGameMatchCreatorTeamScoreMember1());
            }
        }
        /**
         * Sets the GameMatch_creatorTeamScoreMember1 property value. Composed type representation for type {@link GameMatchCreatorTeamScoreMember1}
         * @param value Value to set for the GameMatch_creatorTeamScoreMember1 property.
         */
        public void setGameMatchCreatorTeamScoreMember1(@jakarta.annotation.Nullable final GameMatchCreatorTeamScoreMember1 value) {
            this.gameMatchCreatorTeamScoreMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchScheduledAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchScheduledAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchScheduledAtMember1}
         */
        private GameMatchScheduledAtMember1 gameMatchScheduledAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchScheduledAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchScheduledAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchScheduledAt result = new GameMatchScheduledAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchScheduledAtMember1(new GameMatchScheduledAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchScheduledAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchScheduledAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_scheduledAtMember1 property value. Composed type representation for type {@link GameMatchScheduledAtMember1}
         * @return a {@link GameMatchScheduledAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchScheduledAtMember1 getGameMatchScheduledAtMember1() {
            return this.gameMatchScheduledAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchScheduledAtMember1());
            }
        }
        /**
         * Sets the GameMatch_scheduledAtMember1 property value. Composed type representation for type {@link GameMatchScheduledAtMember1}
         * @param value Value to set for the GameMatch_scheduledAtMember1 property.
         */
        public void setGameMatchScheduledAtMember1(@jakarta.annotation.Nullable final GameMatchScheduledAtMember1 value) {
            this.gameMatchScheduledAtMember1 = value;
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
     * Composed type wrapper for classes {@link GameMatchStartedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchStartedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchStartedAtMember1}
         */
        private GameMatchStartedAtMember1 gameMatchStartedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchStartedAt}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchStartedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchStartedAt result = new GameMatchStartedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchStartedAtMember1(new GameMatchStartedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchStartedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchStartedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatch_startedAtMember1 property value. Composed type representation for type {@link GameMatchStartedAtMember1}
         * @return a {@link GameMatchStartedAtMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchStartedAtMember1 getGameMatchStartedAtMember1() {
            return this.gameMatchStartedAtMember1;
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
                writer.writeObjectValue(null, this.getGameMatchStartedAtMember1());
            }
        }
        /**
         * Sets the GameMatch_startedAtMember1 property value. Composed type representation for type {@link GameMatchStartedAtMember1}
         * @param value Value to set for the GameMatch_startedAtMember1 property.
         */
        public void setGameMatchStartedAtMember1(@jakarta.annotation.Nullable final GameMatchStartedAtMember1 value) {
            this.gameMatchStartedAtMember1 = value;
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

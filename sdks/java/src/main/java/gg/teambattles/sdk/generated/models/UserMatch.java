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
 * Match as returned by the user/team/org match-listing endpoints.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UserMatch implements Parsable {
    /**
     * The acceptedTeam property
     */
    private Team acceptedTeam;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    private Integer bestOf;
    /**
     * Completion time (ISO 8601).
     */
    private UserMatchCompletedAt completedAt;
    /**
     * The creatorTeam property
     */
    private Team creatorTeam;
    /**
     * Game definition.
     */
    private Game game;
    /**
     * Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
     */
    private String gameMode;
    /**
     * The id property
     */
    private String id;
    /**
     * Scheduled start time (ISO 8601).
     */
    private UserMatchScheduledAt scheduledAt;
    /**
     * Actual start time (ISO 8601).
     */
    private UserMatchStartedAt startedAt;
    /**
     * Lifecycle status of a match.
     */
    private MatchStatus status;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UserMatch}
     */
    @jakarta.annotation.Nonnull
    public static UserMatch createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UserMatch();
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
     * Gets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getBestOf() {
        return this.bestOf;
    }
    /**
     * Gets the completedAt property value. Completion time (ISO 8601).
     * @return a {@link UserMatchCompletedAt}
     */
    @jakarta.annotation.Nullable
    public UserMatchCompletedAt getCompletedAt() {
        return this.completedAt;
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("acceptedTeam", (n) -> { this.setAcceptedTeam(n.getObjectValue(Team::createFromDiscriminatorValue)); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getIntegerValue()); });
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getObjectValue(UserMatchCompletedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(Team::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(Game::createFromDiscriminatorValue)); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getObjectValue(UserMatchScheduledAt::createFromDiscriminatorValue)); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getObjectValue(UserMatchStartedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(MatchStatus::forValue)); });
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
     * Gets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
     * @return a {@link UserMatchScheduledAt}
     */
    @jakarta.annotation.Nullable
    public UserMatchScheduledAt getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
     * @return a {@link UserMatchStartedAt}
     */
    @jakarta.annotation.Nullable
    public UserMatchStartedAt getStartedAt() {
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
        writer.writeIntegerValue("bestOf", this.getBestOf());
        writer.writeObjectValue("completedAt", this.getCompletedAt());
        writer.writeObjectValue("creatorTeam", this.getCreatorTeam());
        writer.writeObjectValue("game", this.getGame());
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
    public void setCompletedAt(@jakarta.annotation.Nullable final UserMatchCompletedAt value) {
        this.completedAt = value;
    }
    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param value Value to set for the creatorTeam property.
     */
    public void setCreatorTeam(@jakarta.annotation.Nullable final Team value) {
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
     * Sets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
    public void setScheduledAt(@jakarta.annotation.Nullable final UserMatchScheduledAt value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
     * @param value Value to set for the startedAt property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final UserMatchStartedAt value) {
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
     * Composed type wrapper for classes {@link String}, {@link UserMatchCompletedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class UserMatchCompletedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link UserMatchCompletedAtMember1}
         */
        private UserMatchCompletedAtMember1 userMatchCompletedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link UserMatchCompletedAt}
         */
        @jakarta.annotation.Nonnull
        public static UserMatchCompletedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final UserMatchCompletedAt result = new UserMatchCompletedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setUserMatchCompletedAtMember1(new UserMatchCompletedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getUserMatchCompletedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getUserMatchCompletedAtMember1());
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
         * Gets the UserMatch_completedAtMember1 property value. Composed type representation for type {@link UserMatchCompletedAtMember1}
         * @return a {@link UserMatchCompletedAtMember1}
         */
        @jakarta.annotation.Nullable
        public UserMatchCompletedAtMember1 getUserMatchCompletedAtMember1() {
            return this.userMatchCompletedAtMember1;
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
                writer.writeObjectValue(null, this.getUserMatchCompletedAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the UserMatch_completedAtMember1 property value. Composed type representation for type {@link UserMatchCompletedAtMember1}
         * @param value Value to set for the UserMatch_completedAtMember1 property.
         */
        public void setUserMatchCompletedAtMember1(@jakarta.annotation.Nullable final UserMatchCompletedAtMember1 value) {
            this.userMatchCompletedAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link UserMatchScheduledAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class UserMatchScheduledAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link UserMatchScheduledAtMember1}
         */
        private UserMatchScheduledAtMember1 userMatchScheduledAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link UserMatchScheduledAt}
         */
        @jakarta.annotation.Nonnull
        public static UserMatchScheduledAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final UserMatchScheduledAt result = new UserMatchScheduledAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setUserMatchScheduledAtMember1(new UserMatchScheduledAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getUserMatchScheduledAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getUserMatchScheduledAtMember1());
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
         * Gets the UserMatch_scheduledAtMember1 property value. Composed type representation for type {@link UserMatchScheduledAtMember1}
         * @return a {@link UserMatchScheduledAtMember1}
         */
        @jakarta.annotation.Nullable
        public UserMatchScheduledAtMember1 getUserMatchScheduledAtMember1() {
            return this.userMatchScheduledAtMember1;
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
                writer.writeObjectValue(null, this.getUserMatchScheduledAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the UserMatch_scheduledAtMember1 property value. Composed type representation for type {@link UserMatchScheduledAtMember1}
         * @param value Value to set for the UserMatch_scheduledAtMember1 property.
         */
        public void setUserMatchScheduledAtMember1(@jakarta.annotation.Nullable final UserMatchScheduledAtMember1 value) {
            this.userMatchScheduledAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link UserMatchStartedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class UserMatchStartedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link UserMatchStartedAtMember1}
         */
        private UserMatchStartedAtMember1 userMatchStartedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link UserMatchStartedAt}
         */
        @jakarta.annotation.Nonnull
        public static UserMatchStartedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final UserMatchStartedAt result = new UserMatchStartedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setUserMatchStartedAtMember1(new UserMatchStartedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getUserMatchStartedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getUserMatchStartedAtMember1());
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
         * Gets the UserMatch_startedAtMember1 property value. Composed type representation for type {@link UserMatchStartedAtMember1}
         * @return a {@link UserMatchStartedAtMember1}
         */
        @jakarta.annotation.Nullable
        public UserMatchStartedAtMember1 getUserMatchStartedAtMember1() {
            return this.userMatchStartedAtMember1;
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
                writer.writeObjectValue(null, this.getUserMatchStartedAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the UserMatch_startedAtMember1 property value. Composed type representation for type {@link UserMatchStartedAtMember1}
         * @param value Value to set for the UserMatch_startedAtMember1 property.
         */
        public void setUserMatchStartedAtMember1(@jakarta.annotation.Nullable final UserMatchStartedAtMember1 value) {
            this.userMatchStartedAtMember1 = value;
        }
    }
}

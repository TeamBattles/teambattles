package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
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
    private String completedAt;
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
    private String scheduledAt;
    /**
     * Actual start time (ISO 8601).
     */
    private String startedAt;
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCompletedAt() {
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
        deserializerMap.put("completedAt", (n) -> { this.setCompletedAt(n.getStringValue()); });
        deserializerMap.put("creatorTeam", (n) -> { this.setCreatorTeam(n.getObjectValue(Team::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(Game::createFromDiscriminatorValue)); });
        deserializerMap.put("gameMode", (n) -> { this.setGameMode(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getStringValue()); });
        deserializerMap.put("startedAt", (n) -> { this.setStartedAt(n.getStringValue()); });
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("acceptedTeam", this.getAcceptedTeam());
        writer.writeIntegerValue("bestOf", this.getBestOf());
        writer.writeStringValue("completedAt", this.getCompletedAt());
        writer.writeObjectValue("creatorTeam", this.getCreatorTeam());
        writer.writeObjectValue("game", this.getGame());
        writer.writeStringValue("gameMode", this.getGameMode());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("scheduledAt", this.getScheduledAt());
        writer.writeStringValue("startedAt", this.getStartedAt());
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
    public void setCompletedAt(@jakarta.annotation.Nullable final String value) {
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
    public void setScheduledAt(@jakarta.annotation.Nullable final String value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
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
}

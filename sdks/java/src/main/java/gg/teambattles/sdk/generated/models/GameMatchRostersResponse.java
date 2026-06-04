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
 * Team rosters for a match, grouped by creator and accepted team.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameMatchRostersResponse implements Parsable {
    /**
     * Players on the accepted team (empty when unaccepted).
     */
    private java.util.List<GameRosterPlayer> acceptedRoster;
    /**
     * ID of the team that accepted the match, or null if unaccepted.
     */
    private GameMatchRostersResponseAcceptedTeamId acceptedTeamId;
    /**
     * Players on the creator team.
     */
    private java.util.List<GameRosterPlayer> creatorRoster;
    /**
     * ID of the team that created the match.
     */
    private String creatorTeamId;
    /**
     * Server response time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameMatchRostersResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameMatchRostersResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameMatchRostersResponse();
    }
    /**
     * Gets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
     * @return a {@link java.util.List<GameRosterPlayer>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<GameRosterPlayer> getAcceptedRoster() {
        return this.acceptedRoster;
    }
    /**
     * Gets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
     * @return a {@link GameMatchRostersResponseAcceptedTeamId}
     */
    @jakarta.annotation.Nullable
    public GameMatchRostersResponseAcceptedTeamId getAcceptedTeamId() {
        return this.acceptedTeamId;
    }
    /**
     * Gets the creatorRoster property value. Players on the creator team.
     * @return a {@link java.util.List<GameRosterPlayer>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<GameRosterPlayer> getCreatorRoster() {
        return this.creatorRoster;
    }
    /**
     * Gets the creatorTeamId property value. ID of the team that created the match.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatorTeamId() {
        return this.creatorTeamId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("acceptedRoster", (n) -> { this.setAcceptedRoster(n.getCollectionOfObjectValues(GameRosterPlayer::createFromDiscriminatorValue)); });
        deserializerMap.put("acceptedTeamId", (n) -> { this.setAcceptedTeamId(n.getObjectValue(GameMatchRostersResponseAcceptedTeamId::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorRoster", (n) -> { this.setCreatorRoster(n.getCollectionOfObjectValues(GameRosterPlayer::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeamId", (n) -> { this.setCreatorTeamId(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("acceptedRoster", this.getAcceptedRoster());
        writer.writeObjectValue("acceptedTeamId", this.getAcceptedTeamId());
        writer.writeCollectionOfObjectValues("creatorRoster", this.getCreatorRoster());
        writer.writeStringValue("creatorTeamId", this.getCreatorTeamId());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
     * @param value Value to set for the acceptedRoster property.
     */
    public void setAcceptedRoster(@jakarta.annotation.Nullable final java.util.List<GameRosterPlayer> value) {
        this.acceptedRoster = value;
    }
    /**
     * Sets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
     * @param value Value to set for the acceptedTeamId property.
     */
    public void setAcceptedTeamId(@jakarta.annotation.Nullable final GameMatchRostersResponseAcceptedTeamId value) {
        this.acceptedTeamId = value;
    }
    /**
     * Sets the creatorRoster property value. Players on the creator team.
     * @param value Value to set for the creatorRoster property.
     */
    public void setCreatorRoster(@jakarta.annotation.Nullable final java.util.List<GameRosterPlayer> value) {
        this.creatorRoster = value;
    }
    /**
     * Sets the creatorTeamId property value. ID of the team that created the match.
     * @param value Value to set for the creatorTeamId property.
     */
    public void setCreatorTeamId(@jakarta.annotation.Nullable final String value) {
        this.creatorTeamId = value;
    }
    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link GameMatchRostersResponseAcceptedTeamIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameMatchRostersResponseAcceptedTeamId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameMatchRostersResponseAcceptedTeamIdMember1}
         */
        private GameMatchRostersResponseAcceptedTeamIdMember1 gameMatchRostersResponseAcceptedTeamIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameMatchRostersResponseAcceptedTeamId}
         */
        @jakarta.annotation.Nonnull
        public static GameMatchRostersResponseAcceptedTeamId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameMatchRostersResponseAcceptedTeamId result = new GameMatchRostersResponseAcceptedTeamId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameMatchRostersResponseAcceptedTeamIdMember1(new GameMatchRostersResponseAcceptedTeamIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameMatchRostersResponseAcceptedTeamIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameMatchRostersResponseAcceptedTeamIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type {@link GameMatchRostersResponseAcceptedTeamIdMember1}
         * @return a {@link GameMatchRostersResponseAcceptedTeamIdMember1}
         */
        @jakarta.annotation.Nullable
        public GameMatchRostersResponseAcceptedTeamIdMember1 getGameMatchRostersResponseAcceptedTeamIdMember1() {
            return this.gameMatchRostersResponseAcceptedTeamIdMember1;
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
                writer.writeObjectValue(null, this.getGameMatchRostersResponseAcceptedTeamIdMember1());
            }
        }
        /**
         * Sets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type {@link GameMatchRostersResponseAcceptedTeamIdMember1}
         * @param value Value to set for the GameMatchRostersResponse_acceptedTeamIdMember1 property.
         */
        public void setGameMatchRostersResponseAcceptedTeamIdMember1(@jakarta.annotation.Nullable final GameMatchRostersResponseAcceptedTeamIdMember1 value) {
            this.gameMatchRostersResponseAcceptedTeamIdMember1 = value;
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

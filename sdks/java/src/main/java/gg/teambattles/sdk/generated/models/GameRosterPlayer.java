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
 * A single player entry on a match roster.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameRosterPlayer implements Parsable {
    /**
     * Whether the player has checked in for the match.
     */
    private Boolean isCheckedIn;
    /**
     * Player&apos;s display name, or null if unset.
     */
    private GameRosterPlayerName name;
    /**
     * ID of the team the player belongs to.
     */
    private String teamId;
    /**
     * Player&apos;s user ID.
     */
    private String userId;
    /**
     * Player&apos;s username, or null if unset.
     */
    private GameRosterPlayerUsername username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameRosterPlayer}
     */
    @jakarta.annotation.Nonnull
    public static GameRosterPlayer createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameRosterPlayer();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("isCheckedIn", (n) -> { this.setIsCheckedIn(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getObjectValue(GameRosterPlayerName::createFromDiscriminatorValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getObjectValue(GameRosterPlayerUsername::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the isCheckedIn property value. Whether the player has checked in for the match.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsCheckedIn() {
        return this.isCheckedIn;
    }
    /**
     * Gets the name property value. Player&apos;s display name, or null if unset.
     * @return a {@link GameRosterPlayerName}
     */
    @jakarta.annotation.Nullable
    public GameRosterPlayerName getName() {
        return this.name;
    }
    /**
     * Gets the teamId property value. ID of the team the player belongs to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the userId property value. Player&apos;s user ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Gets the username property value. Player&apos;s username, or null if unset.
     * @return a {@link GameRosterPlayerUsername}
     */
    @jakarta.annotation.Nullable
    public GameRosterPlayerUsername getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("isCheckedIn", this.getIsCheckedIn());
        writer.writeObjectValue("name", this.getName());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeObjectValue("username", this.getUsername());
    }
    /**
     * Sets the isCheckedIn property value. Whether the player has checked in for the match.
     * @param value Value to set for the isCheckedIn property.
     */
    public void setIsCheckedIn(@jakarta.annotation.Nullable final Boolean value) {
        this.isCheckedIn = value;
    }
    /**
     * Sets the name property value. Player&apos;s display name, or null if unset.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final GameRosterPlayerName value) {
        this.name = value;
    }
    /**
     * Sets the teamId property value. ID of the team the player belongs to.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the userId property value. Player&apos;s user ID.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
    /**
     * Sets the username property value. Player&apos;s username, or null if unset.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final GameRosterPlayerUsername value) {
        this.username = value;
    }
    /**
     * Composed type wrapper for classes {@link GameRosterPlayerNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameRosterPlayerName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameRosterPlayerNameMember1}
         */
        private GameRosterPlayerNameMember1 gameRosterPlayerNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameRosterPlayerName}
         */
        @jakarta.annotation.Nonnull
        public static GameRosterPlayerName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameRosterPlayerName result = new GameRosterPlayerName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameRosterPlayerNameMember1(new GameRosterPlayerNameMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameRosterPlayerNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameRosterPlayerNameMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameRosterPlayer_nameMember1 property value. Composed type representation for type {@link GameRosterPlayerNameMember1}
         * @return a {@link GameRosterPlayerNameMember1}
         */
        @jakarta.annotation.Nullable
        public GameRosterPlayerNameMember1 getGameRosterPlayerNameMember1() {
            return this.gameRosterPlayerNameMember1;
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
                writer.writeObjectValue(null, this.getGameRosterPlayerNameMember1());
            }
        }
        /**
         * Sets the GameRosterPlayer_nameMember1 property value. Composed type representation for type {@link GameRosterPlayerNameMember1}
         * @param value Value to set for the GameRosterPlayer_nameMember1 property.
         */
        public void setGameRosterPlayerNameMember1(@jakarta.annotation.Nullable final GameRosterPlayerNameMember1 value) {
            this.gameRosterPlayerNameMember1 = value;
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
     * Composed type wrapper for classes {@link GameRosterPlayerUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class GameRosterPlayerUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link GameRosterPlayerUsernameMember1}
         */
        private GameRosterPlayerUsernameMember1 gameRosterPlayerUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link GameRosterPlayerUsername}
         */
        @jakarta.annotation.Nonnull
        public static GameRosterPlayerUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final GameRosterPlayerUsername result = new GameRosterPlayerUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setGameRosterPlayerUsernameMember1(new GameRosterPlayerUsernameMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getGameRosterPlayerUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getGameRosterPlayerUsernameMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the GameRosterPlayer_usernameMember1 property value. Composed type representation for type {@link GameRosterPlayerUsernameMember1}
         * @return a {@link GameRosterPlayerUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public GameRosterPlayerUsernameMember1 getGameRosterPlayerUsernameMember1() {
            return this.gameRosterPlayerUsernameMember1;
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
                writer.writeObjectValue(null, this.getGameRosterPlayerUsernameMember1());
            }
        }
        /**
         * Sets the GameRosterPlayer_usernameMember1 property value. Composed type representation for type {@link GameRosterPlayerUsernameMember1}
         * @param value Value to set for the GameRosterPlayer_usernameMember1 property.
         */
        public void setGameRosterPlayerUsernameMember1(@jakarta.annotation.Nullable final GameRosterPlayerUsernameMember1 value) {
            this.gameRosterPlayerUsernameMember1 = value;
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

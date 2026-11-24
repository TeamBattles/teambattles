package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
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
    private String name;
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
    private String username;
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
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("isCheckedIn", this.getIsCheckedIn());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeStringValue("username", this.getUsername());
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
    public void setName(@jakarta.annotation.Nullable final String value) {
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
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
}

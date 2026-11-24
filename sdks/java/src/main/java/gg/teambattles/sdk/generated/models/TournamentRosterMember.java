package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One member of a participant&apos;s roster.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentRosterMember implements Parsable {
    /**
     * Avatar image URL.
     */
    private String avatarUrl;
    /**
     * User ID.
     */
    private String id;
    /**
     * Display name.
     */
    private String name;
    /**
     * How the member joined the tournament roster.
     */
    private String source;
    /**
     * Username.
     */
    private String username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentRosterMember}
     */
    @jakarta.annotation.Nonnull
    public static TournamentRosterMember createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentRosterMember();
    }
    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("source", (n) -> { this.setSource(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. User ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the name property value. Display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the source property value. How the member joined the tournament roster.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSource() {
        return this.source;
    }
    /**
     * Gets the username property value. Username.
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
        writer.writeStringValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("source", this.getSource());
        writer.writeStringValue("username", this.getUsername());
    }
    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. User ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the source property value. How the member joined the tournament roster.
     * @param value Value to set for the source property.
     */
    public void setSource(@jakarta.annotation.Nullable final String value) {
        this.source = value;
    }
    /**
     * Sets the username property value. Username.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
}

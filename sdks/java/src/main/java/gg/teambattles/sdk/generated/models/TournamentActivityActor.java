package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The user who performed a logged tournament action. Platform Staff actions suppress username/name and set isPlatformStaff: true, keeping only the id.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentActivityActor implements Parsable {
    /**
     * Actor&apos;s user ID.
     */
    private String id;
    /**
     * Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
     */
    private Boolean isPlatformStaff;
    /**
     * Display name. Omitted when the action was taken by Platform Staff.
     */
    private String name;
    /**
     * Username. Omitted when the action was taken by Platform Staff.
     */
    private String username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentActivityActor}
     */
    @jakarta.annotation.Nonnull
    public static TournamentActivityActor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentActivityActor();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isPlatformStaff", (n) -> { this.setIsPlatformStaff(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Actor&apos;s user ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsPlatformStaff() {
        return this.isPlatformStaff;
    }
    /**
     * Gets the name property value. Display name. Omitted when the action was taken by Platform Staff.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the username property value. Username. Omitted when the action was taken by Platform Staff.
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
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isPlatformStaff", this.getIsPlatformStaff());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("username", this.getUsername());
    }
    /**
     * Sets the id property value. Actor&apos;s user ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
     * @param value Value to set for the isPlatformStaff property.
     */
    public void setIsPlatformStaff(@jakarta.annotation.Nullable final Boolean value) {
        this.isPlatformStaff = value;
    }
    /**
     * Sets the name property value. Display name. Omitted when the action was taken by Platform Staff.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the username property value. Username. Omitted when the action was taken by Platform Staff.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
}

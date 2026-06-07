package gg.teambattles.sdk.generated.users.item;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiUserProfile;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing user plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithIdentifierGetResponse implements Parsable {
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * API-safe public user profile.
     */
    private ApiUserProfile user;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WithIdentifierGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static WithIdentifierGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WithIdentifierGetResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("user", (n) -> { this.setUser(n.getObjectValue(ApiUserProfile::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Gets the user property value. API-safe public user profile.
     * @return a {@link ApiUserProfile}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfile getUser() {
        return this.user;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeObjectValue("user", this.getUser());
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the user property value. API-safe public user profile.
     * @param value Value to set for the user property.
     */
    public void setUser(@jakarta.annotation.Nullable final ApiUserProfile value) {
        this.user = value;
    }
}

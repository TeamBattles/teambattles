package gg.teambattles.sdk.generated.orgs.item;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiOrganizationProfile;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing organization plus a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithIdentifierGetResponse implements Parsable {
    /**
     * API-safe organization profile.
     */
    private ApiOrganizationProfile organization;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
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
        deserializerMap.put("organization", (n) -> { this.setOrganization(n.getObjectValue(ApiOrganizationProfile::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the organization property value. API-safe organization profile.
     * @return a {@link ApiOrganizationProfile}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfile getOrganization() {
        return this.organization;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("organization", this.getOrganization());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the organization property value. API-safe organization profile.
     * @param value Value to set for the organization property.
     */
    public void setOrganization(@jakarta.annotation.Nullable final ApiOrganizationProfile value) {
        this.organization = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

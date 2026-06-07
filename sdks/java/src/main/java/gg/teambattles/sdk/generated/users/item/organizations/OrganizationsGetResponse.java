package gg.teambattles.sdk.generated.users.item.organizations;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiUserOrganizationMembership;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing organizations, count, and a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OrganizationsGetResponse implements Parsable {
    /**
     * The count property
     */
    private Integer count;
    /**
     * The organizations property
     */
    private java.util.List<ApiUserOrganizationMembership> organizations;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link OrganizationsGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static OrganizationsGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new OrganizationsGetResponse();
    }
    /**
     * Gets the count property value. The count property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("organizations", (n) -> { this.setOrganizations(n.getCollectionOfObjectValues(ApiUserOrganizationMembership::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the organizations property value. The organizations property
     * @return a {@link java.util.List<ApiUserOrganizationMembership>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiUserOrganizationMembership> getOrganizations() {
        return this.organizations;
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
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("organizations", this.getOrganizations());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the organizations property value. The organizations property
     * @param value Value to set for the organizations property.
     */
    public void setOrganizations(@jakarta.annotation.Nullable final java.util.List<ApiUserOrganizationMembership> value) {
        this.organizations = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

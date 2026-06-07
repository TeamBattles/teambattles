package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * List of the caller&apos;s webhook endpoints.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhookListResponse implements Parsable {
    /**
     * The count property
     */
    private Integer count;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * The webhooks property
     */
    private java.util.List<WebhookEndpoint> webhooks;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WebhookListResponse}
     */
    @jakarta.annotation.Nonnull
    public static WebhookListResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WebhookListResponse();
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
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("webhooks", (n) -> { this.setWebhooks(n.getCollectionOfObjectValues(WebhookEndpoint::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. The timestamp property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Gets the webhooks property value. The webhooks property
     * @return a {@link java.util.List<WebhookEndpoint>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<WebhookEndpoint> getWebhooks() {
        return this.webhooks;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("count", this.getCount());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeCollectionOfObjectValues("webhooks", this.getWebhooks());
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the webhooks property value. The webhooks property
     * @param value Value to set for the webhooks property.
     */
    public void setWebhooks(@jakarta.annotation.Nullable final java.util.List<WebhookEndpoint> value) {
        this.webhooks = value;
    }
}

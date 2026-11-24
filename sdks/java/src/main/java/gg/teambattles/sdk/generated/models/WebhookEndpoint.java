package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A webhook endpoint (no secret material).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhookEndpoint implements Parsable {
    /**
     * Creation epoch ms.
     */
    private Double createdAt;
    /**
     * Subscribed event tokens.
     */
    private java.util.List<String> events;
    /**
     * Consecutive dead-lettered deliveries (auto-disables at 50).
     */
    private Integer failureCount;
    /**
     * Webhook endpoint id.
     */
    private String id;
    /**
     * Whether the endpoint receives deliveries.
     */
    private Boolean isActive;
    /**
     * Human label, or null.
     */
    private String label;
    /**
     * Epoch ms of the last successful delivery, or null.
     */
    private Double lastDeliveredAt;
    /**
     * Epoch ms of the last failed delivery, or null.
     */
    private Double lastFailedAt;
    /**
     * Stringified bound scope id.
     */
    private String scopeId;
    /**
     * The single scope dimension an endpoint is bound to.
     */
    private WebhookEndpointScopeType scopeType;
    /**
     * First 8 chars of the current signing secret (display only).
     */
    private String secretPrefix;
    /**
     * Last update epoch ms.
     */
    private Double updatedAt;
    /**
     * Delivery URL.
     */
    private String url;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WebhookEndpoint}
     */
    @jakarta.annotation.Nonnull
    public static WebhookEndpoint createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WebhookEndpoint();
    }
    /**
     * Gets the createdAt property value. Creation epoch ms.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the events property value. Subscribed event tokens.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getEvents() {
        return this.events;
    }
    /**
     * Gets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getFailureCount() {
        return this.failureCount;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(13);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("events", (n) -> { this.setEvents(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("failureCount", (n) -> { this.setFailureCount(n.getIntegerValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isActive", (n) -> { this.setIsActive(n.getBooleanValue()); });
        deserializerMap.put("label", (n) -> { this.setLabel(n.getStringValue()); });
        deserializerMap.put("lastDeliveredAt", (n) -> { this.setLastDeliveredAt(n.getDoubleValue()); });
        deserializerMap.put("lastFailedAt", (n) -> { this.setLastFailedAt(n.getDoubleValue()); });
        deserializerMap.put("scopeId", (n) -> { this.setScopeId(n.getStringValue()); });
        deserializerMap.put("scopeType", (n) -> { this.setScopeType(n.getEnumValue(WebhookEndpointScopeType::forValue)); });
        deserializerMap.put("secretPrefix", (n) -> { this.setSecretPrefix(n.getStringValue()); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getDoubleValue()); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Webhook endpoint id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isActive property value. Whether the endpoint receives deliveries.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsActive() {
        return this.isActive;
    }
    /**
     * Gets the label property value. Human label, or null.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLabel() {
        return this.label;
    }
    /**
     * Gets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getLastDeliveredAt() {
        return this.lastDeliveredAt;
    }
    /**
     * Gets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getLastFailedAt() {
        return this.lastFailedAt;
    }
    /**
     * Gets the scopeId property value. Stringified bound scope id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScopeId() {
        return this.scopeId;
    }
    /**
     * Gets the scopeType property value. The single scope dimension an endpoint is bound to.
     * @return a {@link WebhookEndpointScopeType}
     */
    @jakarta.annotation.Nullable
    public WebhookEndpointScopeType getScopeType() {
        return this.scopeType;
    }
    /**
     * Gets the secretPrefix property value. First 8 chars of the current signing secret (display only).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSecretPrefix() {
        return this.secretPrefix;
    }
    /**
     * Gets the updatedAt property value. Last update epoch ms.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Gets the url property value. Delivery URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUrl() {
        return this.url;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeCollectionOfPrimitiveValues("events", this.getEvents());
        writer.writeIntegerValue("failureCount", this.getFailureCount());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isActive", this.getIsActive());
        writer.writeStringValue("label", this.getLabel());
        writer.writeDoubleValue("lastDeliveredAt", this.getLastDeliveredAt());
        writer.writeDoubleValue("lastFailedAt", this.getLastFailedAt());
        writer.writeStringValue("scopeId", this.getScopeId());
        writer.writeEnumValue("scopeType", this.getScopeType());
        writer.writeStringValue("secretPrefix", this.getSecretPrefix());
        writer.writeDoubleValue("updatedAt", this.getUpdatedAt());
        writer.writeStringValue("url", this.getUrl());
    }
    /**
     * Sets the createdAt property value. Creation epoch ms.
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the events property value. Subscribed event tokens.
     * @param value Value to set for the events property.
     */
    public void setEvents(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.events = value;
    }
    /**
     * Sets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
     * @param value Value to set for the failureCount property.
     */
    public void setFailureCount(@jakarta.annotation.Nullable final Integer value) {
        this.failureCount = value;
    }
    /**
     * Sets the id property value. Webhook endpoint id.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isActive property value. Whether the endpoint receives deliveries.
     * @param value Value to set for the isActive property.
     */
    public void setIsActive(@jakarta.annotation.Nullable final Boolean value) {
        this.isActive = value;
    }
    /**
     * Sets the label property value. Human label, or null.
     * @param value Value to set for the label property.
     */
    public void setLabel(@jakarta.annotation.Nullable final String value) {
        this.label = value;
    }
    /**
     * Sets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @param value Value to set for the lastDeliveredAt property.
     */
    public void setLastDeliveredAt(@jakarta.annotation.Nullable final Double value) {
        this.lastDeliveredAt = value;
    }
    /**
     * Sets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @param value Value to set for the lastFailedAt property.
     */
    public void setLastFailedAt(@jakarta.annotation.Nullable final Double value) {
        this.lastFailedAt = value;
    }
    /**
     * Sets the scopeId property value. Stringified bound scope id.
     * @param value Value to set for the scopeId property.
     */
    public void setScopeId(@jakarta.annotation.Nullable final String value) {
        this.scopeId = value;
    }
    /**
     * Sets the scopeType property value. The single scope dimension an endpoint is bound to.
     * @param value Value to set for the scopeType property.
     */
    public void setScopeType(@jakarta.annotation.Nullable final WebhookEndpointScopeType value) {
        this.scopeType = value;
    }
    /**
     * Sets the secretPrefix property value. First 8 chars of the current signing secret (display only).
     * @param value Value to set for the secretPrefix property.
     */
    public void setSecretPrefix(@jakarta.annotation.Nullable final String value) {
        this.secretPrefix = value;
    }
    /**
     * Sets the updatedAt property value. Last update epoch ms.
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final Double value) {
        this.updatedAt = value;
    }
    /**
     * Sets the url property value. Delivery URL.
     * @param value Value to set for the url property.
     */
    public void setUrl(@jakarta.annotation.Nullable final String value) {
        this.url = value;
    }
}

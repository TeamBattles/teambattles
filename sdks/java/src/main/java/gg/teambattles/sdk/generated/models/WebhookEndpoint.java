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
    private WebhookEndpointLabel label;
    /**
     * Epoch ms of the last successful delivery, or null.
     */
    private WebhookEndpointLastDeliveredAt lastDeliveredAt;
    /**
     * Epoch ms of the last failed delivery, or null.
     */
    private WebhookEndpointLastFailedAt lastFailedAt;
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
        deserializerMap.put("label", (n) -> { this.setLabel(n.getObjectValue(WebhookEndpointLabel::createFromDiscriminatorValue)); });
        deserializerMap.put("lastDeliveredAt", (n) -> { this.setLastDeliveredAt(n.getObjectValue(WebhookEndpointLastDeliveredAt::createFromDiscriminatorValue)); });
        deserializerMap.put("lastFailedAt", (n) -> { this.setLastFailedAt(n.getObjectValue(WebhookEndpointLastFailedAt::createFromDiscriminatorValue)); });
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
     * @return a {@link WebhookEndpointLabel}
     */
    @jakarta.annotation.Nullable
    public WebhookEndpointLabel getLabel() {
        return this.label;
    }
    /**
     * Gets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @return a {@link WebhookEndpointLastDeliveredAt}
     */
    @jakarta.annotation.Nullable
    public WebhookEndpointLastDeliveredAt getLastDeliveredAt() {
        return this.lastDeliveredAt;
    }
    /**
     * Gets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @return a {@link WebhookEndpointLastFailedAt}
     */
    @jakarta.annotation.Nullable
    public WebhookEndpointLastFailedAt getLastFailedAt() {
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
        writer.writeObjectValue("label", this.getLabel());
        writer.writeObjectValue("lastDeliveredAt", this.getLastDeliveredAt());
        writer.writeObjectValue("lastFailedAt", this.getLastFailedAt());
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
    public void setLabel(@jakarta.annotation.Nullable final WebhookEndpointLabel value) {
        this.label = value;
    }
    /**
     * Sets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @param value Value to set for the lastDeliveredAt property.
     */
    public void setLastDeliveredAt(@jakarta.annotation.Nullable final WebhookEndpointLastDeliveredAt value) {
        this.lastDeliveredAt = value;
    }
    /**
     * Sets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @param value Value to set for the lastFailedAt property.
     */
    public void setLastFailedAt(@jakarta.annotation.Nullable final WebhookEndpointLastFailedAt value) {
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
    /**
     * Composed type wrapper for classes {@link String}, {@link WebhookEndpointLabelMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class WebhookEndpointLabel implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link WebhookEndpointLabelMember1}
         */
        private WebhookEndpointLabelMember1 webhookEndpointLabelMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link WebhookEndpointLabel}
         */
        @jakarta.annotation.Nonnull
        public static WebhookEndpointLabel createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final WebhookEndpointLabel result = new WebhookEndpointLabel();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setWebhookEndpointLabelMember1(new WebhookEndpointLabelMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getWebhookEndpointLabelMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getWebhookEndpointLabelMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
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
         * Gets the WebhookEndpoint_labelMember1 property value. Composed type representation for type {@link WebhookEndpointLabelMember1}
         * @return a {@link WebhookEndpointLabelMember1}
         */
        @jakarta.annotation.Nullable
        public WebhookEndpointLabelMember1 getWebhookEndpointLabelMember1() {
            return this.webhookEndpointLabelMember1;
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
                writer.writeObjectValue(null, this.getWebhookEndpointLabelMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the WebhookEndpoint_labelMember1 property value. Composed type representation for type {@link WebhookEndpointLabelMember1}
         * @param value Value to set for the WebhookEndpoint_labelMember1 property.
         */
        public void setWebhookEndpointLabelMember1(@jakarta.annotation.Nullable final WebhookEndpointLabelMember1 value) {
            this.webhookEndpointLabelMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link Double}, {@link WebhookEndpointLastDeliveredAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class WebhookEndpointLastDeliveredAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Double}
         */
        private Double doubleEscaped;
        /**
         * Composed type representation for type {@link WebhookEndpointLastDeliveredAtMember1}
         */
        private WebhookEndpointLastDeliveredAtMember1 webhookEndpointLastDeliveredAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link WebhookEndpointLastDeliveredAt}
         */
        @jakarta.annotation.Nonnull
        public static WebhookEndpointLastDeliveredAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final WebhookEndpointLastDeliveredAt result = new WebhookEndpointLastDeliveredAt();
            if (parseNode.getDoubleValue() != null) {
                result.setDouble(parseNode.getDoubleValue());
            } else {
                result.setWebhookEndpointLastDeliveredAtMember1(new WebhookEndpointLastDeliveredAtMember1());
            }
            return result;
        }
        /**
         * Gets the double property value. Composed type representation for type {@link Double}
         * @return a {@link Double}
         */
        @jakarta.annotation.Nullable
        public Double getDouble() {
            return this.doubleEscaped;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getWebhookEndpointLastDeliveredAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getWebhookEndpointLastDeliveredAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type {@link WebhookEndpointLastDeliveredAtMember1}
         * @return a {@link WebhookEndpointLastDeliveredAtMember1}
         */
        @jakarta.annotation.Nullable
        public WebhookEndpointLastDeliveredAtMember1 getWebhookEndpointLastDeliveredAtMember1() {
            return this.webhookEndpointLastDeliveredAtMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getDouble() != null) {
                writer.writeDoubleValue(null, this.getDouble());
            } else {
                writer.writeObjectValue(null, this.getWebhookEndpointLastDeliveredAtMember1());
            }
        }
        /**
         * Sets the double property value. Composed type representation for type {@link Double}
         * @param value Value to set for the double property.
         */
        public void setDouble(@jakarta.annotation.Nullable final Double value) {
            this.doubleEscaped = value;
        }
        /**
         * Sets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type {@link WebhookEndpointLastDeliveredAtMember1}
         * @param value Value to set for the WebhookEndpoint_lastDeliveredAtMember1 property.
         */
        public void setWebhookEndpointLastDeliveredAtMember1(@jakarta.annotation.Nullable final WebhookEndpointLastDeliveredAtMember1 value) {
            this.webhookEndpointLastDeliveredAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link Double}, {@link WebhookEndpointLastFailedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class WebhookEndpointLastFailedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Double}
         */
        private Double doubleEscaped;
        /**
         * Composed type representation for type {@link WebhookEndpointLastFailedAtMember1}
         */
        private WebhookEndpointLastFailedAtMember1 webhookEndpointLastFailedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link WebhookEndpointLastFailedAt}
         */
        @jakarta.annotation.Nonnull
        public static WebhookEndpointLastFailedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final WebhookEndpointLastFailedAt result = new WebhookEndpointLastFailedAt();
            if (parseNode.getDoubleValue() != null) {
                result.setDouble(parseNode.getDoubleValue());
            } else {
                result.setWebhookEndpointLastFailedAtMember1(new WebhookEndpointLastFailedAtMember1());
            }
            return result;
        }
        /**
         * Gets the double property value. Composed type representation for type {@link Double}
         * @return a {@link Double}
         */
        @jakarta.annotation.Nullable
        public Double getDouble() {
            return this.doubleEscaped;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getWebhookEndpointLastFailedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getWebhookEndpointLastFailedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the WebhookEndpoint_lastFailedAtMember1 property value. Composed type representation for type {@link WebhookEndpointLastFailedAtMember1}
         * @return a {@link WebhookEndpointLastFailedAtMember1}
         */
        @jakarta.annotation.Nullable
        public WebhookEndpointLastFailedAtMember1 getWebhookEndpointLastFailedAtMember1() {
            return this.webhookEndpointLastFailedAtMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getDouble() != null) {
                writer.writeDoubleValue(null, this.getDouble());
            } else {
                writer.writeObjectValue(null, this.getWebhookEndpointLastFailedAtMember1());
            }
        }
        /**
         * Sets the double property value. Composed type representation for type {@link Double}
         * @param value Value to set for the double property.
         */
        public void setDouble(@jakarta.annotation.Nullable final Double value) {
            this.doubleEscaped = value;
        }
        /**
         * Sets the WebhookEndpoint_lastFailedAtMember1 property value. Composed type representation for type {@link WebhookEndpointLastFailedAtMember1}
         * @param value Value to set for the WebhookEndpoint_lastFailedAtMember1 property.
         */
        public void setWebhookEndpointLastFailedAtMember1(@jakarta.annotation.Nullable final WebhookEndpointLastFailedAtMember1 value) {
            this.webhookEndpointLastFailedAtMember1 = value;
        }
    }
}

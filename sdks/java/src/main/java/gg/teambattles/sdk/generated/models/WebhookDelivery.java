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
 * A single webhook delivery-log row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhookDelivery implements Parsable {
    /**
     * Number of delivery attempts made.
     */
    private Integer attemptCount;
    /**
     * Emit/creation epoch ms (retention key).
     */
    private Double createdAt;
    /**
     * Epoch ms of successful delivery, or null.
     */
    private Double deliveredAt;
    /**
     * Last error message, or null.
     */
    private String errorMessage;
    /**
     * The delivered event name.
     */
    private String event;
    /**
     * Delivery-log row id.
     */
    private String id;
    /**
     * Stable evt_ id, reused across retries (idempotency key).
     */
    private String idempotencyId;
    /**
     * True for test.ping deliveries.
     */
    private Boolean isTest;
    /**
     * Epoch ms of the next scheduled retry, or null.
     */
    private Double nextAttemptAt;
    /**
     * Lifecycle status of one logical delivery (endpoint x idempotency id).
     */
    private WebhookDeliveryStatus status;
    /**
     * Last HTTP response status, or null.
     */
    private WebhookDeliveryStatusCode statusCode;
    /**
     * Last update epoch ms.
     */
    private Double updatedAt;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WebhookDelivery}
     */
    @jakarta.annotation.Nonnull
    public static WebhookDelivery createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WebhookDelivery();
    }
    /**
     * Gets the attemptCount property value. Number of delivery attempts made.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getAttemptCount() {
        return this.attemptCount;
    }
    /**
     * Gets the createdAt property value. Emit/creation epoch ms (retention key).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the deliveredAt property value. Epoch ms of successful delivery, or null.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getDeliveredAt() {
        return this.deliveredAt;
    }
    /**
     * Gets the errorMessage property value. Last error message, or null.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getErrorMessage() {
        return this.errorMessage;
    }
    /**
     * Gets the event property value. The delivered event name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getEvent() {
        return this.event;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(12);
        deserializerMap.put("attemptCount", (n) -> { this.setAttemptCount(n.getIntegerValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("deliveredAt", (n) -> { this.setDeliveredAt(n.getDoubleValue()); });
        deserializerMap.put("errorMessage", (n) -> { this.setErrorMessage(n.getStringValue()); });
        deserializerMap.put("event", (n) -> { this.setEvent(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("idempotencyId", (n) -> { this.setIdempotencyId(n.getStringValue()); });
        deserializerMap.put("isTest", (n) -> { this.setIsTest(n.getBooleanValue()); });
        deserializerMap.put("nextAttemptAt", (n) -> { this.setNextAttemptAt(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(WebhookDeliveryStatus::forValue)); });
        deserializerMap.put("statusCode", (n) -> { this.setStatusCode(n.getObjectValue(WebhookDeliveryStatusCode::createFromDiscriminatorValue)); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Delivery-log row id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getIdempotencyId() {
        return this.idempotencyId;
    }
    /**
     * Gets the isTest property value. True for test.ping deliveries.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsTest() {
        return this.isTest;
    }
    /**
     * Gets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getNextAttemptAt() {
        return this.nextAttemptAt;
    }
    /**
     * Gets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
     * @return a {@link WebhookDeliveryStatus}
     */
    @jakarta.annotation.Nullable
    public WebhookDeliveryStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the statusCode property value. Last HTTP response status, or null.
     * @return a {@link WebhookDeliveryStatusCode}
     */
    @jakarta.annotation.Nullable
    public WebhookDeliveryStatusCode getStatusCode() {
        return this.statusCode;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("attemptCount", this.getAttemptCount());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeDoubleValue("deliveredAt", this.getDeliveredAt());
        writer.writeStringValue("errorMessage", this.getErrorMessage());
        writer.writeStringValue("event", this.getEvent());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("idempotencyId", this.getIdempotencyId());
        writer.writeBooleanValue("isTest", this.getIsTest());
        writer.writeDoubleValue("nextAttemptAt", this.getNextAttemptAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeObjectValue("statusCode", this.getStatusCode());
        writer.writeDoubleValue("updatedAt", this.getUpdatedAt());
    }
    /**
     * Sets the attemptCount property value. Number of delivery attempts made.
     * @param value Value to set for the attemptCount property.
     */
    public void setAttemptCount(@jakarta.annotation.Nullable final Integer value) {
        this.attemptCount = value;
    }
    /**
     * Sets the createdAt property value. Emit/creation epoch ms (retention key).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the deliveredAt property value. Epoch ms of successful delivery, or null.
     * @param value Value to set for the deliveredAt property.
     */
    public void setDeliveredAt(@jakarta.annotation.Nullable final Double value) {
        this.deliveredAt = value;
    }
    /**
     * Sets the errorMessage property value. Last error message, or null.
     * @param value Value to set for the errorMessage property.
     */
    public void setErrorMessage(@jakarta.annotation.Nullable final String value) {
        this.errorMessage = value;
    }
    /**
     * Sets the event property value. The delivered event name.
     * @param value Value to set for the event property.
     */
    public void setEvent(@jakarta.annotation.Nullable final String value) {
        this.event = value;
    }
    /**
     * Sets the id property value. Delivery-log row id.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
     * @param value Value to set for the idempotencyId property.
     */
    public void setIdempotencyId(@jakarta.annotation.Nullable final String value) {
        this.idempotencyId = value;
    }
    /**
     * Sets the isTest property value. True for test.ping deliveries.
     * @param value Value to set for the isTest property.
     */
    public void setIsTest(@jakarta.annotation.Nullable final Boolean value) {
        this.isTest = value;
    }
    /**
     * Sets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
     * @param value Value to set for the nextAttemptAt property.
     */
    public void setNextAttemptAt(@jakarta.annotation.Nullable final Double value) {
        this.nextAttemptAt = value;
    }
    /**
     * Sets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final WebhookDeliveryStatus value) {
        this.status = value;
    }
    /**
     * Sets the statusCode property value. Last HTTP response status, or null.
     * @param value Value to set for the statusCode property.
     */
    public void setStatusCode(@jakarta.annotation.Nullable final WebhookDeliveryStatusCode value) {
        this.statusCode = value;
    }
    /**
     * Sets the updatedAt property value. Last update epoch ms.
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final Double value) {
        this.updatedAt = value;
    }
    /**
     * Composed type wrapper for classes {@link Integer}, {@link WebhookDeliveryStatusCodeMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class WebhookDeliveryStatusCode implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link WebhookDeliveryStatusCodeMember1}
         */
        private WebhookDeliveryStatusCodeMember1 webhookDeliveryStatusCodeMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link WebhookDeliveryStatusCode}
         */
        @jakarta.annotation.Nonnull
        public static WebhookDeliveryStatusCode createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final WebhookDeliveryStatusCode result = new WebhookDeliveryStatusCode();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setWebhookDeliveryStatusCodeMember1(new WebhookDeliveryStatusCodeMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getWebhookDeliveryStatusCodeMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getWebhookDeliveryStatusCodeMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the integer property value. Composed type representation for type {@link Integer}
         * @return a {@link Integer}
         */
        @jakarta.annotation.Nullable
        public Integer getInteger() {
            return this.integer;
        }
        /**
         * Gets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type {@link WebhookDeliveryStatusCodeMember1}
         * @return a {@link WebhookDeliveryStatusCodeMember1}
         */
        @jakarta.annotation.Nullable
        public WebhookDeliveryStatusCodeMember1 getWebhookDeliveryStatusCodeMember1() {
            return this.webhookDeliveryStatusCodeMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getWebhookDeliveryStatusCodeMember1());
            }
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
        /**
         * Sets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type {@link WebhookDeliveryStatusCodeMember1}
         * @param value Value to set for the WebhookDelivery_statusCodeMember1 property.
         */
        public void setWebhookDeliveryStatusCodeMember1(@jakarta.annotation.Nullable final WebhookDeliveryStatusCodeMember1 value) {
            this.webhookDeliveryStatusCodeMember1 = value;
        }
    }
}

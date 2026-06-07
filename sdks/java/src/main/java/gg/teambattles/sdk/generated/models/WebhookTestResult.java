package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Outcome of a single test.ping delivery.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhookTestResult implements Parsable {
    /**
     * Whether the test.ping returned a 2xx.
     */
    private Boolean delivered;
    /**
     * Failure reason, if not delivered.
     */
    private String error;
    /**
     * HTTP response status, if any.
     */
    private Integer statusCode;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WebhookTestResult}
     */
    @jakarta.annotation.Nonnull
    public static WebhookTestResult createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WebhookTestResult();
    }
    /**
     * Gets the delivered property value. Whether the test.ping returned a 2xx.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getDelivered() {
        return this.delivered;
    }
    /**
     * Gets the error property value. Failure reason, if not delivered.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getError() {
        return this.error;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("delivered", (n) -> { this.setDelivered(n.getBooleanValue()); });
        deserializerMap.put("error", (n) -> { this.setError(n.getStringValue()); });
        deserializerMap.put("statusCode", (n) -> { this.setStatusCode(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the statusCode property value. HTTP response status, if any.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getStatusCode() {
        return this.statusCode;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("delivered", this.getDelivered());
        writer.writeStringValue("error", this.getError());
        writer.writeIntegerValue("statusCode", this.getStatusCode());
    }
    /**
     * Sets the delivered property value. Whether the test.ping returned a 2xx.
     * @param value Value to set for the delivered property.
     */
    public void setDelivered(@jakarta.annotation.Nullable final Boolean value) {
        this.delivered = value;
    }
    /**
     * Sets the error property value. Failure reason, if not delivered.
     * @param value Value to set for the error property.
     */
    public void setError(@jakarta.annotation.Nullable final String value) {
        this.error = value;
    }
    /**
     * Sets the statusCode property value. HTTP response status, if any.
     * @param value Value to set for the statusCode property.
     */
    public void setStatusCode(@jakarta.annotation.Nullable final Integer value) {
        this.statusCode = value;
    }
}

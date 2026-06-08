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
     * Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     */
    private Boolean delivered;
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
     * Gets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getDelivered() {
        return this.delivered;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(1);
        deserializerMap.put("delivered", (n) -> { this.setDelivered(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("delivered", this.getDelivered());
    }
    /**
     * Sets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     * @param value Value to set for the delivered property.
     */
    public void setDelivered(@jakarta.annotation.Nullable final Boolean value) {
        this.delivered = value;
    }
}

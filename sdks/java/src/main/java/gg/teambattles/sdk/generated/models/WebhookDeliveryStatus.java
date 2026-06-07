package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Lifecycle status of one logical delivery (endpoint x idempotency id).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum WebhookDeliveryStatus implements ValuedEnum {
    Pending("pending"),
    Delivering("delivering"),
    Delivered("delivered"),
    Failed("failed"),
    Dead_lettered("dead_lettered");
    public final String value;
    WebhookDeliveryStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static WebhookDeliveryStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "pending": return Pending;
            case "delivering": return Delivering;
            case "delivered": return Delivered;
            case "failed": return Failed;
            case "dead_lettered": return Dead_lettered;
            default: return null;
        }
    }
}

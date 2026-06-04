package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.ApiException;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Standard API error response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class Error extends ApiException implements Parsable {
    /**
     * Optional human-readable explanation. Often absent on auth/permission errors.
     */
    private String details;
    /**
     * Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
     */
    private String error;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link Error}
     */
    @jakarta.annotation.Nonnull
    public static Error createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new Error();
    }
    /**
     * Gets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDetails() {
        return this.details;
    }
    /**
     * Gets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("details", (n) -> { this.setDetails(n.getStringValue()); });
        deserializerMap.put("error", (n) -> { this.setError(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * The primary error message.
     * @return a {@link String}
     */
    @jakarta.annotation.Nonnull
    @Override
    public String getMessage() {
        return this.getDetails();
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("details", this.getDetails());
        writer.writeStringValue("error", this.getError());
    }
    /**
     * Sets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
     * @param value Value to set for the details property.
     */
    public void setDetails(@jakarta.annotation.Nullable final String value) {
        this.details = value;
    }
    /**
     * Sets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
     * @param value Value to set for the error property.
     */
    public void setError(@jakarta.annotation.Nullable final String value) {
        this.error = value;
    }
}

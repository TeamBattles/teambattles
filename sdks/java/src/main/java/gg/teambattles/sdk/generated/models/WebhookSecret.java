package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One-time signing-secret reveal (create/rotate).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WebhookSecret implements Parsable {
    /**
     * The endpoint id the secret belongs to.
     */
    private String id;
    /**
     * First 8 chars of the new signing secret.
     */
    private String secretPrefix;
    /**
     * Plaintext signing secret. Shown ONCE - store it now.
     */
    private String signingSecret;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link WebhookSecret}
     */
    @jakarta.annotation.Nonnull
    public static WebhookSecret createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new WebhookSecret();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("secretPrefix", (n) -> { this.setSecretPrefix(n.getStringValue()); });
        deserializerMap.put("signingSecret", (n) -> { this.setSigningSecret(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. The endpoint id the secret belongs to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the secretPrefix property value. First 8 chars of the new signing secret.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSecretPrefix() {
        return this.secretPrefix;
    }
    /**
     * Gets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSigningSecret() {
        return this.signingSecret;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("secretPrefix", this.getSecretPrefix());
        writer.writeStringValue("signingSecret", this.getSigningSecret());
    }
    /**
     * Sets the id property value. The endpoint id the secret belongs to.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the secretPrefix property value. First 8 chars of the new signing secret.
     * @param value Value to set for the secretPrefix property.
     */
    public void setSecretPrefix(@jakarta.annotation.Nullable final String value) {
        this.secretPrefix = value;
    }
    /**
     * Sets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
     * @param value Value to set for the signingSecret property.
     */
    public void setSigningSecret(@jakarta.annotation.Nullable final String value) {
        this.signingSecret = value;
    }
}

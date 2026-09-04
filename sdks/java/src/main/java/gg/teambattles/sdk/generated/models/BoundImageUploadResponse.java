package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A stored, NSFW-scanned image bound to the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class BoundImageUploadResponse implements Parsable {
    /**
     * Convex storage id, already bound to the API key owner. Use it on a write.
     */
    private String storageId;
    /**
     * Public CDN URL for the stored image.
     */
    private String url;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link BoundImageUploadResponse}
     */
    @jakarta.annotation.Nonnull
    public static BoundImageUploadResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new BoundImageUploadResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("storageId", (n) -> { this.setStorageId(n.getStringValue()); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStorageId() {
        return this.storageId;
    }
    /**
     * Gets the url property value. Public CDN URL for the stored image.
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
        writer.writeStringValue("storageId", this.getStorageId());
        writer.writeStringValue("url", this.getUrl());
    }
    /**
     * Sets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
     * @param value Value to set for the storageId property.
     */
    public void setStorageId(@jakarta.annotation.Nullable final String value) {
        this.storageId = value;
    }
    /**
     * Sets the url property value. Public CDN URL for the stored image.
     * @param value Value to set for the url property.
     */
    public void setUrl(@jakarta.annotation.Nullable final String value) {
        this.url = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CreateBanResponse implements Parsable {
    /**
     * Created league ban ID.
     */
    private String banId;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link CreateBanResponse}
     */
    @jakarta.annotation.Nonnull
    public static CreateBanResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new CreateBanResponse();
    }
    /**
     * Gets the banId property value. Created league ban ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBanId() {
        return this.banId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("banId", (n) -> { this.setBanId(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the success property value. The success property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSuccess() {
        return this.success;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("banId", this.getBanId());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the banId property value. Created league ban ID.
     * @param value Value to set for the banId property.
     */
    public void setBanId(@jakarta.annotation.Nullable final String value) {
        this.banId = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

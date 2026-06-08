package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateAttendanceResponse implements Parsable {
    /**
     * The message property
     */
    private String message;
    /**
     * The reclaimedSpot property
     */
    private Boolean reclaimedSpot;
    /**
     * The replacedBy property
     */
    private String replacedBy;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateAttendanceResponse}
     */
    @jakarta.annotation.Nonnull
    public static UpdateAttendanceResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateAttendanceResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("message", (n) -> { this.setMessage(n.getStringValue()); });
        deserializerMap.put("reclaimedSpot", (n) -> { this.setReclaimedSpot(n.getBooleanValue()); });
        deserializerMap.put("replacedBy", (n) -> { this.setReplacedBy(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the message property value. The message property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMessage() {
        return this.message;
    }
    /**
     * Gets the reclaimedSpot property value. The reclaimedSpot property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getReclaimedSpot() {
        return this.reclaimedSpot;
    }
    /**
     * Gets the replacedBy property value. The replacedBy property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getReplacedBy() {
        return this.replacedBy;
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
     * Gets the timestamp property value. The timestamp property
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
        writer.writeStringValue("message", this.getMessage());
        writer.writeBooleanValue("reclaimedSpot", this.getReclaimedSpot());
        writer.writeStringValue("replacedBy", this.getReplacedBy());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the message property value. The message property
     * @param value Value to set for the message property.
     */
    public void setMessage(@jakarta.annotation.Nullable final String value) {
        this.message = value;
    }
    /**
     * Sets the reclaimedSpot property value. The reclaimedSpot property
     * @param value Value to set for the reclaimedSpot property.
     */
    public void setReclaimedSpot(@jakarta.annotation.Nullable final Boolean value) {
        this.reclaimedSpot = value;
    }
    /**
     * Sets the replacedBy property value. The replacedBy property
     * @param value Value to set for the replacedBy property.
     */
    public void setReplacedBy(@jakarta.annotation.Nullable final String value) {
        this.replacedBy = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

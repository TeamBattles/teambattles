package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ReportChatMessageResponse implements Parsable {
    /**
     * True if the owner had already reported this message.
     */
    private Boolean alreadyReported;
    /**
     * Report ID (existing one if already reported).
     */
    private String reportId;
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
     * @return a {@link ReportChatMessageResponse}
     */
    @jakarta.annotation.Nonnull
    public static ReportChatMessageResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ReportChatMessageResponse();
    }
    /**
     * Gets the alreadyReported property value. True if the owner had already reported this message.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAlreadyReported() {
        return this.alreadyReported;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("alreadyReported", (n) -> { this.setAlreadyReported(n.getBooleanValue()); });
        deserializerMap.put("reportId", (n) -> { this.setReportId(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the reportId property value. Report ID (existing one if already reported).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getReportId() {
        return this.reportId;
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
        writer.writeBooleanValue("alreadyReported", this.getAlreadyReported());
        writer.writeStringValue("reportId", this.getReportId());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the alreadyReported property value. True if the owner had already reported this message.
     * @param value Value to set for the alreadyReported property.
     */
    public void setAlreadyReported(@jakarta.annotation.Nullable final Boolean value) {
        this.alreadyReported = value;
    }
    /**
     * Sets the reportId property value. Report ID (existing one if already reported).
     * @param value Value to set for the reportId property.
     */
    public void setReportId(@jakarta.annotation.Nullable final String value) {
        this.reportId = value;
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

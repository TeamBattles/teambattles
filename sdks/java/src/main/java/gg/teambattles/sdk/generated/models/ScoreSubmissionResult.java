package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of submitting or confirming a map score.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ScoreSubmissionResult implements Parsable {
    /**
     * Action performed, e.g. &quot;submitted&quot; or &quot;confirmed&quot;.
     */
    private String action;
    /**
     * Zero-based map index that was affected.
     */
    private Integer mapIndex;
    /**
     * Resulting score status, e.g. PENDING or CONFIRMED.
     */
    private String scoreStatus;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ScoreSubmissionResult}
     */
    @jakarta.annotation.Nonnull
    public static ScoreSubmissionResult createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ScoreSubmissionResult();
    }
    /**
     * Gets the action property value. Action performed, e.g. &quot;submitted&quot; or &quot;confirmed&quot;.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAction() {
        return this.action;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("action", (n) -> { this.setAction(n.getStringValue()); });
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("scoreStatus", (n) -> { this.setScoreStatus(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the mapIndex property value. Zero-based map index that was affected.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the scoreStatus property value. Resulting score status, e.g. PENDING or CONFIRMED.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScoreStatus() {
        return this.scoreStatus;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("action", this.getAction());
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeStringValue("scoreStatus", this.getScoreStatus());
        writer.writeBooleanValue("success", this.getSuccess());
    }
    /**
     * Sets the action property value. Action performed, e.g. &quot;submitted&quot; or &quot;confirmed&quot;.
     * @param value Value to set for the action property.
     */
    public void setAction(@jakarta.annotation.Nullable final String value) {
        this.action = value;
    }
    /**
     * Sets the mapIndex property value. Zero-based map index that was affected.
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the scoreStatus property value. Resulting score status, e.g. PENDING or CONFIRMED.
     * @param value Value to set for the scoreStatus property.
     */
    public void setScoreStatus(@jakarta.annotation.Nullable final String value) {
        this.scoreStatus = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
}

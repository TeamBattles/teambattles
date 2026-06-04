package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Outcome for a single submitted map score.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameBatchScoreResult implements Parsable {
    /**
     * Failure reason, present only when status is failed.
     */
    private String error;
    /**
     * Index of the map this result refers to.
     */
    private Integer mapIndex;
    /**
     * Per-map outcome: &quot;confirmed&quot; on success, &quot;failed&quot; otherwise.
     */
    private String status;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameBatchScoreResult}
     */
    @jakarta.annotation.Nonnull
    public static GameBatchScoreResult createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameBatchScoreResult();
    }
    /**
     * Gets the error property value. Failure reason, present only when status is failed.
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
        deserializerMap.put("error", (n) -> { this.setError(n.getStringValue()); });
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the mapIndex property value. Index of the map this result refers to.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the status property value. Per-map outcome: &quot;confirmed&quot; on success, &quot;failed&quot; otherwise.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("error", this.getError());
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeStringValue("status", this.getStatus());
    }
    /**
     * Sets the error property value. Failure reason, present only when status is failed.
     * @param value Value to set for the error property.
     */
    public void setError(@jakarta.annotation.Nullable final String value) {
        this.error = value;
    }
    /**
     * Sets the mapIndex property value. Index of the map this result refers to.
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the status property value. Per-map outcome: &quot;confirmed&quot; on success, &quot;failed&quot; otherwise.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
}

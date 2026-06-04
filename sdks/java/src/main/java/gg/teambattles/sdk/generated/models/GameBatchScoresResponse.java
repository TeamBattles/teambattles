package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of a batch map-score submission.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameBatchScoresResponse implements Parsable {
    /**
     * Number of map scores that were confirmed.
     */
    private Integer count;
    /**
     * Per-map results, in submission order.
     */
    private java.util.List<GameBatchScoreResult> submitted;
    /**
     * True only when every submitted map score was confirmed.
     */
    private Boolean success;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameBatchScoresResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameBatchScoresResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameBatchScoresResponse();
    }
    /**
     * Gets the count property value. Number of map scores that were confirmed.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("submitted", (n) -> { this.setSubmitted(n.getCollectionOfObjectValues(GameBatchScoreResult::createFromDiscriminatorValue)); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the submitted property value. Per-map results, in submission order.
     * @return a {@link java.util.List<GameBatchScoreResult>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<GameBatchScoreResult> getSubmitted() {
        return this.submitted;
    }
    /**
     * Gets the success property value. True only when every submitted map score was confirmed.
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
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("submitted", this.getSubmitted());
        writer.writeBooleanValue("success", this.getSuccess());
    }
    /**
     * Sets the count property value. Number of map scores that were confirmed.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the submitted property value. Per-map results, in submission order.
     * @param value Value to set for the submitted property.
     */
    public void setSubmitted(@jakarta.annotation.Nullable final java.util.List<GameBatchScoreResult> value) {
        this.submitted = value;
    }
    /**
     * Sets the success property value. True only when every submitted map score was confirmed.
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
}

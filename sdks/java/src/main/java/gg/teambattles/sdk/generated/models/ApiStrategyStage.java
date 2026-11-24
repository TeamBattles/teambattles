package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A single playback stage of a strategy.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStrategyStage implements Parsable {
    /**
     * Stage playback duration in milliseconds.
     */
    private Integer durationMs;
    /**
     * Stable stage id within the strategy.
     */
    private String id;
    /**
     * Author stage label, when set.
     */
    private String label;
    /**
     * Registered map level for this stage. Omitted values use the map default.
     */
    private String levelId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStrategyStage}
     */
    @jakarta.annotation.Nonnull
    public static ApiStrategyStage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStrategyStage();
    }
    /**
     * Gets the durationMs property value. Stage playback duration in milliseconds.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDurationMs() {
        return this.durationMs;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("durationMs", (n) -> { this.setDurationMs(n.getIntegerValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("label", (n) -> { this.setLabel(n.getStringValue()); });
        deserializerMap.put("levelId", (n) -> { this.setLevelId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Stable stage id within the strategy.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the label property value. Author stage label, when set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLabel() {
        return this.label;
    }
    /**
     * Gets the levelId property value. Registered map level for this stage. Omitted values use the map default.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLevelId() {
        return this.levelId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("durationMs", this.getDurationMs());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("label", this.getLabel());
        writer.writeStringValue("levelId", this.getLevelId());
    }
    /**
     * Sets the durationMs property value. Stage playback duration in milliseconds.
     * @param value Value to set for the durationMs property.
     */
    public void setDurationMs(@jakarta.annotation.Nullable final Integer value) {
        this.durationMs = value;
    }
    /**
     * Sets the id property value. Stable stage id within the strategy.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the label property value. Author stage label, when set.
     * @param value Value to set for the label property.
     */
    public void setLabel(@jakarta.annotation.Nullable final String value) {
        this.label = value;
    }
    /**
     * Sets the levelId property value. Registered map level for this stage. Omitted values use the map default.
     * @param value Value to set for the levelId property.
     */
    public void setLevelId(@jakarta.annotation.Nullable final String value) {
        this.levelId = value;
    }
}

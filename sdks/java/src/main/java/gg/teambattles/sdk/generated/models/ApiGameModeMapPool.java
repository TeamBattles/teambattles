package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game-scoped map pool for a single mode.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameModeMapPool implements Parsable {
    /**
     * The mapIds property
     */
    private java.util.List<String> mapIds;
    /**
     * The modeId property
     */
    private String modeId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameModeMapPool}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameModeMapPool createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameModeMapPool();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("mapIds", (n) -> { this.setMapIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("modeId", (n) -> { this.setModeId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the mapIds property value. The mapIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getMapIds() {
        return this.mapIds;
    }
    /**
     * Gets the modeId property value. The modeId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getModeId() {
        return this.modeId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("mapIds", this.getMapIds());
        writer.writeStringValue("modeId", this.getModeId());
    }
    /**
     * Sets the mapIds property value. The mapIds property
     * @param value Value to set for the mapIds property.
     */
    public void setMapIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.mapIds = value;
    }
    /**
     * Sets the modeId property value. The modeId property
     * @param value Value to set for the modeId property.
     */
    public void setModeId(@jakarta.annotation.Nullable final String value) {
        this.modeId = value;
    }
}

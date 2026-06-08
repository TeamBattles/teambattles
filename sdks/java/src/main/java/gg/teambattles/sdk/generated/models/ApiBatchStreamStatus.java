package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Compact live-status row returned by the batch endpoint.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiBatchStreamStatus implements Parsable {
    /**
     * User ID.
     */
    private String id;
    /**
     * The isLive property
     */
    private Boolean isLive;
    /**
     * The platforms property
     */
    private java.util.List<StreamPlatform> platforms;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiBatchStreamStatus}
     */
    @jakarta.annotation.Nonnull
    public static ApiBatchStreamStatus createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiBatchStreamStatus();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isLive", (n) -> { this.setIsLive(n.getBooleanValue()); });
        deserializerMap.put("platforms", (n) -> { this.setPlatforms(n.getCollectionOfEnumValues(StreamPlatform::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. User ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isLive property value. The isLive property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsLive() {
        return this.isLive;
    }
    /**
     * Gets the platforms property value. The platforms property
     * @return a {@link java.util.List<StreamPlatform>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<StreamPlatform> getPlatforms() {
        return this.platforms;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isLive", this.getIsLive());
        writer.writeCollectionOfEnumValues("platforms", this.getPlatforms());
    }
    /**
     * Sets the id property value. User ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isLive property value. The isLive property
     * @param value Value to set for the isLive property.
     */
    public void setIsLive(@jakarta.annotation.Nullable final Boolean value) {
        this.isLive = value;
    }
    /**
     * Sets the platforms property value. The platforms property
     * @param value Value to set for the platforms property.
     */
    public void setPlatforms(@jakarta.annotation.Nullable final java.util.List<StreamPlatform> value) {
        this.platforms = value;
    }
}

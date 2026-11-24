package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Static game map definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameMap implements Parsable {
    /**
     * The coverImage property
     */
    private String coverImage;
    /**
     * The id property
     */
    private String id;
    /**
     * The isReleased property
     */
    private Boolean isReleased;
    /**
     * The minimapImage property
     */
    private String minimapImage;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameMap}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameMap createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameMap();
    }
    /**
     * Gets the coverImage property value. The coverImage property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCoverImage() {
        return this.coverImage;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("coverImage", (n) -> { this.setCoverImage(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isReleased", (n) -> { this.setIsReleased(n.getBooleanValue()); });
        deserializerMap.put("minimapImage", (n) -> { this.setMinimapImage(n.getStringValue()); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. The id property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isReleased property value. The isReleased property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsReleased() {
        return this.isReleased;
    }
    /**
     * Gets the minimapImage property value. The minimapImage property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMinimapImage() {
        return this.minimapImage;
    }
    /**
     * Gets the nameKey property value. The nameKey property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNameKey() {
        return this.nameKey;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("coverImage", this.getCoverImage());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isReleased", this.getIsReleased());
        writer.writeStringValue("minimapImage", this.getMinimapImage());
        writer.writeStringValue("nameKey", this.getNameKey());
    }
    /**
     * Sets the coverImage property value. The coverImage property
     * @param value Value to set for the coverImage property.
     */
    public void setCoverImage(@jakarta.annotation.Nullable final String value) {
        this.coverImage = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isReleased property value. The isReleased property
     * @param value Value to set for the isReleased property.
     */
    public void setIsReleased(@jakarta.annotation.Nullable final Boolean value) {
        this.isReleased = value;
    }
    /**
     * Sets the minimapImage property value. The minimapImage property
     * @param value Value to set for the minimapImage property.
     */
    public void setMinimapImage(@jakarta.annotation.Nullable final String value) {
        this.minimapImage = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
}

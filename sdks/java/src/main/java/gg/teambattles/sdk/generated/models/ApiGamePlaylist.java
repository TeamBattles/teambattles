package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game-scoped playlist definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGamePlaylist implements Parsable {
    /**
     * The allowedGameModeIds property
     */
    private java.util.List<String> allowedGameModeIds;
    /**
     * The descriptionKey property
     */
    private String descriptionKey;
    /**
     * The id property
     */
    private String id;
    /**
     * The image property
     */
    private String image;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGamePlaylist}
     */
    @jakarta.annotation.Nonnull
    public static ApiGamePlaylist createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGamePlaylist();
    }
    /**
     * Gets the allowedGameModeIds property value. The allowedGameModeIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAllowedGameModeIds() {
        return this.allowedGameModeIds;
    }
    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("allowedGameModeIds", (n) -> { this.setAllowedGameModeIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("image", (n) -> { this.setImage(n.getStringValue()); });
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
     * Gets the image property value. The image property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getImage() {
        return this.image;
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
        writer.writeCollectionOfPrimitiveValues("allowedGameModeIds", this.getAllowedGameModeIds());
        writer.writeStringValue("descriptionKey", this.getDescriptionKey());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("image", this.getImage());
        writer.writeStringValue("nameKey", this.getNameKey());
    }
    /**
     * Sets the allowedGameModeIds property value. The allowedGameModeIds property
     * @param value Value to set for the allowedGameModeIds property.
     */
    public void setAllowedGameModeIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.allowedGameModeIds = value;
    }
    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param value Value to set for the descriptionKey property.
     */
    public void setDescriptionKey(@jakarta.annotation.Nullable final String value) {
        this.descriptionKey = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the image property value. The image property
     * @param value Value to set for the image property.
     */
    public void setImage(@jakarta.annotation.Nullable final String value) {
        this.image = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
}

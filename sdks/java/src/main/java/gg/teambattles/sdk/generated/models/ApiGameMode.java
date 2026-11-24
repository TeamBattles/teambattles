package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Static game mode definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameMode implements Parsable {
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
     * The mapIds property
     */
    private java.util.List<String> mapIds;
    /**
     * The nameKey property
     */
    private String nameKey;
    /**
     * The rewardBonus property
     */
    private Double rewardBonus;
    /**
     * The shortName property
     */
    private String shortName;
    /**
     * The supportsDraftToggle property
     */
    private Boolean supportsDraftToggle;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameMode}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameMode createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameMode();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("image", (n) -> { this.setImage(n.getStringValue()); });
        deserializerMap.put("mapIds", (n) -> { this.setMapIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        deserializerMap.put("rewardBonus", (n) -> { this.setRewardBonus(n.getDoubleValue()); });
        deserializerMap.put("shortName", (n) -> { this.setShortName(n.getStringValue()); });
        deserializerMap.put("supportsDraftToggle", (n) -> { this.setSupportsDraftToggle(n.getBooleanValue()); });
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
     * Gets the mapIds property value. The mapIds property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getMapIds() {
        return this.mapIds;
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
     * Gets the rewardBonus property value. The rewardBonus property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getRewardBonus() {
        return this.rewardBonus;
    }
    /**
     * Gets the shortName property value. The shortName property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getShortName() {
        return this.shortName;
    }
    /**
     * Gets the supportsDraftToggle property value. The supportsDraftToggle property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSupportsDraftToggle() {
        return this.supportsDraftToggle;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("descriptionKey", this.getDescriptionKey());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("image", this.getImage());
        writer.writeCollectionOfPrimitiveValues("mapIds", this.getMapIds());
        writer.writeStringValue("nameKey", this.getNameKey());
        writer.writeDoubleValue("rewardBonus", this.getRewardBonus());
        writer.writeStringValue("shortName", this.getShortName());
        writer.writeBooleanValue("supportsDraftToggle", this.getSupportsDraftToggle());
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
     * Sets the mapIds property value. The mapIds property
     * @param value Value to set for the mapIds property.
     */
    public void setMapIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.mapIds = value;
    }
    /**
     * Sets the nameKey property value. The nameKey property
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
    /**
     * Sets the rewardBonus property value. The rewardBonus property
     * @param value Value to set for the rewardBonus property.
     */
    public void setRewardBonus(@jakarta.annotation.Nullable final Double value) {
        this.rewardBonus = value;
    }
    /**
     * Sets the shortName property value. The shortName property
     * @param value Value to set for the shortName property.
     */
    public void setShortName(@jakarta.annotation.Nullable final String value) {
        this.shortName = value;
    }
    /**
     * Sets the supportsDraftToggle property value. The supportsDraftToggle property
     * @param value Value to set for the supportsDraftToggle property.
     */
    public void setSupportsDraftToggle(@jakarta.annotation.Nullable final Boolean value) {
        this.supportsDraftToggle = value;
    }
}

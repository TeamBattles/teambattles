package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates league profile branding and public metadata.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateLeagueBrandingRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Convex storage ID for the league avatar.
     */
    private String avatarStorageId;
    /**
     * Convex storage ID for the league banner.
     */
    private String bannerStorageId;
    /**
     * The description property
     */
    private String description;
    /**
     * The name property
     */
    private String name;
    /**
     * The profileThemeId property
     */
    private String profileThemeId;
    /**
     * The socials property
     */
    private LeagueBrandingSocials socials;
    /**
     * Instantiates a new {@link UpdateLeagueBrandingRequestBody} and sets the default values.
     */
    public UpdateLeagueBrandingRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateLeagueBrandingRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateLeagueBrandingRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateLeagueBrandingRequestBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the avatarStorageId property value. Convex storage ID for the league avatar.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAvatarStorageId() {
        return this.avatarStorageId;
    }
    /**
     * Gets the bannerStorageId property value. Convex storage ID for the league banner.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBannerStorageId() {
        return this.bannerStorageId;
    }
    /**
     * Gets the description property value. The description property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("avatarStorageId", (n) -> { this.setAvatarStorageId(n.getStringValue()); });
        deserializerMap.put("bannerStorageId", (n) -> { this.setBannerStorageId(n.getStringValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("profileThemeId", (n) -> { this.setProfileThemeId(n.getStringValue()); });
        deserializerMap.put("socials", (n) -> { this.setSocials(n.getObjectValue(LeagueBrandingSocials::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the name property value. The name property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the profileThemeId property value. The profileThemeId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getProfileThemeId() {
        return this.profileThemeId;
    }
    /**
     * Gets the socials property value. The socials property
     * @return a {@link LeagueBrandingSocials}
     */
    @jakarta.annotation.Nullable
    public LeagueBrandingSocials getSocials() {
        return this.socials;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("avatarStorageId", this.getAvatarStorageId());
        writer.writeStringValue("bannerStorageId", this.getBannerStorageId());
        writer.writeStringValue("description", this.getDescription());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("profileThemeId", this.getProfileThemeId());
        writer.writeObjectValue("socials", this.getSocials());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the avatarStorageId property value. Convex storage ID for the league avatar.
     * @param value Value to set for the avatarStorageId property.
     */
    public void setAvatarStorageId(@jakarta.annotation.Nullable final String value) {
        this.avatarStorageId = value;
    }
    /**
     * Sets the bannerStorageId property value. Convex storage ID for the league banner.
     * @param value Value to set for the bannerStorageId property.
     */
    public void setBannerStorageId(@jakarta.annotation.Nullable final String value) {
        this.bannerStorageId = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the profileThemeId property value. The profileThemeId property
     * @param value Value to set for the profileThemeId property.
     */
    public void setProfileThemeId(@jakarta.annotation.Nullable final String value) {
        this.profileThemeId = value;
    }
    /**
     * Sets the socials property value. The socials property
     * @param value Value to set for the socials property.
     */
    public void setSocials(@jakarta.annotation.Nullable final LeagueBrandingSocials value) {
        this.socials = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Fields to update on the organization. All optional.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateOrgBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The description property
     */
    private String description;
    /**
     * The isPublic property
     */
    private Boolean isPublic;
    /**
     * The name property
     */
    private String name;
    /**
     * The profileVisibility property
     */
    private UpdateOrgBodyProfileVisibility profileVisibility;
    /**
     * The tag property
     */
    private String tag;
    /**
     * Instantiates a new {@link UpdateOrgBody} and sets the default values.
     */
    public UpdateOrgBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateOrgBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateOrgBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateOrgBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("isPublic", (n) -> { this.setIsPublic(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("profileVisibility", (n) -> { this.setProfileVisibility(n.getEnumValue(UpdateOrgBodyProfileVisibility::forValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the isPublic property value. The isPublic property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsPublic() {
        return this.isPublic;
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
     * Gets the profileVisibility property value. The profileVisibility property
     * @return a {@link UpdateOrgBodyProfileVisibility}
     */
    @jakarta.annotation.Nullable
    public UpdateOrgBodyProfileVisibility getProfileVisibility() {
        return this.profileVisibility;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTag() {
        return this.tag;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("description", this.getDescription());
        writer.writeBooleanValue("isPublic", this.getIsPublic());
        writer.writeStringValue("name", this.getName());
        writer.writeEnumValue("profileVisibility", this.getProfileVisibility());
        writer.writeStringValue("tag", this.getTag());
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
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the isPublic property value. The isPublic property
     * @param value Value to set for the isPublic property.
     */
    public void setIsPublic(@jakarta.annotation.Nullable final Boolean value) {
        this.isPublic = value;
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the profileVisibility property value. The profileVisibility property
     * @param value Value to set for the profileVisibility property.
     */
    public void setProfileVisibility(@jakarta.annotation.Nullable final UpdateOrgBodyProfileVisibility value) {
        this.profileVisibility = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final String value) {
        this.tag = value;
    }
}

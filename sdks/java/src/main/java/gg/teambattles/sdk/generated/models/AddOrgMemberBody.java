package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Add a member to the organization.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class AddOrgMemberBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The role to assign to the new member. Ownership is set on creation.
     */
    private AddOrgMemberBodyRole role;
    /**
     * Convex user ID of the member to add.
     */
    private String targetUserId;
    /**
     * Instantiates a new {@link AddOrgMemberBody} and sets the default values.
     */
    public AddOrgMemberBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link AddOrgMemberBody}
     */
    @jakarta.annotation.Nonnull
    public static AddOrgMemberBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new AddOrgMemberBody();
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("role", (n) -> { this.setRole(n.getEnumValue(AddOrgMemberBodyRole::forValue)); });
        deserializerMap.put("targetUserId", (n) -> { this.setTargetUserId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the role property value. The role to assign to the new member. Ownership is set on creation.
     * @return a {@link AddOrgMemberBodyRole}
     */
    @jakarta.annotation.Nullable
    public AddOrgMemberBodyRole getRole() {
        return this.role;
    }
    /**
     * Gets the targetUserId property value. Convex user ID of the member to add.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTargetUserId() {
        return this.targetUserId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("role", this.getRole());
        writer.writeStringValue("targetUserId", this.getTargetUserId());
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
     * Sets the role property value. The role to assign to the new member. Ownership is set on creation.
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final AddOrgMemberBodyRole value) {
        this.role = value;
    }
    /**
     * Sets the targetUserId property value. Convex user ID of the member to add.
     * @param value Value to set for the targetUserId property.
     */
    public void setTargetUserId(@jakarta.annotation.Nullable final String value) {
        this.targetUserId = value;
    }
}

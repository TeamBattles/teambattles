package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates a league staff member role.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateLeagueMemberRoleRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Assignable league staff role. OWNER cannot be assigned through this API.
     */
    private UpdateLeagueMemberRoleRequestBodyRole role;
    /**
     * Instantiates a new {@link UpdateLeagueMemberRoleRequestBody} and sets the default values.
     */
    public UpdateLeagueMemberRoleRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateLeagueMemberRoleRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateLeagueMemberRoleRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateLeagueMemberRoleRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(1);
        deserializerMap.put("role", (n) -> { this.setRole(n.getEnumValue(UpdateLeagueMemberRoleRequestBodyRole::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the role property value. Assignable league staff role. OWNER cannot be assigned through this API.
     * @return a {@link UpdateLeagueMemberRoleRequestBodyRole}
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueMemberRoleRequestBodyRole getRole() {
        return this.role;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("role", this.getRole());
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
     * Sets the role property value. Assignable league staff role. OWNER cannot be assigned through this API.
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final UpdateLeagueMemberRoleRequestBodyRole value) {
        this.role = value;
    }
}

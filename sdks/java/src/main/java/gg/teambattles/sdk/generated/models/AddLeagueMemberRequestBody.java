package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Adds or reactivates a league staff member.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class AddLeagueMemberRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Assignable league staff role. OWNER cannot be assigned through this API.
     */
    private AddLeagueMemberRequestBodyRole role;
    /**
     * User ID to add to league staff.
     */
    private String userId;
    /**
     * Instantiates a new {@link AddLeagueMemberRequestBody} and sets the default values.
     */
    public AddLeagueMemberRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link AddLeagueMemberRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static AddLeagueMemberRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new AddLeagueMemberRequestBody();
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
        deserializerMap.put("role", (n) -> { this.setRole(n.getEnumValue(AddLeagueMemberRequestBodyRole::forValue)); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the role property value. Assignable league staff role. OWNER cannot be assigned through this API.
     * @return a {@link AddLeagueMemberRequestBodyRole}
     */
    @jakarta.annotation.Nullable
    public AddLeagueMemberRequestBodyRole getRole() {
        return this.role;
    }
    /**
     * Gets the userId property value. User ID to add to league staff.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("role", this.getRole());
        writer.writeStringValue("userId", this.getUserId());
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
    public void setRole(@jakarta.annotation.Nullable final AddLeagueMemberRequestBodyRole value) {
        this.role = value;
    }
    /**
     * Sets the userId property value. User ID to add to league staff.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
}

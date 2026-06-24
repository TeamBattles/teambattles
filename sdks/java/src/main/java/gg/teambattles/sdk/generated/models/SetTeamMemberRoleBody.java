package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Set a team member&apos;s role.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class SetTeamMemberRoleBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The new role for the member. Captaincy is changed via captaincy transfer.
     */
    private SetTeamMemberRoleBodyRole role;
    /**
     * Instantiates a new {@link SetTeamMemberRoleBody} and sets the default values.
     */
    public SetTeamMemberRoleBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link SetTeamMemberRoleBody}
     */
    @jakarta.annotation.Nonnull
    public static SetTeamMemberRoleBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new SetTeamMemberRoleBody();
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
        deserializerMap.put("role", (n) -> { this.setRole(n.getEnumValue(SetTeamMemberRoleBodyRole::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the role property value. The new role for the member. Captaincy is changed via captaincy transfer.
     * @return a {@link SetTeamMemberRoleBodyRole}
     */
    @jakarta.annotation.Nullable
    public SetTeamMemberRoleBodyRole getRole() {
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
     * Sets the role property value. The new role for the member. Captaincy is changed via captaincy transfer.
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final SetTeamMemberRoleBodyRole value) {
        this.role = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Transfer team captaincy to another member.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TransferTeamCaptaincyBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Convex user ID of the active team member to promote to captain.
     */
    private String newCaptainId;
    /**
     * Instantiates a new {@link TransferTeamCaptaincyBody} and sets the default values.
     */
    public TransferTeamCaptaincyBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TransferTeamCaptaincyBody}
     */
    @jakarta.annotation.Nonnull
    public static TransferTeamCaptaincyBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TransferTeamCaptaincyBody();
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
        deserializerMap.put("newCaptainId", (n) -> { this.setNewCaptainId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the newCaptainId property value. Convex user ID of the active team member to promote to captain.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNewCaptainId() {
        return this.newCaptainId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("newCaptainId", this.getNewCaptainId());
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
     * Sets the newCaptainId property value. Convex user ID of the active team member to promote to captain.
     * @param value Value to set for the newCaptainId property.
     */
    public void setNewCaptainId(@jakarta.annotation.Nullable final String value) {
        this.newCaptainId = value;
    }
}

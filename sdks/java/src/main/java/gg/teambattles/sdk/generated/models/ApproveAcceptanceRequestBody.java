package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Approves a pending match acceptance as the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApproveAcceptanceRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Optional list of available map IDs for the match.
     */
    private java.util.List<String> availableMaps;
    /**
     * Optional message sent to the accepting team.
     */
    private String responseMessage;
    /**
     * Instantiates a new {@link ApproveAcceptanceRequestBody} and sets the default values.
     */
    public ApproveAcceptanceRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApproveAcceptanceRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static ApproveAcceptanceRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApproveAcceptanceRequestBody();
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
     * Gets the availableMaps property value. Optional list of available map IDs for the match.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getAvailableMaps() {
        return this.availableMaps;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("availableMaps", (n) -> { this.setAvailableMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("responseMessage", (n) -> { this.setResponseMessage(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the responseMessage property value. Optional message sent to the accepting team.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getResponseMessage() {
        return this.responseMessage;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("availableMaps", this.getAvailableMaps());
        writer.writeStringValue("responseMessage", this.getResponseMessage());
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
     * Sets the availableMaps property value. Optional list of available map IDs for the match.
     * @param value Value to set for the availableMaps property.
     */
    public void setAvailableMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.availableMaps = value;
    }
    /**
     * Sets the responseMessage property value. Optional message sent to the accepting team.
     * @param value Value to set for the responseMessage property.
     */
    public void setResponseMessage(@jakarta.annotation.Nullable final String value) {
        this.responseMessage = value;
    }
}

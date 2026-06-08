package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates a self-filed support ticket owned by the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CreateTicketRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Support category. Entity-bound and staff-only categories are rejected.
     */
    private CreateTicketRequestBodyCategory category;
    /**
     * Initial message / description (max 2000 chars).
     */
    private String description;
    /**
     * Optional storage IDs (from /uploads/image-url) to attach (max 10).
     */
    private java.util.List<String> images;
    /**
     * Ticket subject (max 150 chars).
     */
    private String subject;
    /**
     * Instantiates a new {@link CreateTicketRequestBody} and sets the default values.
     */
    public CreateTicketRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link CreateTicketRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static CreateTicketRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new CreateTicketRequestBody();
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
     * Gets the category property value. Support category. Entity-bound and staff-only categories are rejected.
     * @return a {@link CreateTicketRequestBodyCategory}
     */
    @jakarta.annotation.Nullable
    public CreateTicketRequestBodyCategory getCategory() {
        return this.category;
    }
    /**
     * Gets the description property value. Initial message / description (max 2000 chars).
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("category", (n) -> { this.setCategory(n.getEnumValue(CreateTicketRequestBodyCategory::forValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("images", (n) -> { this.setImages(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("subject", (n) -> { this.setSubject(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getImages() {
        return this.images;
    }
    /**
     * Gets the subject property value. Ticket subject (max 150 chars).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSubject() {
        return this.subject;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("category", this.getCategory());
        writer.writeStringValue("description", this.getDescription());
        writer.writeCollectionOfPrimitiveValues("images", this.getImages());
        writer.writeStringValue("subject", this.getSubject());
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
     * Sets the category property value. Support category. Entity-bound and staff-only categories are rejected.
     * @param value Value to set for the category property.
     */
    public void setCategory(@jakarta.annotation.Nullable final CreateTicketRequestBodyCategory value) {
        this.category = value;
    }
    /**
     * Sets the description property value. Initial message / description (max 2000 chars).
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
     * @param value Value to set for the images property.
     */
    public void setImages(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.images = value;
    }
    /**
     * Sets the subject property value. Ticket subject (max 150 chars).
     * @param value Value to set for the subject property.
     */
    public void setSubject(@jakarta.annotation.Nullable final String value) {
        this.subject = value;
    }
}

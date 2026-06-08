package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpsertDisplayRuleRequestBodyContent implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The sections property
     */
    private java.util.List<UpsertDisplayRuleRequestBodyContentSections> sections;
    /**
     * Instantiates a new {@link UpsertDisplayRuleRequestBodyContent} and sets the default values.
     */
    public UpsertDisplayRuleRequestBodyContent() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpsertDisplayRuleRequestBodyContent}
     */
    @jakarta.annotation.Nonnull
    public static UpsertDisplayRuleRequestBodyContent createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpsertDisplayRuleRequestBodyContent();
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
        deserializerMap.put("sections", (n) -> { this.setSections(n.getCollectionOfObjectValues(UpsertDisplayRuleRequestBodyContentSections::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the sections property value. The sections property
     * @return a {@link java.util.List<UpsertDisplayRuleRequestBodyContentSections>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<UpsertDisplayRuleRequestBodyContentSections> getSections() {
        return this.sections;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("sections", this.getSections());
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
     * Sets the sections property value. The sections property
     * @param value Value to set for the sections property.
     */
    public void setSections(@jakarta.annotation.Nullable final java.util.List<UpsertDisplayRuleRequestBodyContentSections> value) {
        this.sections = value;
    }
}

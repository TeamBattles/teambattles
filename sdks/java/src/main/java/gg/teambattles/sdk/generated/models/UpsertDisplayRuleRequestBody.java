package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates or updates a display rule.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpsertDisplayRuleRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Display rule category.
     */
    private String category;
    /**
     * The categoryIcon property
     */
    private String categoryIcon;
    /**
     * The categoryOrder property
     */
    private Double categoryOrder;
    /**
     * The content property
     */
    private UpsertDisplayRuleRequestBodyContent content;
    /**
     * Game ID whose display rule should change.
     */
    private String gameId;
    /**
     * The isCustomCategory property
     */
    private Boolean isCustomCategory;
    /**
     * The isOverride property
     */
    private Boolean isOverride;
    /**
     * The scope property
     */
    private UpsertDisplayRuleRequestBodyScope scope;
    /**
     * Instantiates a new {@link UpsertDisplayRuleRequestBody} and sets the default values.
     */
    public UpsertDisplayRuleRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpsertDisplayRuleRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpsertDisplayRuleRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpsertDisplayRuleRequestBody();
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
     * Gets the category property value. Display rule category.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCategory() {
        return this.category;
    }
    /**
     * Gets the categoryIcon property value. The categoryIcon property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCategoryIcon() {
        return this.categoryIcon;
    }
    /**
     * Gets the categoryOrder property value. The categoryOrder property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCategoryOrder() {
        return this.categoryOrder;
    }
    /**
     * Gets the content property value. The content property
     * @return a {@link UpsertDisplayRuleRequestBodyContent}
     */
    @jakarta.annotation.Nullable
    public UpsertDisplayRuleRequestBodyContent getContent() {
        return this.content;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("category", (n) -> { this.setCategory(n.getStringValue()); });
        deserializerMap.put("categoryIcon", (n) -> { this.setCategoryIcon(n.getStringValue()); });
        deserializerMap.put("categoryOrder", (n) -> { this.setCategoryOrder(n.getDoubleValue()); });
        deserializerMap.put("content", (n) -> { this.setContent(n.getObjectValue(UpsertDisplayRuleRequestBodyContent::createFromDiscriminatorValue)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("isCustomCategory", (n) -> { this.setIsCustomCategory(n.getBooleanValue()); });
        deserializerMap.put("isOverride", (n) -> { this.setIsOverride(n.getBooleanValue()); });
        deserializerMap.put("scope", (n) -> { this.setScope(n.getObjectValue(UpsertDisplayRuleRequestBodyScope::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game ID whose display rule should change.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the isCustomCategory property value. The isCustomCategory property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsCustomCategory() {
        return this.isCustomCategory;
    }
    /**
     * Gets the isOverride property value. The isOverride property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsOverride() {
        return this.isOverride;
    }
    /**
     * Gets the scope property value. The scope property
     * @return a {@link UpsertDisplayRuleRequestBodyScope}
     */
    @jakarta.annotation.Nullable
    public UpsertDisplayRuleRequestBodyScope getScope() {
        return this.scope;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("category", this.getCategory());
        writer.writeStringValue("categoryIcon", this.getCategoryIcon());
        writer.writeDoubleValue("categoryOrder", this.getCategoryOrder());
        writer.writeObjectValue("content", this.getContent());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeBooleanValue("isCustomCategory", this.getIsCustomCategory());
        writer.writeBooleanValue("isOverride", this.getIsOverride());
        writer.writeObjectValue("scope", this.getScope());
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
     * Sets the category property value. Display rule category.
     * @param value Value to set for the category property.
     */
    public void setCategory(@jakarta.annotation.Nullable final String value) {
        this.category = value;
    }
    /**
     * Sets the categoryIcon property value. The categoryIcon property
     * @param value Value to set for the categoryIcon property.
     */
    public void setCategoryIcon(@jakarta.annotation.Nullable final String value) {
        this.categoryIcon = value;
    }
    /**
     * Sets the categoryOrder property value. The categoryOrder property
     * @param value Value to set for the categoryOrder property.
     */
    public void setCategoryOrder(@jakarta.annotation.Nullable final Double value) {
        this.categoryOrder = value;
    }
    /**
     * Sets the content property value. The content property
     * @param value Value to set for the content property.
     */
    public void setContent(@jakarta.annotation.Nullable final UpsertDisplayRuleRequestBodyContent value) {
        this.content = value;
    }
    /**
     * Sets the gameId property value. Game ID whose display rule should change.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the isCustomCategory property value. The isCustomCategory property
     * @param value Value to set for the isCustomCategory property.
     */
    public void setIsCustomCategory(@jakarta.annotation.Nullable final Boolean value) {
        this.isCustomCategory = value;
    }
    /**
     * Sets the isOverride property value. The isOverride property
     * @param value Value to set for the isOverride property.
     */
    public void setIsOverride(@jakarta.annotation.Nullable final Boolean value) {
        this.isOverride = value;
    }
    /**
     * Sets the scope property value. The scope property
     * @param value Value to set for the scope property.
     */
    public void setScope(@jakarta.annotation.Nullable final UpsertDisplayRuleRequestBodyScope value) {
        this.scope = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Server-safe objective DTO. UI icon components are intentionally omitted.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiObjective implements Parsable {
    /**
     * Machine-readable completion rule.
     */
    private String completionRule;
    /**
     * i18n key for the objective description.
     */
    private String descriptionKey;
    /**
     * Experience awarded by this objective.
     */
    private Double exp;
    /**
     * Objective definition ID.
     */
    private String id;
    /**
     * Objective completion scope.
     */
    private String scope;
    /**
     * i18n key for the objective title.
     */
    private String titleKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiObjective}
     */
    @jakarta.annotation.Nonnull
    public static ApiObjective createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiObjective();
    }
    /**
     * Gets the completionRule property value. Machine-readable completion rule.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCompletionRule() {
        return this.completionRule;
    }
    /**
     * Gets the descriptionKey property value. i18n key for the objective description.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescriptionKey() {
        return this.descriptionKey;
    }
    /**
     * Gets the exp property value. Experience awarded by this objective.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getExp() {
        return this.exp;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("completionRule", (n) -> { this.setCompletionRule(n.getStringValue()); });
        deserializerMap.put("descriptionKey", (n) -> { this.setDescriptionKey(n.getStringValue()); });
        deserializerMap.put("exp", (n) -> { this.setExp(n.getDoubleValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("scope", (n) -> { this.setScope(n.getStringValue()); });
        deserializerMap.put("titleKey", (n) -> { this.setTitleKey(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Objective definition ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the scope property value. Objective completion scope.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScope() {
        return this.scope;
    }
    /**
     * Gets the titleKey property value. i18n key for the objective title.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTitleKey() {
        return this.titleKey;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("completionRule", this.getCompletionRule());
        writer.writeStringValue("descriptionKey", this.getDescriptionKey());
        writer.writeDoubleValue("exp", this.getExp());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("scope", this.getScope());
        writer.writeStringValue("titleKey", this.getTitleKey());
    }
    /**
     * Sets the completionRule property value. Machine-readable completion rule.
     * @param value Value to set for the completionRule property.
     */
    public void setCompletionRule(@jakarta.annotation.Nullable final String value) {
        this.completionRule = value;
    }
    /**
     * Sets the descriptionKey property value. i18n key for the objective description.
     * @param value Value to set for the descriptionKey property.
     */
    public void setDescriptionKey(@jakarta.annotation.Nullable final String value) {
        this.descriptionKey = value;
    }
    /**
     * Sets the exp property value. Experience awarded by this objective.
     * @param value Value to set for the exp property.
     */
    public void setExp(@jakarta.annotation.Nullable final Double value) {
        this.exp = value;
    }
    /**
     * Sets the id property value. Objective definition ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the scope property value. Objective completion scope.
     * @param value Value to set for the scope property.
     */
    public void setScope(@jakarta.annotation.Nullable final String value) {
        this.scope = value;
    }
    /**
     * Sets the titleKey property value. i18n key for the objective title.
     * @param value Value to set for the titleKey property.
     */
    public void setTitleKey(@jakarta.annotation.Nullable final String value) {
        this.titleKey = value;
    }
}

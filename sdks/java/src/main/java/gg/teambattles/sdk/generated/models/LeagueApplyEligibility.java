package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * League application eligibility.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueApplyEligibility implements Parsable {
    /**
     * API key owner&apos;s apply-to-join eligibility.
     */
    private LeagueApplyEligibilityEligibility eligibility;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueApplyEligibility}
     */
    @jakarta.annotation.Nonnull
    public static LeagueApplyEligibility createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueApplyEligibility();
    }
    /**
     * Gets the eligibility property value. API key owner&apos;s apply-to-join eligibility.
     * @return a {@link LeagueApplyEligibilityEligibility}
     */
    @jakarta.annotation.Nullable
    public LeagueApplyEligibilityEligibility getEligibility() {
        return this.eligibility;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("eligibility", (n) -> { this.setEligibility(n.getObjectValue(LeagueApplyEligibilityEligibility::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("eligibility", this.getEligibility());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the eligibility property value. API key owner&apos;s apply-to-join eligibility.
     * @param value Value to set for the eligibility property.
     */
    public void setEligibility(@jakarta.annotation.Nullable final LeagueApplyEligibilityEligibility value) {
        this.eligibility = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * League display rules.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueDisplayRules implements Parsable {
    /**
     * Number of display rules returned.
     */
    private Integer count;
    /**
     * Display rule documents for the league game.
     */
    private java.util.List<LeagueDisplayRulesDisplayRules> displayRules;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueDisplayRules}
     */
    @jakarta.annotation.Nonnull
    public static LeagueDisplayRules createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueDisplayRules();
    }
    /**
     * Gets the count property value. Number of display rules returned.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * Gets the displayRules property value. Display rule documents for the league game.
     * @return a {@link java.util.List<LeagueDisplayRulesDisplayRules>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueDisplayRulesDisplayRules> getDisplayRules() {
        return this.displayRules;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("displayRules", (n) -> { this.setDisplayRules(n.getCollectionOfObjectValues(LeagueDisplayRulesDisplayRules::createFromDiscriminatorValue)); });
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
        writer.writeIntegerValue("count", this.getCount());
        writer.writeCollectionOfObjectValues("displayRules", this.getDisplayRules());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of display rules returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the displayRules property value. Display rule documents for the league game.
     * @param value Value to set for the displayRules property.
     */
    public void setDisplayRules(@jakarta.annotation.Nullable final java.util.List<LeagueDisplayRulesDisplayRules> value) {
        this.displayRules = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

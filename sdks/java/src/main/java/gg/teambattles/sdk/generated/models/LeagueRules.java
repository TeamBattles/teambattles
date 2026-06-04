package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game rules and points config for a league.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueRules implements Parsable {
    /**
     * Points configuration document for the league + game, or null if unset.
     */
    private UntypedNode pointsConfig;
    /**
     * Game rules document for the league + game, or null if unset.
     */
    private UntypedNode rules;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueRules}
     */
    @jakarta.annotation.Nonnull
    public static LeagueRules createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueRules();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("pointsConfig", (n) -> { this.setPointsConfig(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("rules", (n) -> { this.setRules(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the pointsConfig property value. Points configuration document for the league + game, or null if unset.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getPointsConfig() {
        return this.pointsConfig;
    }
    /**
     * Gets the rules property value. Game rules document for the league + game, or null if unset.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getRules() {
        return this.rules;
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
        writer.writeObjectValue("pointsConfig", this.getPointsConfig());
        writer.writeObjectValue("rules", this.getRules());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the pointsConfig property value. Points configuration document for the league + game, or null if unset.
     * @param value Value to set for the pointsConfig property.
     */
    public void setPointsConfig(@jakarta.annotation.Nullable final UntypedNode value) {
        this.pointsConfig = value;
    }
    /**
     * Sets the rules property value. Game rules document for the league + game, or null if unset.
     * @param value Value to set for the rules property.
     */
    public void setRules(@jakarta.annotation.Nullable final UntypedNode value) {
        this.rules = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tournament bracket response envelope.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentBracketResponse implements Parsable {
    /**
     * Rounds, nodes, and participant display data.
     */
    private TournamentBracket bracket;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentBracketResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentBracketResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentBracketResponse();
    }
    /**
     * Gets the bracket property value. Rounds, nodes, and participant display data.
     * @return a {@link TournamentBracket}
     */
    @jakarta.annotation.Nullable
    public TournamentBracket getBracket() {
        return this.bracket;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("bracket", (n) -> { this.setBracket(n.getObjectValue(TournamentBracket::createFromDiscriminatorValue)); });
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
        writer.writeObjectValue("bracket", this.getBracket());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the bracket property value. Rounds, nodes, and participant display data.
     * @param value Value to set for the bracket property.
     */
    public void setBracket(@jakarta.annotation.Nullable final TournamentBracket value) {
        this.bracket = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

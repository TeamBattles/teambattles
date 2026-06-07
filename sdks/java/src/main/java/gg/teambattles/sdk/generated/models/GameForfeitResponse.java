package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Result of a successful match forfeit.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameForfeitResponse implements Parsable {
    /**
     * ID of the team that forfeited.
     */
    private String forfeitedByTeamId;
    /**
     * ID of the forfeited match.
     */
    private String matchId;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * Server response time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameForfeitResponse}
     */
    @jakarta.annotation.Nonnull
    public static GameForfeitResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameForfeitResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("forfeitedByTeamId", (n) -> { this.setForfeitedByTeamId(n.getStringValue()); });
        deserializerMap.put("matchId", (n) -> { this.setMatchId(n.getStringValue()); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the forfeitedByTeamId property value. ID of the team that forfeited.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getForfeitedByTeamId() {
        return this.forfeitedByTeamId;
    }
    /**
     * Gets the matchId property value. ID of the forfeited match.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMatchId() {
        return this.matchId;
    }
    /**
     * Gets the success property value. The success property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSuccess() {
        return this.success;
    }
    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
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
        writer.writeStringValue("forfeitedByTeamId", this.getForfeitedByTeamId());
        writer.writeStringValue("matchId", this.getMatchId());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the forfeitedByTeamId property value. ID of the team that forfeited.
     * @param value Value to set for the forfeitedByTeamId property.
     */
    public void setForfeitedByTeamId(@jakarta.annotation.Nullable final String value) {
        this.forfeitedByTeamId = value;
    }
    /**
     * Sets the matchId property value. ID of the forfeited match.
     * @param value Value to set for the matchId property.
     */
    public void setMatchId(@jakarta.annotation.Nullable final String value) {
        this.matchId = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Outcome of accepting or declining a tournament invite.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentInviteRespondResponse implements Parsable {
    /**
     * Echoes the request&apos;s accept flag once the response has been recorded.
     */
    private Boolean accepted;
    /**
     * The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
     */
    private String participantId;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentInviteRespondResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentInviteRespondResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentInviteRespondResponse();
    }
    /**
     * Gets the accepted property value. Echoes the request&apos;s accept flag once the response has been recorded.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAccepted() {
        return this.accepted;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("accepted", (n) -> { this.setAccepted(n.getBooleanValue()); });
        deserializerMap.put("participantId", (n) -> { this.setParticipantId(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getParticipantId() {
        return this.participantId;
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
        writer.writeBooleanValue("accepted", this.getAccepted());
        writer.writeStringValue("participantId", this.getParticipantId());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the accepted property value. Echoes the request&apos;s accept flag once the response has been recorded.
     * @param value Value to set for the accepted property.
     */
    public void setAccepted(@jakarta.annotation.Nullable final Boolean value) {
        this.accepted = value;
    }
    /**
     * Sets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
     * @param value Value to set for the participantId property.
     */
    public void setParticipantId(@jakarta.annotation.Nullable final String value) {
        this.participantId = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

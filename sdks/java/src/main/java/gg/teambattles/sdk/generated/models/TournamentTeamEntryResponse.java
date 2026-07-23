package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The participant row created (or reused) by an entry or application.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentTeamEntryResponse implements Parsable {
    /**
     * The team&apos;s participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
     */
    private String participantId;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentTeamEntryResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentTeamEntryResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentTeamEntryResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("participantId", (n) -> { this.setParticipantId(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the participantId property value. The team&apos;s participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
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
        writer.writeStringValue("participantId", this.getParticipantId());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the participantId property value. The team&apos;s participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
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

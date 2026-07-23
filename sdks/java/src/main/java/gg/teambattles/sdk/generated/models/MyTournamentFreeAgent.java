package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The caller&apos;s own free-agent pool row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentFreeAgent implements Parsable {
    /**
     * Pool join time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Free-agent row ID.
     */
    private String freeAgentId;
    /**
     * Free-text note the caller supplied.
     */
    private String note;
    /**
     * Participant who picked the caller up. Present only when PICKED_UP.
     */
    private String pickedUpByParticipantId;
    /**
     * State of the caller&apos;s free-agent pool row.
     */
    private TournamentFreeAgentStatus status;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentFreeAgent}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentFreeAgent createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentFreeAgent();
    }
    /**
     * Gets the createdAt property value. Pool join time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("freeAgentId", (n) -> { this.setFreeAgentId(n.getStringValue()); });
        deserializerMap.put("note", (n) -> { this.setNote(n.getStringValue()); });
        deserializerMap.put("pickedUpByParticipantId", (n) -> { this.setPickedUpByParticipantId(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentFreeAgentStatus::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the freeAgentId property value. Free-agent row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getFreeAgentId() {
        return this.freeAgentId;
    }
    /**
     * Gets the note property value. Free-text note the caller supplied.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNote() {
        return this.note;
    }
    /**
     * Gets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPickedUpByParticipantId() {
        return this.pickedUpByParticipantId;
    }
    /**
     * Gets the status property value. State of the caller&apos;s free-agent pool row.
     * @return a {@link TournamentFreeAgentStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentFreeAgentStatus getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("freeAgentId", this.getFreeAgentId());
        writer.writeStringValue("note", this.getNote());
        writer.writeStringValue("pickedUpByParticipantId", this.getPickedUpByParticipantId());
        writer.writeEnumValue("status", this.getStatus());
    }
    /**
     * Sets the createdAt property value. Pool join time (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the freeAgentId property value. Free-agent row ID.
     * @param value Value to set for the freeAgentId property.
     */
    public void setFreeAgentId(@jakarta.annotation.Nullable final String value) {
        this.freeAgentId = value;
    }
    /**
     * Sets the note property value. Free-text note the caller supplied.
     * @param value Value to set for the note property.
     */
    public void setNote(@jakarta.annotation.Nullable final String value) {
        this.note = value;
    }
    /**
     * Sets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
     * @param value Value to set for the pickedUpByParticipantId property.
     */
    public void setPickedUpByParticipantId(@jakarta.annotation.Nullable final String value) {
        this.pickedUpByParticipantId = value;
    }
    /**
     * Sets the status property value. State of the caller&apos;s free-agent pool row.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentFreeAgentStatus value) {
        this.status = value;
    }
}

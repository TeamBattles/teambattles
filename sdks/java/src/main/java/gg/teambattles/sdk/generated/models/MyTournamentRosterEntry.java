package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A tournament roster the caller is personally on.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentRosterEntry implements Parsable {
    /**
     * Time the caller was rostered (epoch milliseconds).
     */
    private Double addedAt;
    /**
     * Participant whose roster the caller is on.
     */
    private String participantId;
    /**
     * Roster entry ID. Required by the roster-removal endpoints. This is the caller&apos;s OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
     */
    private String rosterEntryId;
    /**
     * How a player reached a participant&apos;s tournament roster.
     */
    private TournamentRosterSource source;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentRosterEntry}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentRosterEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentRosterEntry();
    }
    /**
     * Gets the addedAt property value. Time the caller was rostered (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getAddedAt() {
        return this.addedAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("addedAt", (n) -> { this.setAddedAt(n.getDoubleValue()); });
        deserializerMap.put("participantId", (n) -> { this.setParticipantId(n.getStringValue()); });
        deserializerMap.put("rosterEntryId", (n) -> { this.setRosterEntryId(n.getStringValue()); });
        deserializerMap.put("source", (n) -> { this.setSource(n.getEnumValue(TournamentRosterSource::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the participantId property value. Participant whose roster the caller is on.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getParticipantId() {
        return this.participantId;
    }
    /**
     * Gets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller&apos;s OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRosterEntryId() {
        return this.rosterEntryId;
    }
    /**
     * Gets the source property value. How a player reached a participant&apos;s tournament roster.
     * @return a {@link TournamentRosterSource}
     */
    @jakarta.annotation.Nullable
    public TournamentRosterSource getSource() {
        return this.source;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("addedAt", this.getAddedAt());
        writer.writeStringValue("participantId", this.getParticipantId());
        writer.writeStringValue("rosterEntryId", this.getRosterEntryId());
        writer.writeEnumValue("source", this.getSource());
    }
    /**
     * Sets the addedAt property value. Time the caller was rostered (epoch milliseconds).
     * @param value Value to set for the addedAt property.
     */
    public void setAddedAt(@jakarta.annotation.Nullable final Double value) {
        this.addedAt = value;
    }
    /**
     * Sets the participantId property value. Participant whose roster the caller is on.
     * @param value Value to set for the participantId property.
     */
    public void setParticipantId(@jakarta.annotation.Nullable final String value) {
        this.participantId = value;
    }
    /**
     * Sets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller&apos;s OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
     * @param value Value to set for the rosterEntryId property.
     */
    public void setRosterEntryId(@jakarta.annotation.Nullable final String value) {
        this.rosterEntryId = value;
    }
    /**
     * Sets the source property value. How a player reached a participant&apos;s tournament roster.
     * @param value Value to set for the source property.
     */
    public void setSource(@jakarta.annotation.Nullable final TournamentRosterSource value) {
        this.source = value;
    }
}

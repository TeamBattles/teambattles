package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tournament milestones for the key owner&apos;s teams.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentCalendarResponse implements Parsable {
    /**
     * Number of milestones returned.
     */
    private Integer count;
    /**
     * Milestones in the requested window, ascending by time.
     */
    private java.util.List<TournamentCalendarEvent> events;
    /**
     * Applied window end (ISO 8601).
     */
    private String rangeEnd;
    /**
     * Applied window start (ISO 8601).
     */
    private String rangeStart;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentCalendarResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentCalendarResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentCalendarResponse();
    }
    /**
     * Gets the count property value. Number of milestones returned.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * Gets the events property value. Milestones in the requested window, ascending by time.
     * @return a {@link java.util.List<TournamentCalendarEvent>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentCalendarEvent> getEvents() {
        return this.events;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("events", (n) -> { this.setEvents(n.getCollectionOfObjectValues(TournamentCalendarEvent::createFromDiscriminatorValue)); });
        deserializerMap.put("rangeEnd", (n) -> { this.setRangeEnd(n.getStringValue()); });
        deserializerMap.put("rangeStart", (n) -> { this.setRangeStart(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the rangeEnd property value. Applied window end (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRangeEnd() {
        return this.rangeEnd;
    }
    /**
     * Gets the rangeStart property value. Applied window start (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRangeStart() {
        return this.rangeStart;
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
        writer.writeCollectionOfObjectValues("events", this.getEvents());
        writer.writeStringValue("rangeEnd", this.getRangeEnd());
        writer.writeStringValue("rangeStart", this.getRangeStart());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of milestones returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the events property value. Milestones in the requested window, ascending by time.
     * @param value Value to set for the events property.
     */
    public void setEvents(@jakarta.annotation.Nullable final java.util.List<TournamentCalendarEvent> value) {
        this.events = value;
    }
    /**
     * Sets the rangeEnd property value. Applied window end (ISO 8601).
     * @param value Value to set for the rangeEnd property.
     */
    public void setRangeEnd(@jakarta.annotation.Nullable final String value) {
        this.rangeEnd = value;
    }
    /**
     * Sets the rangeStart property value. Applied window start (ISO 8601).
     * @param value Value to set for the rangeStart property.
     */
    public void setRangeStart(@jakarta.annotation.Nullable final String value) {
        this.rangeStart = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

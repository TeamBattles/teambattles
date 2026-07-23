package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One dated tournament milestone for the key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentCalendarEvent implements Parsable {
    /**
     * Milestone time (epoch milliseconds).
     */
    private Double at;
    /**
     * registration = registration deadline, checkin = check-in opens, start = tournament start.
     */
    private TournamentCalendarEventKind kind;
    /**
     * Tournament display name.
     */
    private String name;
    /**
     * URL-friendly tournament identifier.
     */
    private String slug;
    /**
     * Tournament ID.
     */
    private String tournamentId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentCalendarEvent}
     */
    @jakarta.annotation.Nonnull
    public static TournamentCalendarEvent createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentCalendarEvent();
    }
    /**
     * Gets the at property value. Milestone time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getAt() {
        return this.at;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("at", (n) -> { this.setAt(n.getDoubleValue()); });
        deserializerMap.put("kind", (n) -> { this.setKind(n.getEnumValue(TournamentCalendarEventKind::forValue)); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("tournamentId", (n) -> { this.setTournamentId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
     * @return a {@link TournamentCalendarEventKind}
     */
    @jakarta.annotation.Nullable
    public TournamentCalendarEventKind getKind() {
        return this.kind;
    }
    /**
     * Gets the name property value. Tournament display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the tournamentId property value. Tournament ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTournamentId() {
        return this.tournamentId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("at", this.getAt());
        writer.writeEnumValue("kind", this.getKind());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeStringValue("tournamentId", this.getTournamentId());
    }
    /**
     * Sets the at property value. Milestone time (epoch milliseconds).
     * @param value Value to set for the at property.
     */
    public void setAt(@jakarta.annotation.Nullable final Double value) {
        this.at = value;
    }
    /**
     * Sets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
     * @param value Value to set for the kind property.
     */
    public void setKind(@jakarta.annotation.Nullable final TournamentCalendarEventKind value) {
        this.kind = value;
    }
    /**
     * Sets the name property value. Tournament display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the tournamentId property value. Tournament ID.
     * @param value Value to set for the tournamentId property.
     */
    public void setTournamentId(@jakarta.annotation.Nullable final String value) {
        this.tournamentId = value;
    }
}

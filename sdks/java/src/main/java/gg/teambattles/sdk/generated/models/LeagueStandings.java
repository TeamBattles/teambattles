package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * League standings for a season.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueStandings implements Parsable {
    /**
     * Number of teams returned.
     */
    private Integer count;
    /**
     * Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     */
    private java.util.List<LeagueStandingsStandings> standings;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueStandings}
     */
    @jakarta.annotation.Nonnull
    public static LeagueStandings createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueStandings();
    }
    /**
     * Gets the count property value. Number of teams returned.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCount() {
        return this.count;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("standings", (n) -> { this.setStandings(n.getCollectionOfObjectValues(LeagueStandingsStandings::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     * @return a {@link java.util.List<LeagueStandingsStandings>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueStandingsStandings> getStandings() {
        return this.standings;
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
        writer.writeCollectionOfObjectValues("standings", this.getStandings());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of teams returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     * @param value Value to set for the standings property.
     */
    public void setStandings(@jakarta.annotation.Nullable final java.util.List<LeagueStandingsStandings> value) {
        this.standings = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

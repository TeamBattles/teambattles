package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Seasons for a league.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueSeasons implements Parsable {
    /**
     * Number of seasons returned.
     */
    private Integer count;
    /**
     * Season documents for the league.
     */
    private java.util.List<LeagueSeasonsSeasons> seasons;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueSeasons}
     */
    @jakarta.annotation.Nonnull
    public static LeagueSeasons createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueSeasons();
    }
    /**
     * Gets the count property value. Number of seasons returned.
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
        deserializerMap.put("seasons", (n) -> { this.setSeasons(n.getCollectionOfObjectValues(LeagueSeasonsSeasons::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the seasons property value. Season documents for the league.
     * @return a {@link java.util.List<LeagueSeasonsSeasons>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueSeasonsSeasons> getSeasons() {
        return this.seasons;
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
        writer.writeCollectionOfObjectValues("seasons", this.getSeasons());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of seasons returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the seasons property value. Season documents for the league.
     * @param value Value to set for the seasons property.
     */
    public void setSeasons(@jakarta.annotation.Nullable final java.util.List<LeagueSeasonsSeasons> value) {
        this.seasons = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

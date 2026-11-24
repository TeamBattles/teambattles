package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Season selector options.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueSeasonOptions implements Parsable {
    /**
     * Recommended default option.
     */
    private String defaultSeasonId;
    /**
     * Season selector options for a league game.
     */
    private java.util.List<LeagueSeasonOptionsSeasons> seasons;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueSeasonOptions}
     */
    @jakarta.annotation.Nonnull
    public static LeagueSeasonOptions createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueSeasonOptions();
    }
    /**
     * Gets the defaultSeasonId property value. Recommended default option.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDefaultSeasonId() {
        return this.defaultSeasonId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("defaultSeasonId", (n) -> { this.setDefaultSeasonId(n.getStringValue()); });
        deserializerMap.put("seasons", (n) -> { this.setSeasons(n.getCollectionOfObjectValues(LeagueSeasonOptionsSeasons::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the seasons property value. Season selector options for a league game.
     * @return a {@link java.util.List<LeagueSeasonOptionsSeasons>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueSeasonOptionsSeasons> getSeasons() {
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
        writer.writeStringValue("defaultSeasonId", this.getDefaultSeasonId());
        writer.writeCollectionOfObjectValues("seasons", this.getSeasons());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the defaultSeasonId property value. Recommended default option.
     * @param value Value to set for the defaultSeasonId property.
     */
    public void setDefaultSeasonId(@jakarta.annotation.Nullable final String value) {
        this.defaultSeasonId = value;
    }
    /**
     * Sets the seasons property value. Season selector options for a league game.
     * @param value Value to set for the seasons property.
     */
    public void setSeasons(@jakarta.annotation.Nullable final java.util.List<LeagueSeasonOptionsSeasons> value) {
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

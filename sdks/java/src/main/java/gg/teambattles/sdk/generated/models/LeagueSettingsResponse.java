package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Full league settings visible to league admins.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueSettingsResponse implements Parsable {
    /**
     * The league property
     */
    private LeagueSettingsResponseLeague league;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueSettingsResponse}
     */
    @jakarta.annotation.Nonnull
    public static LeagueSettingsResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueSettingsResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("league", (n) -> { this.setLeague(n.getObjectValue(LeagueSettingsResponseLeague::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the league property value. The league property
     * @return a {@link LeagueSettingsResponseLeague}
     */
    @jakarta.annotation.Nullable
    public LeagueSettingsResponseLeague getLeague() {
        return this.league;
    }
    /**
     * Gets the timestamp property value. The timestamp property
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
        writer.writeObjectValue("league", this.getLeague());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the league property value. The league property
     * @param value Value to set for the league property.
     */
    public void setLeague(@jakarta.annotation.Nullable final LeagueSettingsResponseLeague value) {
        this.league = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

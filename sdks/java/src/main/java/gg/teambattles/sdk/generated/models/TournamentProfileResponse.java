package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Tournament profile response envelope.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentProfileResponse implements Parsable {
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
     */
    private TournamentProfile tournament;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentProfileResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentProfileResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentProfileResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("tournament", (n) -> { this.setTournament(n.getObjectValue(TournamentProfile::createFromDiscriminatorValue)); });
        return deserializerMap;
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
     * Gets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
     * @return a {@link TournamentProfile}
     */
    @jakarta.annotation.Nullable
    public TournamentProfile getTournament() {
        return this.tournament;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeObjectValue("tournament", this.getTournament());
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
     * @param value Value to set for the tournament property.
     */
    public void setTournament(@jakarta.annotation.Nullable final TournamentProfile value) {
        this.tournament = value;
    }
}

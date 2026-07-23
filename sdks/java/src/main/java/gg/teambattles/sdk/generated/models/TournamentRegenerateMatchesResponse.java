package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Acknowledgement that match regeneration was scheduled.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentRegenerateMatchesResponse implements Parsable {
    /**
     * An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
     */
    private Integer queued;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentRegenerateMatchesResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentRegenerateMatchesResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentRegenerateMatchesResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("queued", (n) -> { this.setQueued(n.getIntegerValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getQueued() {
        return this.queued;
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
        writer.writeIntegerValue("queued", this.getQueued());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
     * @param value Value to set for the queued property.
     */
    public void setQueued(@jakarta.annotation.Nullable final Integer value) {
        this.queued = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The tournament free-agent pool.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentFreeAgentsResponse implements Parsable {
    /**
     * Number of free agents returned.
     */
    private Integer count;
    /**
     * Free agents currently AVAILABLE in the pool.
     */
    private java.util.List<TournamentFreeAgent> freeAgents;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentFreeAgentsResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentFreeAgentsResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentFreeAgentsResponse();
    }
    /**
     * Gets the count property value. Number of free agents returned.
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
        deserializerMap.put("freeAgents", (n) -> { this.setFreeAgents(n.getCollectionOfObjectValues(TournamentFreeAgent::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the freeAgents property value. Free agents currently AVAILABLE in the pool.
     * @return a {@link java.util.List<TournamentFreeAgent>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentFreeAgent> getFreeAgents() {
        return this.freeAgents;
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
        writer.writeCollectionOfObjectValues("freeAgents", this.getFreeAgents());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the count property value. Number of free agents returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the freeAgents property value. Free agents currently AVAILABLE in the pool.
     * @param value Value to set for the freeAgents property.
     */
    public void setFreeAgents(@jakarta.annotation.Nullable final java.util.List<TournamentFreeAgent> value) {
        this.freeAgents = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

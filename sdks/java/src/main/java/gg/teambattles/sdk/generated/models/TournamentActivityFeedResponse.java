package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The tournament organizer activity feed.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentActivityFeedResponse implements Parsable {
    /**
     * Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
     */
    private java.util.List<TournamentActivityEntry> activities;
    /**
     * Number of entries returned.
     */
    private Integer count;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentActivityFeedResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentActivityFeedResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentActivityFeedResponse();
    }
    /**
     * Gets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
     * @return a {@link java.util.List<TournamentActivityEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentActivityEntry> getActivities() {
        return this.activities;
    }
    /**
     * Gets the count property value. Number of entries returned.
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
        deserializerMap.put("activities", (n) -> { this.setActivities(n.getCollectionOfObjectValues(TournamentActivityEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("activities", this.getActivities());
        writer.writeIntegerValue("count", this.getCount());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
     * @param value Value to set for the activities property.
     */
    public void setActivities(@jakarta.annotation.Nullable final java.util.List<TournamentActivityEntry> value) {
        this.activities = value;
    }
    /**
     * Sets the count property value. Number of entries returned.
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

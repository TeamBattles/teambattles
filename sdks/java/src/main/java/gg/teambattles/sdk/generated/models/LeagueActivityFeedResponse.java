package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A paginated league activity feed.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueActivityFeedResponse implements Parsable {
    /**
     * The activities property
     */
    private UntypedNode activities;
    /**
     * The hasMore property
     */
    private Boolean hasMore;
    /**
     * The nextCursor property
     */
    private String nextCursor;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueActivityFeedResponse}
     */
    @jakarta.annotation.Nonnull
    public static LeagueActivityFeedResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueActivityFeedResponse();
    }
    /**
     * Gets the activities property value. The activities property
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getActivities() {
        return this.activities;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("activities", (n) -> { this.setActivities(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("hasMore", (n) -> { this.setHasMore(n.getBooleanValue()); });
        deserializerMap.put("nextCursor", (n) -> { this.setNextCursor(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the hasMore property value. The hasMore property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getHasMore() {
        return this.hasMore;
    }
    /**
     * Gets the nextCursor property value. The nextCursor property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNextCursor() {
        return this.nextCursor;
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
        writer.writeObjectValue("activities", this.getActivities());
        writer.writeBooleanValue("hasMore", this.getHasMore());
        writer.writeStringValue("nextCursor", this.getNextCursor());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the activities property value. The activities property
     * @param value Value to set for the activities property.
     */
    public void setActivities(@jakarta.annotation.Nullable final UntypedNode value) {
        this.activities = value;
    }
    /**
     * Sets the hasMore property value. The hasMore property
     * @param value Value to set for the hasMore property.
     */
    public void setHasMore(@jakarta.annotation.Nullable final Boolean value) {
        this.hasMore = value;
    }
    /**
     * Sets the nextCursor property value. The nextCursor property
     * @param value Value to set for the nextCursor property.
     */
    public void setNextCursor(@jakarta.annotation.Nullable final String value) {
        this.nextCursor = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

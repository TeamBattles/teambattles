package gg.teambattles.sdk.generated.users.item.connections;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ApiUserConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Envelope containing connections, count, and a response timestamp.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ConnectionsGetResponse implements Parsable {
    /**
     * The connections property
     */
    private java.util.List<ApiUserConnection> connections;
    /**
     * The count property
     */
    private Integer count;
    /**
     * ISO 8601 timestamp.
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ConnectionsGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static ConnectionsGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ConnectionsGetResponse();
    }
    /**
     * Gets the connections property value. The connections property
     * @return a {@link java.util.List<ApiUserConnection>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiUserConnection> getConnections() {
        return this.connections;
    }
    /**
     * Gets the count property value. The count property
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
        deserializerMap.put("connections", (n) -> { this.setConnections(n.getCollectionOfObjectValues(ApiUserConnection::createFromDiscriminatorValue)); });
        deserializerMap.put("count", (n) -> { this.setCount(n.getIntegerValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
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
        writer.writeCollectionOfObjectValues("connections", this.getConnections());
        writer.writeIntegerValue("count", this.getCount());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the connections property value. The connections property
     * @param value Value to set for the connections property.
     */
    public void setConnections(@jakarta.annotation.Nullable final java.util.List<ApiUserConnection> value) {
        this.connections = value;
    }
    /**
     * Sets the count property value. The count property
     * @param value Value to set for the count property.
     */
    public void setCount(@jakarta.annotation.Nullable final Integer value) {
        this.count = value;
    }
    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

package gg.teambattles.sdk.generated.matches.item.chat;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.ChatMessage;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ChatGetResponse implements Parsable {
    /**
     * The data property
     */
    private java.util.List<ChatMessage> data;
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
     * @return a {@link ChatGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static ChatGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ChatGetResponse();
    }
    /**
     * Gets the data property value. The data property
     * @return a {@link java.util.List<ChatMessage>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ChatMessage> getData() {
        return this.data;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("data", (n) -> { this.setData(n.getCollectionOfObjectValues(ChatMessage::createFromDiscriminatorValue)); });
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
        writer.writeCollectionOfObjectValues("data", this.getData());
        writer.writeBooleanValue("hasMore", this.getHasMore());
        writer.writeStringValue("nextCursor", this.getNextCursor());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the data property value. The data property
     * @param value Value to set for the data property.
     */
    public void setData(@jakarta.annotation.Nullable final java.util.List<ChatMessage> value) {
        this.data = value;
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

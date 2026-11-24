package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ChatMessage implements Parsable {
    /**
     * The content property
     */
    private String content;
    /**
     * The createdAt property
     */
    private String createdAt;
    /**
     * The id property
     */
    private String id;
    /**
     * The replyToId property
     */
    private String replyToId;
    /**
     * The senderUserId property
     */
    private String senderUserId;
    /**
     * The senderUsername property
     */
    private String senderUsername;
    /**
     * The teamId property
     */
    private String teamId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ChatMessage}
     */
    @jakarta.annotation.Nonnull
    public static ChatMessage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ChatMessage();
    }
    /**
     * Gets the content property value. The content property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getContent() {
        return this.content;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("content", (n) -> { this.setContent(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("replyToId", (n) -> { this.setReplyToId(n.getStringValue()); });
        deserializerMap.put("senderUserId", (n) -> { this.setSenderUserId(n.getStringValue()); });
        deserializerMap.put("senderUsername", (n) -> { this.setSenderUsername(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. The id property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the replyToId property value. The replyToId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getReplyToId() {
        return this.replyToId;
    }
    /**
     * Gets the senderUserId property value. The senderUserId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSenderUserId() {
        return this.senderUserId;
    }
    /**
     * Gets the senderUsername property value. The senderUsername property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSenderUsername() {
        return this.senderUsername;
    }
    /**
     * Gets the teamId property value. The teamId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("content", this.getContent());
        writer.writeStringValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("replyToId", this.getReplyToId());
        writer.writeStringValue("senderUserId", this.getSenderUserId());
        writer.writeStringValue("senderUsername", this.getSenderUsername());
        writer.writeStringValue("teamId", this.getTeamId());
    }
    /**
     * Sets the content property value. The content property
     * @param value Value to set for the content property.
     */
    public void setContent(@jakarta.annotation.Nullable final String value) {
        this.content = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final String value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the replyToId property value. The replyToId property
     * @param value Value to set for the replyToId property.
     */
    public void setReplyToId(@jakarta.annotation.Nullable final String value) {
        this.replyToId = value;
    }
    /**
     * Sets the senderUserId property value. The senderUserId property
     * @param value Value to set for the senderUserId property.
     */
    public void setSenderUserId(@jakarta.annotation.Nullable final String value) {
        this.senderUserId = value;
    }
    /**
     * Sets the senderUsername property value. The senderUsername property
     * @param value Value to set for the senderUsername property.
     */
    public void setSenderUsername(@jakarta.annotation.Nullable final String value) {
        this.senderUsername = value;
    }
    /**
     * Sets the teamId property value. The teamId property
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
}

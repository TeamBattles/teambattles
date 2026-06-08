package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
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
    private ChatMessageCreatedAt createdAt;
    /**
     * The id property
     */
    private String id;
    /**
     * The replyToId property
     */
    private ChatMessageReplyToId replyToId;
    /**
     * The senderUserId property
     */
    private String senderUserId;
    /**
     * The senderUsername property
     */
    private ChatMessageSenderUsername senderUsername;
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
     * @return a {@link ChatMessageCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ChatMessageCreatedAt getCreatedAt() {
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
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ChatMessageCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("replyToId", (n) -> { this.setReplyToId(n.getObjectValue(ChatMessageReplyToId::createFromDiscriminatorValue)); });
        deserializerMap.put("senderUserId", (n) -> { this.setSenderUserId(n.getStringValue()); });
        deserializerMap.put("senderUsername", (n) -> { this.setSenderUsername(n.getObjectValue(ChatMessageSenderUsername::createFromDiscriminatorValue)); });
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
     * @return a {@link ChatMessageReplyToId}
     */
    @jakarta.annotation.Nullable
    public ChatMessageReplyToId getReplyToId() {
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
     * @return a {@link ChatMessageSenderUsername}
     */
    @jakarta.annotation.Nullable
    public ChatMessageSenderUsername getSenderUsername() {
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
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("replyToId", this.getReplyToId());
        writer.writeStringValue("senderUserId", this.getSenderUserId());
        writer.writeObjectValue("senderUsername", this.getSenderUsername());
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
    public void setCreatedAt(@jakarta.annotation.Nullable final ChatMessageCreatedAt value) {
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
    public void setReplyToId(@jakarta.annotation.Nullable final ChatMessageReplyToId value) {
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
    public void setSenderUsername(@jakarta.annotation.Nullable final ChatMessageSenderUsername value) {
        this.senderUsername = value;
    }
    /**
     * Sets the teamId property value. The teamId property
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Composed type wrapper for classes {@link ChatMessageCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ChatMessageCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ChatMessageCreatedAtMember1}
         */
        private ChatMessageCreatedAtMember1 chatMessageCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ChatMessageCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ChatMessageCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ChatMessageCreatedAt result = new ChatMessageCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setChatMessageCreatedAtMember1(new ChatMessageCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ChatMessage_createdAtMember1 property value. Composed type representation for type {@link ChatMessageCreatedAtMember1}
         * @return a {@link ChatMessageCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ChatMessageCreatedAtMember1 getChatMessageCreatedAtMember1() {
            return this.chatMessageCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getChatMessageCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getChatMessageCreatedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getChatMessageCreatedAtMember1());
            }
        }
        /**
         * Sets the ChatMessage_createdAtMember1 property value. Composed type representation for type {@link ChatMessageCreatedAtMember1}
         * @param value Value to set for the ChatMessage_createdAtMember1 property.
         */
        public void setChatMessageCreatedAtMember1(@jakarta.annotation.Nullable final ChatMessageCreatedAtMember1 value) {
            this.chatMessageCreatedAtMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ChatMessageReplyToIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ChatMessageReplyToId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ChatMessageReplyToIdMember1}
         */
        private ChatMessageReplyToIdMember1 chatMessageReplyToIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ChatMessageReplyToId}
         */
        @jakarta.annotation.Nonnull
        public static ChatMessageReplyToId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ChatMessageReplyToId result = new ChatMessageReplyToId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setChatMessageReplyToIdMember1(new ChatMessageReplyToIdMember1());
            }
            return result;
        }
        /**
         * Gets the ChatMessage_replyToIdMember1 property value. Composed type representation for type {@link ChatMessageReplyToIdMember1}
         * @return a {@link ChatMessageReplyToIdMember1}
         */
        @jakarta.annotation.Nullable
        public ChatMessageReplyToIdMember1 getChatMessageReplyToIdMember1() {
            return this.chatMessageReplyToIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getChatMessageReplyToIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getChatMessageReplyToIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getChatMessageReplyToIdMember1());
            }
        }
        /**
         * Sets the ChatMessage_replyToIdMember1 property value. Composed type representation for type {@link ChatMessageReplyToIdMember1}
         * @param value Value to set for the ChatMessage_replyToIdMember1 property.
         */
        public void setChatMessageReplyToIdMember1(@jakarta.annotation.Nullable final ChatMessageReplyToIdMember1 value) {
            this.chatMessageReplyToIdMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ChatMessageSenderUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ChatMessageSenderUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ChatMessageSenderUsernameMember1}
         */
        private ChatMessageSenderUsernameMember1 chatMessageSenderUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ChatMessageSenderUsername}
         */
        @jakarta.annotation.Nonnull
        public static ChatMessageSenderUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ChatMessageSenderUsername result = new ChatMessageSenderUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setChatMessageSenderUsernameMember1(new ChatMessageSenderUsernameMember1());
            }
            return result;
        }
        /**
         * Gets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type {@link ChatMessageSenderUsernameMember1}
         * @return a {@link ChatMessageSenderUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public ChatMessageSenderUsernameMember1 getChatMessageSenderUsernameMember1() {
            return this.chatMessageSenderUsernameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getChatMessageSenderUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getChatMessageSenderUsernameMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getChatMessageSenderUsernameMember1());
            }
        }
        /**
         * Sets the ChatMessage_senderUsernameMember1 property value. Composed type representation for type {@link ChatMessageSenderUsernameMember1}
         * @param value Value to set for the ChatMessage_senderUsernameMember1 property.
         */
        public void setChatMessageSenderUsernameMember1(@jakarta.annotation.Nullable final ChatMessageSenderUsernameMember1 value) {
            this.chatMessageSenderUsernameMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
}

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
public class TicketDetailMessages implements Parsable {
    /**
     * The content property
     */
    private String content;
    /**
     * The createdAt property
     */
    private TicketDetailMessagesCreatedAt createdAt;
    /**
     * The id property
     */
    private String id;
    /**
     * The isOwnMessage property
     */
    private Boolean isOwnMessage;
    /**
     * The isSystem property
     */
    private Boolean isSystem;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TicketDetailMessages}
     */
    @jakarta.annotation.Nonnull
    public static TicketDetailMessages createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TicketDetailMessages();
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
     * @return a {@link TicketDetailMessagesCreatedAt}
     */
    @jakarta.annotation.Nullable
    public TicketDetailMessagesCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("content", (n) -> { this.setContent(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(TicketDetailMessagesCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isOwnMessage", (n) -> { this.setIsOwnMessage(n.getBooleanValue()); });
        deserializerMap.put("isSystem", (n) -> { this.setIsSystem(n.getBooleanValue()); });
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
     * Gets the isOwnMessage property value. The isOwnMessage property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsOwnMessage() {
        return this.isOwnMessage;
    }
    /**
     * Gets the isSystem property value. The isSystem property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsSystem() {
        return this.isSystem;
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
        writer.writeBooleanValue("isOwnMessage", this.getIsOwnMessage());
        writer.writeBooleanValue("isSystem", this.getIsSystem());
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
    public void setCreatedAt(@jakarta.annotation.Nullable final TicketDetailMessagesCreatedAt value) {
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
     * Sets the isOwnMessage property value. The isOwnMessage property
     * @param value Value to set for the isOwnMessage property.
     */
    public void setIsOwnMessage(@jakarta.annotation.Nullable final Boolean value) {
        this.isOwnMessage = value;
    }
    /**
     * Sets the isSystem property value. The isSystem property
     * @param value Value to set for the isSystem property.
     */
    public void setIsSystem(@jakarta.annotation.Nullable final Boolean value) {
        this.isSystem = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TicketDetailMessagesCreatedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TicketDetailMessagesCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TicketDetailMessagesCreatedAtMember1}
         */
        private TicketDetailMessagesCreatedAtMember1 ticketDetailMessagesCreatedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TicketDetailMessagesCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static TicketDetailMessagesCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TicketDetailMessagesCreatedAt result = new TicketDetailMessagesCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTicketDetailMessagesCreatedAtMember1(new TicketDetailMessagesCreatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTicketDetailMessagesCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTicketDetailMessagesCreatedAtMember1());
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
         * Gets the TicketDetail_messages_createdAtMember1 property value. Composed type representation for type {@link TicketDetailMessagesCreatedAtMember1}
         * @return a {@link TicketDetailMessagesCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public TicketDetailMessagesCreatedAtMember1 getTicketDetailMessagesCreatedAtMember1() {
            return this.ticketDetailMessagesCreatedAtMember1;
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
                writer.writeObjectValue(null, this.getTicketDetailMessagesCreatedAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TicketDetail_messages_createdAtMember1 property value. Composed type representation for type {@link TicketDetailMessagesCreatedAtMember1}
         * @param value Value to set for the TicketDetail_messages_createdAtMember1 property.
         */
        public void setTicketDetailMessagesCreatedAtMember1(@jakarta.annotation.Nullable final TicketDetailMessagesCreatedAtMember1 value) {
            this.ticketDetailMessagesCreatedAtMember1 = value;
        }
    }
}

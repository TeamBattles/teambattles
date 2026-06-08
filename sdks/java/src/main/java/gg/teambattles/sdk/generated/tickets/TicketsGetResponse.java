package gg.teambattles.sdk.generated.tickets;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.TicketSummary;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TicketsGetResponse implements Parsable {
    /**
     * The data property
     */
    private java.util.List<TicketSummary> data;
    /**
     * The hasMore property
     */
    private Boolean hasMore;
    /**
     * The nextCursor property
     */
    private TicketsGetResponseNextCursor nextCursor;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TicketsGetResponse}
     */
    @jakarta.annotation.Nonnull
    public static TicketsGetResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TicketsGetResponse();
    }
    /**
     * Gets the data property value. The data property
     * @return a {@link java.util.List<TicketSummary>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TicketSummary> getData() {
        return this.data;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("data", (n) -> { this.setData(n.getCollectionOfObjectValues(TicketSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("hasMore", (n) -> { this.setHasMore(n.getBooleanValue()); });
        deserializerMap.put("nextCursor", (n) -> { this.setNextCursor(n.getObjectValue(TicketsGetResponseNextCursor::createFromDiscriminatorValue)); });
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
     * @return a {@link TicketsGetResponseNextCursor}
     */
    @jakarta.annotation.Nullable
    public TicketsGetResponseNextCursor getNextCursor() {
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
        writer.writeObjectValue("nextCursor", this.getNextCursor());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the data property value. The data property
     * @param value Value to set for the data property.
     */
    public void setData(@jakarta.annotation.Nullable final java.util.List<TicketSummary> value) {
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
    public void setNextCursor(@jakarta.annotation.Nullable final TicketsGetResponseNextCursor value) {
        this.nextCursor = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TicketsGetResponseNextCursorMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TicketsGetResponseNextCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TicketsGetResponseNextCursorMember1}
         */
        private TicketsGetResponseNextCursorMember1 ticketsGetResponseNextCursorMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TicketsGetResponseNextCursor}
         */
        @jakarta.annotation.Nonnull
        public static TicketsGetResponseNextCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TicketsGetResponseNextCursor result = new TicketsGetResponseNextCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTicketsGetResponseNextCursorMember1(new TicketsGetResponseNextCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTicketsGetResponseNextCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTicketsGetResponseNextCursorMember1());
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
         * Gets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type {@link TicketsGetResponseNextCursorMember1}
         * @return a {@link TicketsGetResponseNextCursorMember1}
         */
        @jakarta.annotation.Nullable
        public TicketsGetResponseNextCursorMember1 getTicketsGetResponseNextCursorMember1() {
            return this.ticketsGetResponseNextCursorMember1;
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
                writer.writeObjectValue(null, this.getTicketsGetResponseNextCursorMember1());
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
         * Sets the ticketsGetResponse_nextCursorMember1 property value. Composed type representation for type {@link TicketsGetResponseNextCursorMember1}
         * @param value Value to set for the ticketsGetResponse_nextCursorMember1 property.
         */
        public void setTicketsGetResponseNextCursorMember1(@jakarta.annotation.Nullable final TicketsGetResponseNextCursorMember1 value) {
            this.ticketsGetResponseNextCursorMember1 = value;
        }
    }
}

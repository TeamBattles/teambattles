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
public class TicketSummary implements Parsable {
    /**
     * The category property
     */
    private String category;
    /**
     * The createdAt property
     */
    private TicketSummaryCreatedAt createdAt;
    /**
     * The id property
     */
    private String id;
    /**
     * The priority property
     */
    private TicketSummaryPriority priority;
    /**
     * The status property
     */
    private TicketSummaryStatus status;
    /**
     * The subject property
     */
    private String subject;
    /**
     * The ticketNumber property
     */
    private Integer ticketNumber;
    /**
     * The updatedAt property
     */
    private TicketSummaryUpdatedAt updatedAt;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TicketSummary}
     */
    @jakarta.annotation.Nonnull
    public static TicketSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TicketSummary();
    }
    /**
     * Gets the category property value. The category property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCategory() {
        return this.category;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link TicketSummaryCreatedAt}
     */
    @jakarta.annotation.Nullable
    public TicketSummaryCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("category", (n) -> { this.setCategory(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(TicketSummaryCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("priority", (n) -> { this.setPriority(n.getEnumValue(TicketSummaryPriority::forValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TicketSummaryStatus::forValue)); });
        deserializerMap.put("subject", (n) -> { this.setSubject(n.getStringValue()); });
        deserializerMap.put("ticketNumber", (n) -> { this.setTicketNumber(n.getIntegerValue()); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getObjectValue(TicketSummaryUpdatedAt::createFromDiscriminatorValue)); });
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
     * Gets the priority property value. The priority property
     * @return a {@link TicketSummaryPriority}
     */
    @jakarta.annotation.Nullable
    public TicketSummaryPriority getPriority() {
        return this.priority;
    }
    /**
     * Gets the status property value. The status property
     * @return a {@link TicketSummaryStatus}
     */
    @jakarta.annotation.Nullable
    public TicketSummaryStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the subject property value. The subject property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSubject() {
        return this.subject;
    }
    /**
     * Gets the ticketNumber property value. The ticketNumber property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTicketNumber() {
        return this.ticketNumber;
    }
    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return a {@link TicketSummaryUpdatedAt}
     */
    @jakarta.annotation.Nullable
    public TicketSummaryUpdatedAt getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("category", this.getCategory());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeEnumValue("priority", this.getPriority());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeStringValue("subject", this.getSubject());
        writer.writeIntegerValue("ticketNumber", this.getTicketNumber());
        writer.writeObjectValue("updatedAt", this.getUpdatedAt());
    }
    /**
     * Sets the category property value. The category property
     * @param value Value to set for the category property.
     */
    public void setCategory(@jakarta.annotation.Nullable final String value) {
        this.category = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final TicketSummaryCreatedAt value) {
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
     * Sets the priority property value. The priority property
     * @param value Value to set for the priority property.
     */
    public void setPriority(@jakarta.annotation.Nullable final TicketSummaryPriority value) {
        this.priority = value;
    }
    /**
     * Sets the status property value. The status property
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TicketSummaryStatus value) {
        this.status = value;
    }
    /**
     * Sets the subject property value. The subject property
     * @param value Value to set for the subject property.
     */
    public void setSubject(@jakarta.annotation.Nullable final String value) {
        this.subject = value;
    }
    /**
     * Sets the ticketNumber property value. The ticketNumber property
     * @param value Value to set for the ticketNumber property.
     */
    public void setTicketNumber(@jakarta.annotation.Nullable final Integer value) {
        this.ticketNumber = value;
    }
    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final TicketSummaryUpdatedAt value) {
        this.updatedAt = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TicketSummaryCreatedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TicketSummaryCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TicketSummaryCreatedAtMember1}
         */
        private TicketSummaryCreatedAtMember1 ticketSummaryCreatedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TicketSummaryCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static TicketSummaryCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TicketSummaryCreatedAt result = new TicketSummaryCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTicketSummaryCreatedAtMember1(new TicketSummaryCreatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTicketSummaryCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTicketSummaryCreatedAtMember1());
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
         * Gets the TicketSummary_createdAtMember1 property value. Composed type representation for type {@link TicketSummaryCreatedAtMember1}
         * @return a {@link TicketSummaryCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public TicketSummaryCreatedAtMember1 getTicketSummaryCreatedAtMember1() {
            return this.ticketSummaryCreatedAtMember1;
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
                writer.writeObjectValue(null, this.getTicketSummaryCreatedAtMember1());
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
         * Sets the TicketSummary_createdAtMember1 property value. Composed type representation for type {@link TicketSummaryCreatedAtMember1}
         * @param value Value to set for the TicketSummary_createdAtMember1 property.
         */
        public void setTicketSummaryCreatedAtMember1(@jakarta.annotation.Nullable final TicketSummaryCreatedAtMember1 value) {
            this.ticketSummaryCreatedAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TicketSummaryUpdatedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TicketSummaryUpdatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TicketSummaryUpdatedAtMember1}
         */
        private TicketSummaryUpdatedAtMember1 ticketSummaryUpdatedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TicketSummaryUpdatedAt}
         */
        @jakarta.annotation.Nonnull
        public static TicketSummaryUpdatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TicketSummaryUpdatedAt result = new TicketSummaryUpdatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTicketSummaryUpdatedAtMember1(new TicketSummaryUpdatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTicketSummaryUpdatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTicketSummaryUpdatedAtMember1());
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
         * Gets the TicketSummary_updatedAtMember1 property value. Composed type representation for type {@link TicketSummaryUpdatedAtMember1}
         * @return a {@link TicketSummaryUpdatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public TicketSummaryUpdatedAtMember1 getTicketSummaryUpdatedAtMember1() {
            return this.ticketSummaryUpdatedAtMember1;
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
                writer.writeObjectValue(null, this.getTicketSummaryUpdatedAtMember1());
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
         * Sets the TicketSummary_updatedAtMember1 property value. Composed type representation for type {@link TicketSummaryUpdatedAtMember1}
         * @param value Value to set for the TicketSummary_updatedAtMember1 property.
         */
        public void setTicketSummaryUpdatedAtMember1(@jakarta.annotation.Nullable final TicketSummaryUpdatedAtMember1 value) {
            this.ticketSummaryUpdatedAtMember1 = value;
        }
    }
}

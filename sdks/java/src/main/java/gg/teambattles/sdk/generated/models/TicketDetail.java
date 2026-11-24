package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TicketDetail implements Parsable {
    /**
     * The category property
     */
    private String category;
    /**
     * The closedAt property
     */
    private String closedAt;
    /**
     * The createdAt property
     */
    private String createdAt;
    /**
     * The description property
     */
    private String description;
    /**
     * The id property
     */
    private String id;
    /**
     * The messages property
     */
    private java.util.List<TicketDetailMessages> messages;
    /**
     * The priority property
     */
    private TicketDetailPriority priority;
    /**
     * The resolvedAt property
     */
    private String resolvedAt;
    /**
     * The status property
     */
    private TicketDetailStatus status;
    /**
     * The subject property
     */
    private String subject;
    /**
     * The ticketNumber property
     */
    private Integer ticketNumber;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * The updatedAt property
     */
    private String updatedAt;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TicketDetail}
     */
    @jakarta.annotation.Nonnull
    public static TicketDetail createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TicketDetail();
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
     * Gets the closedAt property value. The closedAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getClosedAt() {
        return this.closedAt;
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
     * Gets the description property value. The description property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(13);
        deserializerMap.put("category", (n) -> { this.setCategory(n.getStringValue()); });
        deserializerMap.put("closedAt", (n) -> { this.setClosedAt(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getStringValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("messages", (n) -> { this.setMessages(n.getCollectionOfObjectValues(TicketDetailMessages::createFromDiscriminatorValue)); });
        deserializerMap.put("priority", (n) -> { this.setPriority(n.getEnumValue(TicketDetailPriority::forValue)); });
        deserializerMap.put("resolvedAt", (n) -> { this.setResolvedAt(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TicketDetailStatus::forValue)); });
        deserializerMap.put("subject", (n) -> { this.setSubject(n.getStringValue()); });
        deserializerMap.put("ticketNumber", (n) -> { this.setTicketNumber(n.getIntegerValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getStringValue()); });
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
     * Gets the messages property value. The messages property
     * @return a {@link java.util.List<TicketDetailMessages>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TicketDetailMessages> getMessages() {
        return this.messages;
    }
    /**
     * Gets the priority property value. The priority property
     * @return a {@link TicketDetailPriority}
     */
    @jakarta.annotation.Nullable
    public TicketDetailPriority getPriority() {
        return this.priority;
    }
    /**
     * Gets the resolvedAt property value. The resolvedAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getResolvedAt() {
        return this.resolvedAt;
    }
    /**
     * Gets the status property value. The status property
     * @return a {@link TicketDetailStatus}
     */
    @jakarta.annotation.Nullable
    public TicketDetailStatus getStatus() {
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
     * Gets the timestamp property value. The timestamp property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("category", this.getCategory());
        writer.writeStringValue("closedAt", this.getClosedAt());
        writer.writeStringValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("description", this.getDescription());
        writer.writeStringValue("id", this.getId());
        writer.writeCollectionOfObjectValues("messages", this.getMessages());
        writer.writeEnumValue("priority", this.getPriority());
        writer.writeStringValue("resolvedAt", this.getResolvedAt());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeStringValue("subject", this.getSubject());
        writer.writeIntegerValue("ticketNumber", this.getTicketNumber());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeStringValue("updatedAt", this.getUpdatedAt());
    }
    /**
     * Sets the category property value. The category property
     * @param value Value to set for the category property.
     */
    public void setCategory(@jakarta.annotation.Nullable final String value) {
        this.category = value;
    }
    /**
     * Sets the closedAt property value. The closedAt property
     * @param value Value to set for the closedAt property.
     */
    public void setClosedAt(@jakarta.annotation.Nullable final String value) {
        this.closedAt = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final String value) {
        this.createdAt = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the messages property value. The messages property
     * @param value Value to set for the messages property.
     */
    public void setMessages(@jakarta.annotation.Nullable final java.util.List<TicketDetailMessages> value) {
        this.messages = value;
    }
    /**
     * Sets the priority property value. The priority property
     * @param value Value to set for the priority property.
     */
    public void setPriority(@jakarta.annotation.Nullable final TicketDetailPriority value) {
        this.priority = value;
    }
    /**
     * Sets the resolvedAt property value. The resolvedAt property
     * @param value Value to set for the resolvedAt property.
     */
    public void setResolvedAt(@jakarta.annotation.Nullable final String value) {
        this.resolvedAt = value;
    }
    /**
     * Sets the status property value. The status property
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TicketDetailStatus value) {
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
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final String value) {
        this.updatedAt = value;
    }
}

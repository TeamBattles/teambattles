package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Updates league ticket status, priority, or assignment.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpdateLeagueTicketRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * User ID to assign, or null to clear assignment.
     */
    private UpdateLeagueTicketRequestBodyAssignedTo assignedTo;
    /**
     * The priority property
     */
    private UpdateLeagueTicketRequestBodyPriority priority;
    /**
     * The status property
     */
    private UpdateLeagueTicketRequestBodyStatus status;
    /**
     * Instantiates a new {@link UpdateLeagueTicketRequestBody} and sets the default values.
     */
    public UpdateLeagueTicketRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpdateLeagueTicketRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static UpdateLeagueTicketRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpdateLeagueTicketRequestBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the assignedTo property value. User ID to assign, or null to clear assignment.
     * @return a {@link UpdateLeagueTicketRequestBodyAssignedTo}
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueTicketRequestBodyAssignedTo getAssignedTo() {
        return this.assignedTo;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("assignedTo", (n) -> { this.setAssignedTo(n.getObjectValue(UpdateLeagueTicketRequestBodyAssignedTo::createFromDiscriminatorValue)); });
        deserializerMap.put("priority", (n) -> { this.setPriority(n.getEnumValue(UpdateLeagueTicketRequestBodyPriority::forValue)); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(UpdateLeagueTicketRequestBodyStatus::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the priority property value. The priority property
     * @return a {@link UpdateLeagueTicketRequestBodyPriority}
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueTicketRequestBodyPriority getPriority() {
        return this.priority;
    }
    /**
     * Gets the status property value. The status property
     * @return a {@link UpdateLeagueTicketRequestBodyStatus}
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueTicketRequestBodyStatus getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("assignedTo", this.getAssignedTo());
        writer.writeEnumValue("priority", this.getPriority());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the assignedTo property value. User ID to assign, or null to clear assignment.
     * @param value Value to set for the assignedTo property.
     */
    public void setAssignedTo(@jakarta.annotation.Nullable final UpdateLeagueTicketRequestBodyAssignedTo value) {
        this.assignedTo = value;
    }
    /**
     * Sets the priority property value. The priority property
     * @param value Value to set for the priority property.
     */
    public void setPriority(@jakarta.annotation.Nullable final UpdateLeagueTicketRequestBodyPriority value) {
        this.priority = value;
    }
    /**
     * Sets the status property value. The status property
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final UpdateLeagueTicketRequestBodyStatus value) {
        this.status = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link UpdateLeagueTicketRequestBodyAssignedToMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class UpdateLeagueTicketRequestBodyAssignedTo implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link UpdateLeagueTicketRequestBodyAssignedToMember1}
         */
        private UpdateLeagueTicketRequestBodyAssignedToMember1 updateLeagueTicketRequestBodyAssignedToMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link UpdateLeagueTicketRequestBodyAssignedTo}
         */
        @jakarta.annotation.Nonnull
        public static UpdateLeagueTicketRequestBodyAssignedTo createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final UpdateLeagueTicketRequestBodyAssignedTo result = new UpdateLeagueTicketRequestBodyAssignedTo();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setUpdateLeagueTicketRequestBodyAssignedToMember1(new UpdateLeagueTicketRequestBodyAssignedToMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getUpdateLeagueTicketRequestBodyAssignedToMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getUpdateLeagueTicketRequestBodyAssignedToMember1());
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
         * Gets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type {@link UpdateLeagueTicketRequestBodyAssignedToMember1}
         * @return a {@link UpdateLeagueTicketRequestBodyAssignedToMember1}
         */
        @jakarta.annotation.Nullable
        public UpdateLeagueTicketRequestBodyAssignedToMember1 getUpdateLeagueTicketRequestBodyAssignedToMember1() {
            return this.updateLeagueTicketRequestBodyAssignedToMember1;
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
                writer.writeObjectValue(null, this.getUpdateLeagueTicketRequestBodyAssignedToMember1());
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
         * Sets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type {@link UpdateLeagueTicketRequestBodyAssignedToMember1}
         * @param value Value to set for the UpdateLeagueTicketRequestBody_assignedToMember1 property.
         */
        public void setUpdateLeagueTicketRequestBodyAssignedToMember1(@jakarta.annotation.Nullable final UpdateLeagueTicketRequestBodyAssignedToMember1 value) {
            this.updateLeagueTicketRequestBodyAssignedToMember1 = value;
        }
    }
}

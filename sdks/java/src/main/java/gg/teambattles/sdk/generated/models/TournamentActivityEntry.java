package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One tournament activity log entry.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentActivityEntry implements Parsable {
    /**
     * Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
     */
    private String action;
    /**
     * The acting user, or null when the user row no longer resolves.
     */
    private TournamentActivityActor actor;
    /**
     * Log time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Activity log row ID.
     */
    private String id;
    /**
     * Action-specific detail. Shape varies by `action`.
     */
    private TournamentActivityEntryMetadata metadata;
    /**
     * ID of the targeted row.
     */
    private String targetId;
    /**
     * Kind of row the action targeted, when the action names one.
     */
    private String targetType;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentActivityEntry}
     */
    @jakarta.annotation.Nonnull
    public static TournamentActivityEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentActivityEntry();
    }
    /**
     * Gets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAction() {
        return this.action;
    }
    /**
     * Gets the actor property value. The acting user, or null when the user row no longer resolves.
     * @return a {@link TournamentActivityActor}
     */
    @jakarta.annotation.Nullable
    public TournamentActivityActor getActor() {
        return this.actor;
    }
    /**
     * Gets the createdAt property value. Log time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("action", (n) -> { this.setAction(n.getStringValue()); });
        deserializerMap.put("actor", (n) -> { this.setActor(n.getObjectValue(TournamentActivityActor::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("metadata", (n) -> { this.setMetadata(n.getObjectValue(TournamentActivityEntryMetadata::createFromDiscriminatorValue)); });
        deserializerMap.put("targetId", (n) -> { this.setTargetId(n.getStringValue()); });
        deserializerMap.put("targetType", (n) -> { this.setTargetType(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Activity log row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the metadata property value. Action-specific detail. Shape varies by `action`.
     * @return a {@link TournamentActivityEntryMetadata}
     */
    @jakarta.annotation.Nullable
    public TournamentActivityEntryMetadata getMetadata() {
        return this.metadata;
    }
    /**
     * Gets the targetId property value. ID of the targeted row.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTargetId() {
        return this.targetId;
    }
    /**
     * Gets the targetType property value. Kind of row the action targeted, when the action names one.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTargetType() {
        return this.targetType;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("action", this.getAction());
        writer.writeObjectValue("actor", this.getActor());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("metadata", this.getMetadata());
        writer.writeStringValue("targetId", this.getTargetId());
        writer.writeStringValue("targetType", this.getTargetType());
    }
    /**
     * Sets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
     * @param value Value to set for the action property.
     */
    public void setAction(@jakarta.annotation.Nullable final String value) {
        this.action = value;
    }
    /**
     * Sets the actor property value. The acting user, or null when the user row no longer resolves.
     * @param value Value to set for the actor property.
     */
    public void setActor(@jakarta.annotation.Nullable final TournamentActivityActor value) {
        this.actor = value;
    }
    /**
     * Sets the createdAt property value. Log time (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. Activity log row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the metadata property value. Action-specific detail. Shape varies by `action`.
     * @param value Value to set for the metadata property.
     */
    public void setMetadata(@jakarta.annotation.Nullable final TournamentActivityEntryMetadata value) {
        this.metadata = value;
    }
    /**
     * Sets the targetId property value. ID of the targeted row.
     * @param value Value to set for the targetId property.
     */
    public void setTargetId(@jakarta.annotation.Nullable final String value) {
        this.targetId = value;
    }
    /**
     * Sets the targetType property value. Kind of row the action targeted, when the action names one.
     * @param value Value to set for the targetType property.
     */
    public void setTargetType(@jakarta.annotation.Nullable final String value) {
        this.targetType = value;
    }
}

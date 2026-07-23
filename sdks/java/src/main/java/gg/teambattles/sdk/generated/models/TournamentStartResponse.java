package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Acknowledgement that a tournament was started. Matches follow asynchronously.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentStartResponse implements Parsable {
    /**
     * The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
     */
    private Boolean accepted;
    /**
     * Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
     */
    private String matchGeneration;
    /**
     * Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
     */
    private Integer nodeCount;
    /**
     * The lifecycle status this call set.
     */
    private String status;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentStartResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentStartResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentStartResponse();
    }
    /**
     * Gets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAccepted() {
        return this.accepted;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("accepted", (n) -> { this.setAccepted(n.getBooleanValue()); });
        deserializerMap.put("matchGeneration", (n) -> { this.setMatchGeneration(n.getStringValue()); });
        deserializerMap.put("nodeCount", (n) -> { this.setNodeCount(n.getIntegerValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMatchGeneration() {
        return this.matchGeneration;
    }
    /**
     * Gets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getNodeCount() {
        return this.nodeCount;
    }
    /**
     * Gets the status property value. The lifecycle status this call set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
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
        writer.writeBooleanValue("accepted", this.getAccepted());
        writer.writeStringValue("matchGeneration", this.getMatchGeneration());
        writer.writeIntegerValue("nodeCount", this.getNodeCount());
        writer.writeStringValue("status", this.getStatus());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
     * @param value Value to set for the accepted property.
     */
    public void setAccepted(@jakarta.annotation.Nullable final Boolean value) {
        this.accepted = value;
    }
    /**
     * Sets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
     * @param value Value to set for the matchGeneration property.
     */
    public void setMatchGeneration(@jakarta.annotation.Nullable final String value) {
        this.matchGeneration = value;
    }
    /**
     * Sets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
     * @param value Value to set for the nodeCount property.
     */
    public void setNodeCount(@jakarta.annotation.Nullable final Integer value) {
        this.nodeCount = value;
    }
    /**
     * Sets the status property value. The lifecycle status this call set.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}

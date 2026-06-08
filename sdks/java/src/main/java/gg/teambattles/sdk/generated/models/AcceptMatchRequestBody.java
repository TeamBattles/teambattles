package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates a match acceptance request as the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class AcceptMatchRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Active roster user IDs for the acceptance request.
     */
    private java.util.List<String> activeRoster;
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Optional bench roster users.
     */
    private java.util.List<AcceptMatchRequestBodyBenchRoster> benchRoster;
    /**
     * Optional proposed rule changes.
     */
    private AcceptMatchRequestBodyDisputedRules disputedRules;
    /**
     * Optional map preference mode for selected maps.
     */
    private AcceptMatchRequestBodyMapPreferenceMode mapPreferenceMode;
    /**
     * Optional message for the match creator.
     */
    private String message;
    /**
     * Optional proposed map IDs.
     */
    private java.util.List<String> selectedMaps;
    /**
     * Team ID accepting the match.
     */
    private String teamId;
    /**
     * Instantiates a new {@link AcceptMatchRequestBody} and sets the default values.
     */
    public AcceptMatchRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link AcceptMatchRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static AcceptMatchRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new AcceptMatchRequestBody();
    }
    /**
     * Gets the activeRoster property value. Active roster user IDs for the acceptance request.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getActiveRoster() {
        return this.activeRoster;
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
     * Gets the benchRoster property value. Optional bench roster users.
     * @return a {@link java.util.List<AcceptMatchRequestBodyBenchRoster>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<AcceptMatchRequestBodyBenchRoster> getBenchRoster() {
        return this.benchRoster;
    }
    /**
     * Gets the disputedRules property value. Optional proposed rule changes.
     * @return a {@link AcceptMatchRequestBodyDisputedRules}
     */
    @jakarta.annotation.Nullable
    public AcceptMatchRequestBodyDisputedRules getDisputedRules() {
        return this.disputedRules;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("activeRoster", (n) -> { this.setActiveRoster(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("benchRoster", (n) -> { this.setBenchRoster(n.getCollectionOfObjectValues(AcceptMatchRequestBodyBenchRoster::createFromDiscriminatorValue)); });
        deserializerMap.put("disputedRules", (n) -> { this.setDisputedRules(n.getObjectValue(AcceptMatchRequestBodyDisputedRules::createFromDiscriminatorValue)); });
        deserializerMap.put("mapPreferenceMode", (n) -> { this.setMapPreferenceMode(n.getEnumValue(AcceptMatchRequestBodyMapPreferenceMode::forValue)); });
        deserializerMap.put("message", (n) -> { this.setMessage(n.getStringValue()); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the mapPreferenceMode property value. Optional map preference mode for selected maps.
     * @return a {@link AcceptMatchRequestBodyMapPreferenceMode}
     */
    @jakarta.annotation.Nullable
    public AcceptMatchRequestBodyMapPreferenceMode getMapPreferenceMode() {
        return this.mapPreferenceMode;
    }
    /**
     * Gets the message property value. Optional message for the match creator.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMessage() {
        return this.message;
    }
    /**
     * Gets the selectedMaps property value. Optional proposed map IDs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedMaps() {
        return this.selectedMaps;
    }
    /**
     * Gets the teamId property value. Team ID accepting the match.
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
        writer.writeCollectionOfPrimitiveValues("activeRoster", this.getActiveRoster());
        writer.writeCollectionOfObjectValues("benchRoster", this.getBenchRoster());
        writer.writeObjectValue("disputedRules", this.getDisputedRules());
        writer.writeEnumValue("mapPreferenceMode", this.getMapPreferenceMode());
        writer.writeStringValue("message", this.getMessage());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the activeRoster property value. Active roster user IDs for the acceptance request.
     * @param value Value to set for the activeRoster property.
     */
    public void setActiveRoster(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.activeRoster = value;
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the benchRoster property value. Optional bench roster users.
     * @param value Value to set for the benchRoster property.
     */
    public void setBenchRoster(@jakarta.annotation.Nullable final java.util.List<AcceptMatchRequestBodyBenchRoster> value) {
        this.benchRoster = value;
    }
    /**
     * Sets the disputedRules property value. Optional proposed rule changes.
     * @param value Value to set for the disputedRules property.
     */
    public void setDisputedRules(@jakarta.annotation.Nullable final AcceptMatchRequestBodyDisputedRules value) {
        this.disputedRules = value;
    }
    /**
     * Sets the mapPreferenceMode property value. Optional map preference mode for selected maps.
     * @param value Value to set for the mapPreferenceMode property.
     */
    public void setMapPreferenceMode(@jakarta.annotation.Nullable final AcceptMatchRequestBodyMapPreferenceMode value) {
        this.mapPreferenceMode = value;
    }
    /**
     * Sets the message property value. Optional message for the match creator.
     * @param value Value to set for the message property.
     */
    public void setMessage(@jakarta.annotation.Nullable final String value) {
        this.message = value;
    }
    /**
     * Sets the selectedMaps property value. Optional proposed map IDs.
     * @param value Value to set for the selectedMaps property.
     */
    public void setSelectedMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedMaps = value;
    }
    /**
     * Sets the teamId property value. Team ID accepting the match.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
}

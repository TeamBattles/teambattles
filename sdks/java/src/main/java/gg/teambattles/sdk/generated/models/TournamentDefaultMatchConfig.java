package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentDefaultMatchConfig implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Game mode every generated match is played in. Validated against the game&apos;s allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
     */
    private String gameModeId;
    /**
     * The gameSpecificOptions property
     */
    private TournamentDefaultMatchConfigGameSpecificOptions gameSpecificOptions;
    /**
     * The inputDevice property
     */
    private TournamentDefaultMatchConfigInputDevice inputDevice;
    /**
     * Rule keys neither team may renegotiate on a generated match.
     */
    private TournamentDefaultMatchConfigLockedRules lockedRules;
    /**
     * Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
     */
    private TournamentDefaultMatchConfigMapPreferenceMode mapPreferenceMode;
    /**
     * The mapSelectionType property
     */
    private TournamentDefaultMatchConfigMapSelectionType mapSelectionType;
    /**
     * The platform property
     */
    private TournamentDefaultMatchConfigPlatform platform;
    /**
     * The region property
     */
    private TournamentDefaultMatchConfigRegion region;
    /**
     * Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
     */
    private java.util.List<String> selectedMaps;
    /**
     * The selectedObjectives property
     */
    private java.util.List<String> selectedObjectives;
    /**
     * Instantiates a new {@link TournamentDefaultMatchConfig} and sets the default values.
     */
    public TournamentDefaultMatchConfig() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentDefaultMatchConfig}
     */
    @jakarta.annotation.Nonnull
    public static TournamentDefaultMatchConfig createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentDefaultMatchConfig();
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("gameModeId", (n) -> { this.setGameModeId(n.getStringValue()); });
        deserializerMap.put("gameSpecificOptions", (n) -> { this.setGameSpecificOptions(n.getObjectValue(TournamentDefaultMatchConfigGameSpecificOptions::createFromDiscriminatorValue)); });
        deserializerMap.put("inputDevice", (n) -> { this.setInputDevice(n.getEnumValue(TournamentDefaultMatchConfigInputDevice::forValue)); });
        deserializerMap.put("lockedRules", (n) -> { this.setLockedRules(n.getObjectValue(TournamentDefaultMatchConfigLockedRules::createFromDiscriminatorValue)); });
        deserializerMap.put("mapPreferenceMode", (n) -> { this.setMapPreferenceMode(n.getEnumValue(TournamentDefaultMatchConfigMapPreferenceMode::forValue)); });
        deserializerMap.put("mapSelectionType", (n) -> { this.setMapSelectionType(n.getEnumValue(TournamentDefaultMatchConfigMapSelectionType::forValue)); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(TournamentDefaultMatchConfigPlatform::forValue)); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getEnumValue(TournamentDefaultMatchConfigRegion::forValue)); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("selectedObjectives", (n) -> { this.setSelectedObjectives(n.getCollectionOfPrimitiveValues(String.class)); });
        return deserializerMap;
    }
    /**
     * Gets the gameModeId property value. Game mode every generated match is played in. Validated against the game&apos;s allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameModeId() {
        return this.gameModeId;
    }
    /**
     * Gets the gameSpecificOptions property value. The gameSpecificOptions property
     * @return a {@link TournamentDefaultMatchConfigGameSpecificOptions}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigGameSpecificOptions getGameSpecificOptions() {
        return this.gameSpecificOptions;
    }
    /**
     * Gets the inputDevice property value. The inputDevice property
     * @return a {@link TournamentDefaultMatchConfigInputDevice}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigInputDevice getInputDevice() {
        return this.inputDevice;
    }
    /**
     * Gets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
     * @return a {@link TournamentDefaultMatchConfigLockedRules}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigLockedRules getLockedRules() {
        return this.lockedRules;
    }
    /**
     * Gets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
     * @return a {@link TournamentDefaultMatchConfigMapPreferenceMode}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigMapPreferenceMode getMapPreferenceMode() {
        return this.mapPreferenceMode;
    }
    /**
     * Gets the mapSelectionType property value. The mapSelectionType property
     * @return a {@link TournamentDefaultMatchConfigMapSelectionType}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigMapSelectionType getMapSelectionType() {
        return this.mapSelectionType;
    }
    /**
     * Gets the platform property value. The platform property
     * @return a {@link TournamentDefaultMatchConfigPlatform}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigPlatform getPlatform() {
        return this.platform;
    }
    /**
     * Gets the region property value. The region property
     * @return a {@link TournamentDefaultMatchConfigRegion}
     */
    @jakarta.annotation.Nullable
    public TournamentDefaultMatchConfigRegion getRegion() {
        return this.region;
    }
    /**
     * Gets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedMaps() {
        return this.selectedMaps;
    }
    /**
     * Gets the selectedObjectives property value. The selectedObjectives property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedObjectives() {
        return this.selectedObjectives;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameModeId", this.getGameModeId());
        writer.writeObjectValue("gameSpecificOptions", this.getGameSpecificOptions());
        writer.writeEnumValue("inputDevice", this.getInputDevice());
        writer.writeObjectValue("lockedRules", this.getLockedRules());
        writer.writeEnumValue("mapPreferenceMode", this.getMapPreferenceMode());
        writer.writeEnumValue("mapSelectionType", this.getMapSelectionType());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeEnumValue("region", this.getRegion());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeCollectionOfPrimitiveValues("selectedObjectives", this.getSelectedObjectives());
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
     * Sets the gameModeId property value. Game mode every generated match is played in. Validated against the game&apos;s allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
     * @param value Value to set for the gameModeId property.
     */
    public void setGameModeId(@jakarta.annotation.Nullable final String value) {
        this.gameModeId = value;
    }
    /**
     * Sets the gameSpecificOptions property value. The gameSpecificOptions property
     * @param value Value to set for the gameSpecificOptions property.
     */
    public void setGameSpecificOptions(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigGameSpecificOptions value) {
        this.gameSpecificOptions = value;
    }
    /**
     * Sets the inputDevice property value. The inputDevice property
     * @param value Value to set for the inputDevice property.
     */
    public void setInputDevice(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigInputDevice value) {
        this.inputDevice = value;
    }
    /**
     * Sets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
     * @param value Value to set for the lockedRules property.
     */
    public void setLockedRules(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigLockedRules value) {
        this.lockedRules = value;
    }
    /**
     * Sets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
     * @param value Value to set for the mapPreferenceMode property.
     */
    public void setMapPreferenceMode(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigMapPreferenceMode value) {
        this.mapPreferenceMode = value;
    }
    /**
     * Sets the mapSelectionType property value. The mapSelectionType property
     * @param value Value to set for the mapSelectionType property.
     */
    public void setMapSelectionType(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigMapSelectionType value) {
        this.mapSelectionType = value;
    }
    /**
     * Sets the platform property value. The platform property
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigPlatform value) {
        this.platform = value;
    }
    /**
     * Sets the region property value. The region property
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final TournamentDefaultMatchConfigRegion value) {
        this.region = value;
    }
    /**
     * Sets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
     * @param value Value to set for the selectedMaps property.
     */
    public void setSelectedMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedMaps = value;
    }
    /**
     * Sets the selectedObjectives property value. The selectedObjectives property
     * @param value Value to set for the selectedObjectives property.
     */
    public void setSelectedObjectives(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedObjectives = value;
    }
}

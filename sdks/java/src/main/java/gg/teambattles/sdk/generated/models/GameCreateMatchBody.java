package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key&apos;s bound game. Supports an optional Idempotency-Key header for safe retries.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameCreateMatchBody implements AdditionalDataHolder, Parsable {
    /**
     * ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key&apos;s bound game.
     */
    private String acceptedTeamId;
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Number of maps in the series. One of 1, 3, 5, or 7.
     */
    private Double bestOf;
    /**
     * ID of the creating team. Must belong to the key&apos;s bound game.
     */
    private String creatorTeamId;
    /**
     * Game mode identifier (e.g. search_and_destroy).
     */
    private String gameModeId;
    /**
     * Allowed input device (e.g. ALL).
     */
    private GameCreateMatchBodyInputDevice inputDevice;
    /**
     * Map preference mode (PREFERRED, VETO, or MANUAL).
     */
    private GameCreateMatchBodyMapPreferenceMode mapPreferenceMode;
    /**
     * Map selection type (COMPETITIVE or FLEX).
     */
    private GameCreateMatchBodyMapSelectionType mapSelectionType;
    /**
     * Match platform (e.g. CROSSPLAY).
     */
    private GameCreateMatchBodyPlatform platform;
    /**
     * Match region (e.g. NONE).
     */
    private GameCreateMatchBodyRegion region;
    /**
     * Optional scheduled start time (epoch ms).
     */
    private Double scheduledAt;
    /**
     * Optional pre-selected map IDs.
     */
    private java.util.List<String> selectedMaps;
    /**
     * Optional pre-selected objective IDs.
     */
    private java.util.List<String> selectedObjectives;
    /**
     * Players per team (validated against the game&apos;s min/max).
     */
    private Double teamSize;
    /**
     * Instantiates a new {@link GameCreateMatchBody} and sets the default values.
     */
    public GameCreateMatchBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameCreateMatchBody}
     */
    @jakarta.annotation.Nonnull
    public static GameCreateMatchBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameCreateMatchBody();
    }
    /**
     * Gets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key&apos;s bound game.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAcceptedTeamId() {
        return this.acceptedTeamId;
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
     * Gets the bestOf property value. Number of maps in the series. One of 1, 3, 5, or 7.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getBestOf() {
        return this.bestOf;
    }
    /**
     * Gets the creatorTeamId property value. ID of the creating team. Must belong to the key&apos;s bound game.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatorTeamId() {
        return this.creatorTeamId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(13);
        deserializerMap.put("acceptedTeamId", (n) -> { this.setAcceptedTeamId(n.getStringValue()); });
        deserializerMap.put("bestOf", (n) -> { this.setBestOf(n.getDoubleValue()); });
        deserializerMap.put("creatorTeamId", (n) -> { this.setCreatorTeamId(n.getStringValue()); });
        deserializerMap.put("gameModeId", (n) -> { this.setGameModeId(n.getStringValue()); });
        deserializerMap.put("inputDevice", (n) -> { this.setInputDevice(n.getEnumValue(GameCreateMatchBodyInputDevice::forValue)); });
        deserializerMap.put("mapPreferenceMode", (n) -> { this.setMapPreferenceMode(n.getEnumValue(GameCreateMatchBodyMapPreferenceMode::forValue)); });
        deserializerMap.put("mapSelectionType", (n) -> { this.setMapSelectionType(n.getEnumValue(GameCreateMatchBodyMapSelectionType::forValue)); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(GameCreateMatchBodyPlatform::forValue)); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getEnumValue(GameCreateMatchBodyRegion::forValue)); });
        deserializerMap.put("scheduledAt", (n) -> { this.setScheduledAt(n.getDoubleValue()); });
        deserializerMap.put("selectedMaps", (n) -> { this.setSelectedMaps(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("selectedObjectives", (n) -> { this.setSelectedObjectives(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("teamSize", (n) -> { this.setTeamSize(n.getDoubleValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameModeId() {
        return this.gameModeId;
    }
    /**
     * Gets the inputDevice property value. Allowed input device (e.g. ALL).
     * @return a {@link GameCreateMatchBodyInputDevice}
     */
    @jakarta.annotation.Nullable
    public GameCreateMatchBodyInputDevice getInputDevice() {
        return this.inputDevice;
    }
    /**
     * Gets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
     * @return a {@link GameCreateMatchBodyMapPreferenceMode}
     */
    @jakarta.annotation.Nullable
    public GameCreateMatchBodyMapPreferenceMode getMapPreferenceMode() {
        return this.mapPreferenceMode;
    }
    /**
     * Gets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
     * @return a {@link GameCreateMatchBodyMapSelectionType}
     */
    @jakarta.annotation.Nullable
    public GameCreateMatchBodyMapSelectionType getMapSelectionType() {
        return this.mapSelectionType;
    }
    /**
     * Gets the platform property value. Match platform (e.g. CROSSPLAY).
     * @return a {@link GameCreateMatchBodyPlatform}
     */
    @jakarta.annotation.Nullable
    public GameCreateMatchBodyPlatform getPlatform() {
        return this.platform;
    }
    /**
     * Gets the region property value. Match region (e.g. NONE).
     * @return a {@link GameCreateMatchBodyRegion}
     */
    @jakarta.annotation.Nullable
    public GameCreateMatchBodyRegion getRegion() {
        return this.region;
    }
    /**
     * Gets the scheduledAt property value. Optional scheduled start time (epoch ms).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getScheduledAt() {
        return this.scheduledAt;
    }
    /**
     * Gets the selectedMaps property value. Optional pre-selected map IDs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedMaps() {
        return this.selectedMaps;
    }
    /**
     * Gets the selectedObjectives property value. Optional pre-selected objective IDs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getSelectedObjectives() {
        return this.selectedObjectives;
    }
    /**
     * Gets the teamSize property value. Players per team (validated against the game&apos;s min/max).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getTeamSize() {
        return this.teamSize;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("acceptedTeamId", this.getAcceptedTeamId());
        writer.writeDoubleValue("bestOf", this.getBestOf());
        writer.writeStringValue("creatorTeamId", this.getCreatorTeamId());
        writer.writeStringValue("gameModeId", this.getGameModeId());
        writer.writeEnumValue("inputDevice", this.getInputDevice());
        writer.writeEnumValue("mapPreferenceMode", this.getMapPreferenceMode());
        writer.writeEnumValue("mapSelectionType", this.getMapSelectionType());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeEnumValue("region", this.getRegion());
        writer.writeDoubleValue("scheduledAt", this.getScheduledAt());
        writer.writeCollectionOfPrimitiveValues("selectedMaps", this.getSelectedMaps());
        writer.writeCollectionOfPrimitiveValues("selectedObjectives", this.getSelectedObjectives());
        writer.writeDoubleValue("teamSize", this.getTeamSize());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key&apos;s bound game.
     * @param value Value to set for the acceptedTeamId property.
     */
    public void setAcceptedTeamId(@jakarta.annotation.Nullable final String value) {
        this.acceptedTeamId = value;
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the bestOf property value. Number of maps in the series. One of 1, 3, 5, or 7.
     * @param value Value to set for the bestOf property.
     */
    public void setBestOf(@jakarta.annotation.Nullable final Double value) {
        this.bestOf = value;
    }
    /**
     * Sets the creatorTeamId property value. ID of the creating team. Must belong to the key&apos;s bound game.
     * @param value Value to set for the creatorTeamId property.
     */
    public void setCreatorTeamId(@jakarta.annotation.Nullable final String value) {
        this.creatorTeamId = value;
    }
    /**
     * Sets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
     * @param value Value to set for the gameModeId property.
     */
    public void setGameModeId(@jakarta.annotation.Nullable final String value) {
        this.gameModeId = value;
    }
    /**
     * Sets the inputDevice property value. Allowed input device (e.g. ALL).
     * @param value Value to set for the inputDevice property.
     */
    public void setInputDevice(@jakarta.annotation.Nullable final GameCreateMatchBodyInputDevice value) {
        this.inputDevice = value;
    }
    /**
     * Sets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
     * @param value Value to set for the mapPreferenceMode property.
     */
    public void setMapPreferenceMode(@jakarta.annotation.Nullable final GameCreateMatchBodyMapPreferenceMode value) {
        this.mapPreferenceMode = value;
    }
    /**
     * Sets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
     * @param value Value to set for the mapSelectionType property.
     */
    public void setMapSelectionType(@jakarta.annotation.Nullable final GameCreateMatchBodyMapSelectionType value) {
        this.mapSelectionType = value;
    }
    /**
     * Sets the platform property value. Match platform (e.g. CROSSPLAY).
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final GameCreateMatchBodyPlatform value) {
        this.platform = value;
    }
    /**
     * Sets the region property value. Match region (e.g. NONE).
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final GameCreateMatchBodyRegion value) {
        this.region = value;
    }
    /**
     * Sets the scheduledAt property value. Optional scheduled start time (epoch ms).
     * @param value Value to set for the scheduledAt property.
     */
    public void setScheduledAt(@jakarta.annotation.Nullable final Double value) {
        this.scheduledAt = value;
    }
    /**
     * Sets the selectedMaps property value. Optional pre-selected map IDs.
     * @param value Value to set for the selectedMaps property.
     */
    public void setSelectedMaps(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedMaps = value;
    }
    /**
     * Sets the selectedObjectives property value. Optional pre-selected objective IDs.
     * @param value Value to set for the selectedObjectives property.
     */
    public void setSelectedObjectives(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.selectedObjectives = value;
    }
    /**
     * Sets the teamSize property value. Players per team (validated against the game&apos;s min/max).
     * @param value Value to set for the teamSize property.
     */
    public void setTeamSize(@jakarta.annotation.Nullable final Double value) {
        this.teamSize = value;
    }
}

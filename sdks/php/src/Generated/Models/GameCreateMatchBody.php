<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
*/
class GameCreateMatchBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var string|null $acceptedTeamId ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
    */
    private ?string $acceptedTeamId = null;
    
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $bestOf Number of maps in the series. One of 1, 3, 5, or 7.
    */
    private ?float $bestOf = null;
    
    /**
     * @var string|null $creatorTeamId ID of the creating team. Must belong to the key's bound game.
    */
    private ?string $creatorTeamId = null;
    
    /**
     * @var string|null $gameModeId Game mode identifier (e.g. search_and_destroy).
    */
    private ?string $gameModeId = null;
    
    /**
     * @var GameCreateMatchBody_inputDevice|null $inputDevice Allowed input device (e.g. ALL).
    */
    private ?GameCreateMatchBody_inputDevice $inputDevice = null;
    
    /**
     * @var GameCreateMatchBody_mapPreferenceMode|null $mapPreferenceMode Map preference mode (PREFERRED, VETO, or MANUAL).
    */
    private ?GameCreateMatchBody_mapPreferenceMode $mapPreferenceMode = null;
    
    /**
     * @var GameCreateMatchBody_mapSelectionType|null $mapSelectionType Map selection type (COMPETITIVE or FLEX).
    */
    private ?GameCreateMatchBody_mapSelectionType $mapSelectionType = null;
    
    /**
     * @var GameCreateMatchBody_platform|null $platform Match platform (e.g. CROSSPLAY).
    */
    private ?GameCreateMatchBody_platform $platform = null;
    
    /**
     * @var GameCreateMatchBody_region|null $region Match region (e.g. NONE).
    */
    private ?GameCreateMatchBody_region $region = null;
    
    /**
     * @var float|null $scheduledAt Optional scheduled start time (epoch ms).
    */
    private ?float $scheduledAt = null;
    
    /**
     * @var array<string>|null $selectedMaps Optional pre-selected map IDs.
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var array<string>|null $selectedObjectives Optional pre-selected objective IDs.
    */
    private ?array $selectedObjectives = null;
    
    /**
     * @var float|null $teamSize Players per team (validated against the game's min/max).
    */
    private ?float $teamSize = null;
    
    /**
     * Instantiates a new GameCreateMatchBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameCreateMatchBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameCreateMatchBody {
        return new GameCreateMatchBody();
    }

    /**
     * Gets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
     * @return string|null
    */
    public function getAcceptedTeamId(): ?string {
        return $this->acceptedTeamId;
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the bestOf property value. Number of maps in the series. One of 1, 3, 5, or 7.
     * @return float|null
    */
    public function getBestOf(): ?float {
        return $this->bestOf;
    }

    /**
     * Gets the creatorTeamId property value. ID of the creating team. Must belong to the key's bound game.
     * @return string|null
    */
    public function getCreatorTeamId(): ?string {
        return $this->creatorTeamId;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'acceptedTeamId' => fn(ParseNode $n) => $o->setAcceptedTeamId($n->getStringValue()),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getFloatValue()),
            'creatorTeamId' => fn(ParseNode $n) => $o->setCreatorTeamId($n->getStringValue()),
            'gameModeId' => fn(ParseNode $n) => $o->setGameModeId($n->getStringValue()),
            'inputDevice' => fn(ParseNode $n) => $o->setInputDevice($n->getEnumValue(GameCreateMatchBody_inputDevice::class)),
            'mapPreferenceMode' => fn(ParseNode $n) => $o->setMapPreferenceMode($n->getEnumValue(GameCreateMatchBody_mapPreferenceMode::class)),
            'mapSelectionType' => fn(ParseNode $n) => $o->setMapSelectionType($n->getEnumValue(GameCreateMatchBody_mapSelectionType::class)),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(GameCreateMatchBody_platform::class)),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getEnumValue(GameCreateMatchBody_region::class)),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getFloatValue()),
            'selectedMaps' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setSelectedMaps($val);
            },
            'selectedObjectives' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setSelectedObjectives($val);
            },
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getFloatValue()),
        ];
    }

    /**
     * Gets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
     * @return string|null
    */
    public function getGameModeId(): ?string {
        return $this->gameModeId;
    }

    /**
     * Gets the inputDevice property value. Allowed input device (e.g. ALL).
     * @return GameCreateMatchBody_inputDevice|null
    */
    public function getInputDevice(): ?GameCreateMatchBody_inputDevice {
        return $this->inputDevice;
    }

    /**
     * Gets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
     * @return GameCreateMatchBody_mapPreferenceMode|null
    */
    public function getMapPreferenceMode(): ?GameCreateMatchBody_mapPreferenceMode {
        return $this->mapPreferenceMode;
    }

    /**
     * Gets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
     * @return GameCreateMatchBody_mapSelectionType|null
    */
    public function getMapSelectionType(): ?GameCreateMatchBody_mapSelectionType {
        return $this->mapSelectionType;
    }

    /**
     * Gets the platform property value. Match platform (e.g. CROSSPLAY).
     * @return GameCreateMatchBody_platform|null
    */
    public function getPlatform(): ?GameCreateMatchBody_platform {
        return $this->platform;
    }

    /**
     * Gets the region property value. Match region (e.g. NONE).
     * @return GameCreateMatchBody_region|null
    */
    public function getRegion(): ?GameCreateMatchBody_region {
        return $this->region;
    }

    /**
     * Gets the scheduledAt property value. Optional scheduled start time (epoch ms).
     * @return float|null
    */
    public function getScheduledAt(): ?float {
        return $this->scheduledAt;
    }

    /**
     * Gets the selectedMaps property value. Optional pre-selected map IDs.
     * @return array<string>|null
    */
    public function getSelectedMaps(): ?array {
        return $this->selectedMaps;
    }

    /**
     * Gets the selectedObjectives property value. Optional pre-selected objective IDs.
     * @return array<string>|null
    */
    public function getSelectedObjectives(): ?array {
        return $this->selectedObjectives;
    }

    /**
     * Gets the teamSize property value. Players per team (validated against the game's min/max).
     * @return float|null
    */
    public function getTeamSize(): ?float {
        return $this->teamSize;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('acceptedTeamId', $this->getAcceptedTeamId());
        $writer->writeFloatValue('bestOf', $this->getBestOf());
        $writer->writeStringValue('creatorTeamId', $this->getCreatorTeamId());
        $writer->writeStringValue('gameModeId', $this->getGameModeId());
        $writer->writeEnumValue('inputDevice', $this->getInputDevice());
        $writer->writeEnumValue('mapPreferenceMode', $this->getMapPreferenceMode());
        $writer->writeEnumValue('mapSelectionType', $this->getMapSelectionType());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeEnumValue('region', $this->getRegion());
        $writer->writeFloatValue('scheduledAt', $this->getScheduledAt());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeCollectionOfPrimitiveValues('selectedObjectives', $this->getSelectedObjectives());
        $writer->writeFloatValue('teamSize', $this->getTeamSize());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the acceptedTeamId property value. ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
     * @param string|null $value Value to set for the acceptedTeamId property.
    */
    public function setAcceptedTeamId(?string $value): void {
        $this->acceptedTeamId = $value;
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the bestOf property value. Number of maps in the series. One of 1, 3, 5, or 7.
     * @param float|null $value Value to set for the bestOf property.
    */
    public function setBestOf(?float $value): void {
        $this->bestOf = $value;
    }

    /**
     * Sets the creatorTeamId property value. ID of the creating team. Must belong to the key's bound game.
     * @param string|null $value Value to set for the creatorTeamId property.
    */
    public function setCreatorTeamId(?string $value): void {
        $this->creatorTeamId = $value;
    }

    /**
     * Sets the gameModeId property value. Game mode identifier (e.g. search_and_destroy).
     * @param string|null $value Value to set for the gameModeId property.
    */
    public function setGameModeId(?string $value): void {
        $this->gameModeId = $value;
    }

    /**
     * Sets the inputDevice property value. Allowed input device (e.g. ALL).
     * @param GameCreateMatchBody_inputDevice|null $value Value to set for the inputDevice property.
    */
    public function setInputDevice(?GameCreateMatchBody_inputDevice $value): void {
        $this->inputDevice = $value;
    }

    /**
     * Sets the mapPreferenceMode property value. Map preference mode (PREFERRED, VETO, or MANUAL).
     * @param GameCreateMatchBody_mapPreferenceMode|null $value Value to set for the mapPreferenceMode property.
    */
    public function setMapPreferenceMode(?GameCreateMatchBody_mapPreferenceMode $value): void {
        $this->mapPreferenceMode = $value;
    }

    /**
     * Sets the mapSelectionType property value. Map selection type (COMPETITIVE or FLEX).
     * @param GameCreateMatchBody_mapSelectionType|null $value Value to set for the mapSelectionType property.
    */
    public function setMapSelectionType(?GameCreateMatchBody_mapSelectionType $value): void {
        $this->mapSelectionType = $value;
    }

    /**
     * Sets the platform property value. Match platform (e.g. CROSSPLAY).
     * @param GameCreateMatchBody_platform|null $value Value to set for the platform property.
    */
    public function setPlatform(?GameCreateMatchBody_platform $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the region property value. Match region (e.g. NONE).
     * @param GameCreateMatchBody_region|null $value Value to set for the region property.
    */
    public function setRegion(?GameCreateMatchBody_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the scheduledAt property value. Optional scheduled start time (epoch ms).
     * @param float|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?float $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the selectedMaps property value. Optional pre-selected map IDs.
     * @param array<string>|null $value Value to set for the selectedMaps property.
    */
    public function setSelectedMaps(?array $value): void {
        $this->selectedMaps = $value;
    }

    /**
     * Sets the selectedObjectives property value. Optional pre-selected objective IDs.
     * @param array<string>|null $value Value to set for the selectedObjectives property.
    */
    public function setSelectedObjectives(?array $value): void {
        $this->selectedObjectives = $value;
    }

    /**
     * Sets the teamSize property value. Players per team (validated against the game's min/max).
     * @param float|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?float $value): void {
        $this->teamSize = $value;
    }

}

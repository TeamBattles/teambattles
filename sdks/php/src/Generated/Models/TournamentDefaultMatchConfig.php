<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
*/
class TournamentDefaultMatchConfig implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameModeId Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
    */
    private ?string $gameModeId = null;
    
    /**
     * @var TournamentDefaultMatchConfig_gameSpecificOptions|null $gameSpecificOptions The gameSpecificOptions property
    */
    private ?TournamentDefaultMatchConfig_gameSpecificOptions $gameSpecificOptions = null;
    
    /**
     * @var TournamentDefaultMatchConfig_inputDevice|null $inputDevice The inputDevice property
    */
    private ?TournamentDefaultMatchConfig_inputDevice $inputDevice = null;
    
    /**
     * @var TournamentDefaultMatchConfig_lockedRules|null $lockedRules Rule keys neither team may renegotiate on a generated match.
    */
    private ?TournamentDefaultMatchConfig_lockedRules $lockedRules = null;
    
    /**
     * @var TournamentDefaultMatchConfig_mapPreferenceMode|null $mapPreferenceMode Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
    */
    private ?TournamentDefaultMatchConfig_mapPreferenceMode $mapPreferenceMode = null;
    
    /**
     * @var TournamentDefaultMatchConfig_mapSelectionType|null $mapSelectionType The mapSelectionType property
    */
    private ?TournamentDefaultMatchConfig_mapSelectionType $mapSelectionType = null;
    
    /**
     * @var TournamentDefaultMatchConfig_platform|null $platform The platform property
    */
    private ?TournamentDefaultMatchConfig_platform $platform = null;
    
    /**
     * @var TournamentDefaultMatchConfig_region|null $region The region property
    */
    private ?TournamentDefaultMatchConfig_region $region = null;
    
    /**
     * @var array<string>|null $selectedMaps Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var array<string>|null $selectedObjectives The selectedObjectives property
    */
    private ?array $selectedObjectives = null;
    
    /**
     * Instantiates a new TournamentDefaultMatchConfig and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentDefaultMatchConfig
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentDefaultMatchConfig {
        return new TournamentDefaultMatchConfig();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameModeId' => fn(ParseNode $n) => $o->setGameModeId($n->getStringValue()),
            'gameSpecificOptions' => fn(ParseNode $n) => $o->setGameSpecificOptions($n->getObjectValue([TournamentDefaultMatchConfig_gameSpecificOptions::class, 'createFromDiscriminatorValue'])),
            'inputDevice' => fn(ParseNode $n) => $o->setInputDevice($n->getEnumValue(TournamentDefaultMatchConfig_inputDevice::class)),
            'lockedRules' => fn(ParseNode $n) => $o->setLockedRules($n->getObjectValue([TournamentDefaultMatchConfig_lockedRules::class, 'createFromDiscriminatorValue'])),
            'mapPreferenceMode' => fn(ParseNode $n) => $o->setMapPreferenceMode($n->getEnumValue(TournamentDefaultMatchConfig_mapPreferenceMode::class)),
            'mapSelectionType' => fn(ParseNode $n) => $o->setMapSelectionType($n->getEnumValue(TournamentDefaultMatchConfig_mapSelectionType::class)),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(TournamentDefaultMatchConfig_platform::class)),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getEnumValue(TournamentDefaultMatchConfig_region::class)),
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
        ];
    }

    /**
     * Gets the gameModeId property value. Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
     * @return string|null
    */
    public function getGameModeId(): ?string {
        return $this->gameModeId;
    }

    /**
     * Gets the gameSpecificOptions property value. The gameSpecificOptions property
     * @return TournamentDefaultMatchConfig_gameSpecificOptions|null
    */
    public function getGameSpecificOptions(): ?TournamentDefaultMatchConfig_gameSpecificOptions {
        return $this->gameSpecificOptions;
    }

    /**
     * Gets the inputDevice property value. The inputDevice property
     * @return TournamentDefaultMatchConfig_inputDevice|null
    */
    public function getInputDevice(): ?TournamentDefaultMatchConfig_inputDevice {
        return $this->inputDevice;
    }

    /**
     * Gets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
     * @return TournamentDefaultMatchConfig_lockedRules|null
    */
    public function getLockedRules(): ?TournamentDefaultMatchConfig_lockedRules {
        return $this->lockedRules;
    }

    /**
     * Gets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
     * @return TournamentDefaultMatchConfig_mapPreferenceMode|null
    */
    public function getMapPreferenceMode(): ?TournamentDefaultMatchConfig_mapPreferenceMode {
        return $this->mapPreferenceMode;
    }

    /**
     * Gets the mapSelectionType property value. The mapSelectionType property
     * @return TournamentDefaultMatchConfig_mapSelectionType|null
    */
    public function getMapSelectionType(): ?TournamentDefaultMatchConfig_mapSelectionType {
        return $this->mapSelectionType;
    }

    /**
     * Gets the platform property value. The platform property
     * @return TournamentDefaultMatchConfig_platform|null
    */
    public function getPlatform(): ?TournamentDefaultMatchConfig_platform {
        return $this->platform;
    }

    /**
     * Gets the region property value. The region property
     * @return TournamentDefaultMatchConfig_region|null
    */
    public function getRegion(): ?TournamentDefaultMatchConfig_region {
        return $this->region;
    }

    /**
     * Gets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
     * @return array<string>|null
    */
    public function getSelectedMaps(): ?array {
        return $this->selectedMaps;
    }

    /**
     * Gets the selectedObjectives property value. The selectedObjectives property
     * @return array<string>|null
    */
    public function getSelectedObjectives(): ?array {
        return $this->selectedObjectives;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameModeId', $this->getGameModeId());
        $writer->writeObjectValue('gameSpecificOptions', $this->getGameSpecificOptions());
        $writer->writeEnumValue('inputDevice', $this->getInputDevice());
        $writer->writeObjectValue('lockedRules', $this->getLockedRules());
        $writer->writeEnumValue('mapPreferenceMode', $this->getMapPreferenceMode());
        $writer->writeEnumValue('mapSelectionType', $this->getMapSelectionType());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeEnumValue('region', $this->getRegion());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeCollectionOfPrimitiveValues('selectedObjectives', $this->getSelectedObjectives());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the gameModeId property value. Game mode every generated match is played in. Validated against the game's allowed modes when a match is generated, NOT here - a mode id that does not belong to `gameId` is accepted at create time and surfaces at start time as a match_generation_failed activity entry.
     * @param string|null $value Value to set for the gameModeId property.
    */
    public function setGameModeId(?string $value): void {
        $this->gameModeId = $value;
    }

    /**
     * Sets the gameSpecificOptions property value. The gameSpecificOptions property
     * @param TournamentDefaultMatchConfig_gameSpecificOptions|null $value Value to set for the gameSpecificOptions property.
    */
    public function setGameSpecificOptions(?TournamentDefaultMatchConfig_gameSpecificOptions $value): void {
        $this->gameSpecificOptions = $value;
    }

    /**
     * Sets the inputDevice property value. The inputDevice property
     * @param TournamentDefaultMatchConfig_inputDevice|null $value Value to set for the inputDevice property.
    */
    public function setInputDevice(?TournamentDefaultMatchConfig_inputDevice $value): void {
        $this->inputDevice = $value;
    }

    /**
     * Sets the lockedRules property value. Rule keys neither team may renegotiate on a generated match.
     * @param TournamentDefaultMatchConfig_lockedRules|null $value Value to set for the lockedRules property.
    */
    public function setLockedRules(?TournamentDefaultMatchConfig_lockedRules $value): void {
        $this->lockedRules = $value;
    }

    /**
     * Sets the mapPreferenceMode property value. Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
     * @param TournamentDefaultMatchConfig_mapPreferenceMode|null $value Value to set for the mapPreferenceMode property.
    */
    public function setMapPreferenceMode(?TournamentDefaultMatchConfig_mapPreferenceMode $value): void {
        $this->mapPreferenceMode = $value;
    }

    /**
     * Sets the mapSelectionType property value. The mapSelectionType property
     * @param TournamentDefaultMatchConfig_mapSelectionType|null $value Value to set for the mapSelectionType property.
    */
    public function setMapSelectionType(?TournamentDefaultMatchConfig_mapSelectionType $value): void {
        $this->mapSelectionType = $value;
    }

    /**
     * Sets the platform property value. The platform property
     * @param TournamentDefaultMatchConfig_platform|null $value Value to set for the platform property.
    */
    public function setPlatform(?TournamentDefaultMatchConfig_platform $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the region property value. The region property
     * @param TournamentDefaultMatchConfig_region|null $value Value to set for the region property.
    */
    public function setRegion(?TournamentDefaultMatchConfig_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the selectedMaps property value. Map pool for every generated match. A per-round `mapPoolOverride` REPLACES this array for that round rather than merging into it.
     * @param array<string>|null $value Value to set for the selectedMaps property.
    */
    public function setSelectedMaps(?array $value): void {
        $this->selectedMaps = $value;
    }

    /**
     * Sets the selectedObjectives property value. The selectedObjectives property
     * @param array<string>|null $value Value to set for the selectedObjectives property.
    */
    public function setSelectedObjectives(?array $value): void {
        $this->selectedObjectives = $value;
    }

}

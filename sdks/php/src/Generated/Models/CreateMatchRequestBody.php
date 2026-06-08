<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Creates a new match as the API key owner.
*/
class CreateMatchRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string>|null $activeRoster Active roster user IDs (must be creator-team members).
    */
    private ?array $activeRoster = null;
    
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<CreateMatchRequestBody_benchRoster>|null $benchRoster Optional bench roster.
    */
    private ?array $benchRoster = null;
    
    /**
     * @var int|null $bestOf Series length (best of N).
    */
    private ?int $bestOf = null;
    
    /**
     * @var string|null $challengedTeamId Challenged team ID (required when isChallenge is true).
    */
    private ?string $challengedTeamId = null;
    
    /**
     * @var string|null $gameId Game ID for the match.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $gameModeId Game mode ID (client-side definition).
    */
    private ?string $gameModeId = null;
    
    /**
     * @var CreateMatchRequestBody_gameSpecificOptions|null $gameSpecificOptions Game-specific options.
    */
    private ?CreateMatchRequestBody_gameSpecificOptions $gameSpecificOptions = null;
    
    /**
     * @var CreateMatchRequestBody_inputDevice|null $inputDevice Input device (defaults to ALL).
    */
    private ?CreateMatchRequestBody_inputDevice $inputDevice = null;
    
    /**
     * @var bool|null $isChallenge Create as a direct challenge to another team.
    */
    private ?bool $isChallenge = null;
    
    /**
     * @var string|null $leagueId League ID for a league match.
    */
    private ?string $leagueId = null;
    
    /**
     * @var CreateMatchRequestBody_lockedRules|null $lockedRules Locked rule flags.
    */
    private ?CreateMatchRequestBody_lockedRules $lockedRules = null;
    
    /**
     * @var CreateMatchRequestBody_mapPreferenceMode|null $mapPreferenceMode Map preference mode.
    */
    private ?CreateMatchRequestBody_mapPreferenceMode $mapPreferenceMode = null;
    
    /**
     * @var CreateMatchRequestBody_mapSelectionType|null $mapSelectionType Map selection type.
    */
    private ?CreateMatchRequestBody_mapSelectionType $mapSelectionType = null;
    
    /**
     * @var CreateMatchRequestBody_matchType|null $matchType Match type.
    */
    private ?CreateMatchRequestBody_matchType $matchType = null;
    
    /**
     * @var string|null $notes Optional match notes.
    */
    private ?string $notes = null;
    
    /**
     * @var CreateMatchRequestBody_platform|null $platform Platform (defaults to CROSSPLAY).
    */
    private ?CreateMatchRequestBody_platform $platform = null;
    
    /**
     * @var CreateMatchRequestBody_publishStatus|null $publishStatus Publish status (defaults to DRAFT).
    */
    private ?CreateMatchRequestBody_publishStatus $publishStatus = null;
    
    /**
     * @var CreateMatchRequestBody_region|null $region Region (defaults to NONE).
    */
    private ?CreateMatchRequestBody_region $region = null;
    
    /**
     * @var float|null $scheduledAt Scheduled start (epoch ms).
    */
    private ?float $scheduledAt = null;
    
    /**
     * @var array<string>|null $selectedMaps Selected map IDs.
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var array<string>|null $selectedObjectives Selected objective IDs.
    */
    private ?array $selectedObjectives = null;
    
    /**
     * @var string|null $teamId Creator team ID. The owner must captain it.
    */
    private ?string $teamId = null;
    
    /**
     * @var int|null $teamSize Players per team.
    */
    private ?int $teamSize = null;
    
    /**
     * @var float|null $wagerAmount Wager amount (WAGER matches only).
    */
    private ?float $wagerAmount = null;
    
    /**
     * Instantiates a new CreateMatchRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateMatchRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateMatchRequestBody {
        return new CreateMatchRequestBody();
    }

    /**
     * Gets the activeRoster property value. Active roster user IDs (must be creator-team members).
     * @return array<string>|null
    */
    public function getActiveRoster(): ?array {
        return $this->activeRoster;
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the benchRoster property value. Optional bench roster.
     * @return array<CreateMatchRequestBody_benchRoster>|null
    */
    public function getBenchRoster(): ?array {
        return $this->benchRoster;
    }

    /**
     * Gets the bestOf property value. Series length (best of N).
     * @return int|null
    */
    public function getBestOf(): ?int {
        return $this->bestOf;
    }

    /**
     * Gets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
     * @return string|null
    */
    public function getChallengedTeamId(): ?string {
        return $this->challengedTeamId;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'activeRoster' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setActiveRoster($val);
            },
            'benchRoster' => fn(ParseNode $n) => $o->setBenchRoster($n->getCollectionOfObjectValues([CreateMatchRequestBody_benchRoster::class, 'createFromDiscriminatorValue'])),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getIntegerValue()),
            'challengedTeamId' => fn(ParseNode $n) => $o->setChallengedTeamId($n->getStringValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'gameModeId' => fn(ParseNode $n) => $o->setGameModeId($n->getStringValue()),
            'gameSpecificOptions' => fn(ParseNode $n) => $o->setGameSpecificOptions($n->getObjectValue([CreateMatchRequestBody_gameSpecificOptions::class, 'createFromDiscriminatorValue'])),
            'inputDevice' => fn(ParseNode $n) => $o->setInputDevice($n->getEnumValue(CreateMatchRequestBody_inputDevice::class)),
            'isChallenge' => fn(ParseNode $n) => $o->setIsChallenge($n->getBooleanValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getStringValue()),
            'lockedRules' => fn(ParseNode $n) => $o->setLockedRules($n->getObjectValue([CreateMatchRequestBody_lockedRules::class, 'createFromDiscriminatorValue'])),
            'mapPreferenceMode' => fn(ParseNode $n) => $o->setMapPreferenceMode($n->getEnumValue(CreateMatchRequestBody_mapPreferenceMode::class)),
            'mapSelectionType' => fn(ParseNode $n) => $o->setMapSelectionType($n->getEnumValue(CreateMatchRequestBody_mapSelectionType::class)),
            'matchType' => fn(ParseNode $n) => $o->setMatchType($n->getEnumValue(CreateMatchRequestBody_matchType::class)),
            'notes' => fn(ParseNode $n) => $o->setNotes($n->getStringValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(CreateMatchRequestBody_platform::class)),
            'publishStatus' => fn(ParseNode $n) => $o->setPublishStatus($n->getEnumValue(CreateMatchRequestBody_publishStatus::class)),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getEnumValue(CreateMatchRequestBody_region::class)),
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
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getIntegerValue()),
            'wagerAmount' => fn(ParseNode $n) => $o->setWagerAmount($n->getFloatValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game ID for the match.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the gameModeId property value. Game mode ID (client-side definition).
     * @return string|null
    */
    public function getGameModeId(): ?string {
        return $this->gameModeId;
    }

    /**
     * Gets the gameSpecificOptions property value. Game-specific options.
     * @return CreateMatchRequestBody_gameSpecificOptions|null
    */
    public function getGameSpecificOptions(): ?CreateMatchRequestBody_gameSpecificOptions {
        return $this->gameSpecificOptions;
    }

    /**
     * Gets the inputDevice property value. Input device (defaults to ALL).
     * @return CreateMatchRequestBody_inputDevice|null
    */
    public function getInputDevice(): ?CreateMatchRequestBody_inputDevice {
        return $this->inputDevice;
    }

    /**
     * Gets the isChallenge property value. Create as a direct challenge to another team.
     * @return bool|null
    */
    public function getIsChallenge(): ?bool {
        return $this->isChallenge;
    }

    /**
     * Gets the leagueId property value. League ID for a league match.
     * @return string|null
    */
    public function getLeagueId(): ?string {
        return $this->leagueId;
    }

    /**
     * Gets the lockedRules property value. Locked rule flags.
     * @return CreateMatchRequestBody_lockedRules|null
    */
    public function getLockedRules(): ?CreateMatchRequestBody_lockedRules {
        return $this->lockedRules;
    }

    /**
     * Gets the mapPreferenceMode property value. Map preference mode.
     * @return CreateMatchRequestBody_mapPreferenceMode|null
    */
    public function getMapPreferenceMode(): ?CreateMatchRequestBody_mapPreferenceMode {
        return $this->mapPreferenceMode;
    }

    /**
     * Gets the mapSelectionType property value. Map selection type.
     * @return CreateMatchRequestBody_mapSelectionType|null
    */
    public function getMapSelectionType(): ?CreateMatchRequestBody_mapSelectionType {
        return $this->mapSelectionType;
    }

    /**
     * Gets the matchType property value. Match type.
     * @return CreateMatchRequestBody_matchType|null
    */
    public function getMatchType(): ?CreateMatchRequestBody_matchType {
        return $this->matchType;
    }

    /**
     * Gets the notes property value. Optional match notes.
     * @return string|null
    */
    public function getNotes(): ?string {
        return $this->notes;
    }

    /**
     * Gets the platform property value. Platform (defaults to CROSSPLAY).
     * @return CreateMatchRequestBody_platform|null
    */
    public function getPlatform(): ?CreateMatchRequestBody_platform {
        return $this->platform;
    }

    /**
     * Gets the publishStatus property value. Publish status (defaults to DRAFT).
     * @return CreateMatchRequestBody_publishStatus|null
    */
    public function getPublishStatus(): ?CreateMatchRequestBody_publishStatus {
        return $this->publishStatus;
    }

    /**
     * Gets the region property value. Region (defaults to NONE).
     * @return CreateMatchRequestBody_region|null
    */
    public function getRegion(): ?CreateMatchRequestBody_region {
        return $this->region;
    }

    /**
     * Gets the scheduledAt property value. Scheduled start (epoch ms).
     * @return float|null
    */
    public function getScheduledAt(): ?float {
        return $this->scheduledAt;
    }

    /**
     * Gets the selectedMaps property value. Selected map IDs.
     * @return array<string>|null
    */
    public function getSelectedMaps(): ?array {
        return $this->selectedMaps;
    }

    /**
     * Gets the selectedObjectives property value. Selected objective IDs.
     * @return array<string>|null
    */
    public function getSelectedObjectives(): ?array {
        return $this->selectedObjectives;
    }

    /**
     * Gets the teamId property value. Creator team ID. The owner must captain it.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the teamSize property value. Players per team.
     * @return int|null
    */
    public function getTeamSize(): ?int {
        return $this->teamSize;
    }

    /**
     * Gets the wagerAmount property value. Wager amount (WAGER matches only).
     * @return float|null
    */
    public function getWagerAmount(): ?float {
        return $this->wagerAmount;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('activeRoster', $this->getActiveRoster());
        $writer->writeCollectionOfObjectValues('benchRoster', $this->getBenchRoster());
        $writer->writeIntegerValue('bestOf', $this->getBestOf());
        $writer->writeStringValue('challengedTeamId', $this->getChallengedTeamId());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('gameModeId', $this->getGameModeId());
        $writer->writeObjectValue('gameSpecificOptions', $this->getGameSpecificOptions());
        $writer->writeEnumValue('inputDevice', $this->getInputDevice());
        $writer->writeBooleanValue('isChallenge', $this->getIsChallenge());
        $writer->writeStringValue('leagueId', $this->getLeagueId());
        $writer->writeObjectValue('lockedRules', $this->getLockedRules());
        $writer->writeEnumValue('mapPreferenceMode', $this->getMapPreferenceMode());
        $writer->writeEnumValue('mapSelectionType', $this->getMapSelectionType());
        $writer->writeEnumValue('matchType', $this->getMatchType());
        $writer->writeStringValue('notes', $this->getNotes());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeEnumValue('publishStatus', $this->getPublishStatus());
        $writer->writeEnumValue('region', $this->getRegion());
        $writer->writeFloatValue('scheduledAt', $this->getScheduledAt());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeCollectionOfPrimitiveValues('selectedObjectives', $this->getSelectedObjectives());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeIntegerValue('teamSize', $this->getTeamSize());
        $writer->writeFloatValue('wagerAmount', $this->getWagerAmount());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the activeRoster property value. Active roster user IDs (must be creator-team members).
     * @param array<string>|null $value Value to set for the activeRoster property.
    */
    public function setActiveRoster(?array $value): void {
        $this->activeRoster = $value;
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the benchRoster property value. Optional bench roster.
     * @param array<CreateMatchRequestBody_benchRoster>|null $value Value to set for the benchRoster property.
    */
    public function setBenchRoster(?array $value): void {
        $this->benchRoster = $value;
    }

    /**
     * Sets the bestOf property value. Series length (best of N).
     * @param int|null $value Value to set for the bestOf property.
    */
    public function setBestOf(?int $value): void {
        $this->bestOf = $value;
    }

    /**
     * Sets the challengedTeamId property value. Challenged team ID (required when isChallenge is true).
     * @param string|null $value Value to set for the challengedTeamId property.
    */
    public function setChallengedTeamId(?string $value): void {
        $this->challengedTeamId = $value;
    }

    /**
     * Sets the gameId property value. Game ID for the match.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the gameModeId property value. Game mode ID (client-side definition).
     * @param string|null $value Value to set for the gameModeId property.
    */
    public function setGameModeId(?string $value): void {
        $this->gameModeId = $value;
    }

    /**
     * Sets the gameSpecificOptions property value. Game-specific options.
     * @param CreateMatchRequestBody_gameSpecificOptions|null $value Value to set for the gameSpecificOptions property.
    */
    public function setGameSpecificOptions(?CreateMatchRequestBody_gameSpecificOptions $value): void {
        $this->gameSpecificOptions = $value;
    }

    /**
     * Sets the inputDevice property value. Input device (defaults to ALL).
     * @param CreateMatchRequestBody_inputDevice|null $value Value to set for the inputDevice property.
    */
    public function setInputDevice(?CreateMatchRequestBody_inputDevice $value): void {
        $this->inputDevice = $value;
    }

    /**
     * Sets the isChallenge property value. Create as a direct challenge to another team.
     * @param bool|null $value Value to set for the isChallenge property.
    */
    public function setIsChallenge(?bool $value): void {
        $this->isChallenge = $value;
    }

    /**
     * Sets the leagueId property value. League ID for a league match.
     * @param string|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?string $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the lockedRules property value. Locked rule flags.
     * @param CreateMatchRequestBody_lockedRules|null $value Value to set for the lockedRules property.
    */
    public function setLockedRules(?CreateMatchRequestBody_lockedRules $value): void {
        $this->lockedRules = $value;
    }

    /**
     * Sets the mapPreferenceMode property value. Map preference mode.
     * @param CreateMatchRequestBody_mapPreferenceMode|null $value Value to set for the mapPreferenceMode property.
    */
    public function setMapPreferenceMode(?CreateMatchRequestBody_mapPreferenceMode $value): void {
        $this->mapPreferenceMode = $value;
    }

    /**
     * Sets the mapSelectionType property value. Map selection type.
     * @param CreateMatchRequestBody_mapSelectionType|null $value Value to set for the mapSelectionType property.
    */
    public function setMapSelectionType(?CreateMatchRequestBody_mapSelectionType $value): void {
        $this->mapSelectionType = $value;
    }

    /**
     * Sets the matchType property value. Match type.
     * @param CreateMatchRequestBody_matchType|null $value Value to set for the matchType property.
    */
    public function setMatchType(?CreateMatchRequestBody_matchType $value): void {
        $this->matchType = $value;
    }

    /**
     * Sets the notes property value. Optional match notes.
     * @param string|null $value Value to set for the notes property.
    */
    public function setNotes(?string $value): void {
        $this->notes = $value;
    }

    /**
     * Sets the platform property value. Platform (defaults to CROSSPLAY).
     * @param CreateMatchRequestBody_platform|null $value Value to set for the platform property.
    */
    public function setPlatform(?CreateMatchRequestBody_platform $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the publishStatus property value. Publish status (defaults to DRAFT).
     * @param CreateMatchRequestBody_publishStatus|null $value Value to set for the publishStatus property.
    */
    public function setPublishStatus(?CreateMatchRequestBody_publishStatus $value): void {
        $this->publishStatus = $value;
    }

    /**
     * Sets the region property value. Region (defaults to NONE).
     * @param CreateMatchRequestBody_region|null $value Value to set for the region property.
    */
    public function setRegion(?CreateMatchRequestBody_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the scheduledAt property value. Scheduled start (epoch ms).
     * @param float|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?float $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the selectedMaps property value. Selected map IDs.
     * @param array<string>|null $value Value to set for the selectedMaps property.
    */
    public function setSelectedMaps(?array $value): void {
        $this->selectedMaps = $value;
    }

    /**
     * Sets the selectedObjectives property value. Selected objective IDs.
     * @param array<string>|null $value Value to set for the selectedObjectives property.
    */
    public function setSelectedObjectives(?array $value): void {
        $this->selectedObjectives = $value;
    }

    /**
     * Sets the teamId property value. Creator team ID. The owner must captain it.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the teamSize property value. Players per team.
     * @param int|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?int $value): void {
        $this->teamSize = $value;
    }

    /**
     * Sets the wagerAmount property value. Wager amount (WAGER matches only).
     * @param float|null $value Value to set for the wagerAmount property.
    */
    public function setWagerAmount(?float $value): void {
        $this->wagerAmount = $value;
    }

}

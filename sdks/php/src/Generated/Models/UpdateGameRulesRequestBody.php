<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Updates league game rules.
*/
class UpdateGameRulesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<string>|null $allowedDays The allowedDays property
    */
    private ?array $allowedDays = null;
    
    /**
     * @var array<string>|null $allowedMapIds The allowedMapIds property
    */
    private ?array $allowedMapIds = null;
    
    /**
     * @var array<string>|null $allowedPlaylistIds The allowedPlaylistIds property
    */
    private ?array $allowedPlaylistIds = null;
    
    /**
     * @var UpdateGameRulesRequestBody_allowedTimeRange|null $allowedTimeRange The allowedTimeRange property
    */
    private ?UpdateGameRulesRequestBody_allowedTimeRange $allowedTimeRange = null;
    
    /**
     * @var array<string>|null $blockedDays The blockedDays property
    */
    private ?array $blockedDays = null;
    
    /**
     * @var float|null $challengeCooldownMinutes The challengeCooldownMinutes property
    */
    private ?float $challengeCooldownMinutes = null;
    
    /**
     * @var bool|null $challengesEnabled The challengesEnabled property
    */
    private ?bool $challengesEnabled = null;
    
    /**
     * @var bool|null $forceCompetitive The forceCompetitive property
    */
    private ?bool $forceCompetitive = null;
    
    /**
     * @var string|null $gameId Game ID whose league rules should change.
    */
    private ?string $gameId = null;
    
    /**
     * @var UpdateGameRulesRequestBody_matchFormat|null $matchFormat The matchFormat property
    */
    private ?UpdateGameRulesRequestBody_matchFormat $matchFormat = null;
    
    /**
     * @var float|null $maxChallengesPerTeamPerSeason The maxChallengesPerTeamPerSeason property
    */
    private ?float $maxChallengesPerTeamPerSeason = null;
    
    /**
     * @var float|null $maxPendingChallengesPerOpponent The maxPendingChallengesPerOpponent property
    */
    private ?float $maxPendingChallengesPerOpponent = null;
    
    /**
     * @var float|null $maxPendingChallengesTotal The maxPendingChallengesTotal property
    */
    private ?float $maxPendingChallengesTotal = null;
    
    /**
     * @var float|null $maxPointsMatchesPerPairPer24h The maxPointsMatchesPerPairPer24h property
    */
    private ?float $maxPointsMatchesPerPairPer24h = null;
    
    /**
     * @var float|null $maxRosterChangesPerWeek The maxRosterChangesPerWeek property
    */
    private ?float $maxRosterChangesPerWeek = null;
    
    /**
     * @var float|null $maxRosterSize The maxRosterSize property
    */
    private ?float $maxRosterSize = null;
    
    /**
     * @var float|null $maxWagerAmount The maxWagerAmount property
    */
    private ?float $maxWagerAmount = null;
    
    /**
     * @var float|null $minRosterSize The minRosterSize property
    */
    private ?float $minRosterSize = null;
    
    /**
     * @var float|null $minWagerAmount The minWagerAmount property
    */
    private ?float $minWagerAmount = null;
    
    /**
     * @var array<string>|null $rosterChangeWindowDays The rosterChangeWindowDays property
    */
    private ?array $rosterChangeWindowDays = null;
    
    /**
     * @var UpdateGameRulesRequestBody_rosterChangeWindowTime|null $rosterChangeWindowTime The rosterChangeWindowTime property
    */
    private ?UpdateGameRulesRequestBody_rosterChangeWindowTime $rosterChangeWindowTime = null;
    
    /**
     * @var bool|null $rosterLockEnabled The rosterLockEnabled property
    */
    private ?bool $rosterLockEnabled = null;
    
    /**
     * @var UpdateGameRulesRequestBody_teamSize|null $teamSize The teamSize property
    */
    private ?UpdateGameRulesRequestBody_teamSize $teamSize = null;
    
    /**
     * @var string|null $timezone The timezone property
    */
    private ?string $timezone = null;
    
    /**
     * @var bool|null $wagersAllowed The wagersAllowed property
    */
    private ?bool $wagersAllowed = null;
    
    /**
     * Instantiates a new UpdateGameRulesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateGameRulesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateGameRulesRequestBody {
        return new UpdateGameRulesRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the allowedDays property value. The allowedDays property
     * @return array<string>|null
    */
    public function getAllowedDays(): ?array {
        return $this->allowedDays;
    }

    /**
     * Gets the allowedMapIds property value. The allowedMapIds property
     * @return array<string>|null
    */
    public function getAllowedMapIds(): ?array {
        return $this->allowedMapIds;
    }

    /**
     * Gets the allowedPlaylistIds property value. The allowedPlaylistIds property
     * @return array<string>|null
    */
    public function getAllowedPlaylistIds(): ?array {
        return $this->allowedPlaylistIds;
    }

    /**
     * Gets the allowedTimeRange property value. The allowedTimeRange property
     * @return UpdateGameRulesRequestBody_allowedTimeRange|null
    */
    public function getAllowedTimeRange(): ?UpdateGameRulesRequestBody_allowedTimeRange {
        return $this->allowedTimeRange;
    }

    /**
     * Gets the blockedDays property value. The blockedDays property
     * @return array<string>|null
    */
    public function getBlockedDays(): ?array {
        return $this->blockedDays;
    }

    /**
     * Gets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
     * @return float|null
    */
    public function getChallengeCooldownMinutes(): ?float {
        return $this->challengeCooldownMinutes;
    }

    /**
     * Gets the challengesEnabled property value. The challengesEnabled property
     * @return bool|null
    */
    public function getChallengesEnabled(): ?bool {
        return $this->challengesEnabled;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'allowedDays' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setAllowedDays($val);
            },
            'allowedMapIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setAllowedMapIds($val);
            },
            'allowedPlaylistIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setAllowedPlaylistIds($val);
            },
            'allowedTimeRange' => fn(ParseNode $n) => $o->setAllowedTimeRange($n->getObjectValue([UpdateGameRulesRequestBody_allowedTimeRange::class, 'createFromDiscriminatorValue'])),
            'blockedDays' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setBlockedDays($val);
            },
            'challengeCooldownMinutes' => fn(ParseNode $n) => $o->setChallengeCooldownMinutes($n->getFloatValue()),
            'challengesEnabled' => fn(ParseNode $n) => $o->setChallengesEnabled($n->getBooleanValue()),
            'forceCompetitive' => fn(ParseNode $n) => $o->setForceCompetitive($n->getBooleanValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'matchFormat' => fn(ParseNode $n) => $o->setMatchFormat($n->getEnumValue(UpdateGameRulesRequestBody_matchFormat::class)),
            'maxChallengesPerTeamPerSeason' => fn(ParseNode $n) => $o->setMaxChallengesPerTeamPerSeason($n->getFloatValue()),
            'maxPendingChallengesPerOpponent' => fn(ParseNode $n) => $o->setMaxPendingChallengesPerOpponent($n->getFloatValue()),
            'maxPendingChallengesTotal' => fn(ParseNode $n) => $o->setMaxPendingChallengesTotal($n->getFloatValue()),
            'maxPointsMatchesPerPairPer24h' => fn(ParseNode $n) => $o->setMaxPointsMatchesPerPairPer24h($n->getFloatValue()),
            'maxRosterChangesPerWeek' => fn(ParseNode $n) => $o->setMaxRosterChangesPerWeek($n->getFloatValue()),
            'maxRosterSize' => fn(ParseNode $n) => $o->setMaxRosterSize($n->getFloatValue()),
            'maxWagerAmount' => fn(ParseNode $n) => $o->setMaxWagerAmount($n->getFloatValue()),
            'minRosterSize' => fn(ParseNode $n) => $o->setMinRosterSize($n->getFloatValue()),
            'minWagerAmount' => fn(ParseNode $n) => $o->setMinWagerAmount($n->getFloatValue()),
            'rosterChangeWindowDays' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setRosterChangeWindowDays($val);
            },
            'rosterChangeWindowTime' => fn(ParseNode $n) => $o->setRosterChangeWindowTime($n->getObjectValue([UpdateGameRulesRequestBody_rosterChangeWindowTime::class, 'createFromDiscriminatorValue'])),
            'rosterLockEnabled' => fn(ParseNode $n) => $o->setRosterLockEnabled($n->getBooleanValue()),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getObjectValue([UpdateGameRulesRequestBody_teamSize::class, 'createFromDiscriminatorValue'])),
            'timezone' => fn(ParseNode $n) => $o->setTimezone($n->getStringValue()),
            'wagersAllowed' => fn(ParseNode $n) => $o->setWagersAllowed($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the forceCompetitive property value. The forceCompetitive property
     * @return bool|null
    */
    public function getForceCompetitive(): ?bool {
        return $this->forceCompetitive;
    }

    /**
     * Gets the gameId property value. Game ID whose league rules should change.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the matchFormat property value. The matchFormat property
     * @return UpdateGameRulesRequestBody_matchFormat|null
    */
    public function getMatchFormat(): ?UpdateGameRulesRequestBody_matchFormat {
        return $this->matchFormat;
    }

    /**
     * Gets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
     * @return float|null
    */
    public function getMaxChallengesPerTeamPerSeason(): ?float {
        return $this->maxChallengesPerTeamPerSeason;
    }

    /**
     * Gets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
     * @return float|null
    */
    public function getMaxPendingChallengesPerOpponent(): ?float {
        return $this->maxPendingChallengesPerOpponent;
    }

    /**
     * Gets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
     * @return float|null
    */
    public function getMaxPendingChallengesTotal(): ?float {
        return $this->maxPendingChallengesTotal;
    }

    /**
     * Gets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
     * @return float|null
    */
    public function getMaxPointsMatchesPerPairPer24h(): ?float {
        return $this->maxPointsMatchesPerPairPer24h;
    }

    /**
     * Gets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
     * @return float|null
    */
    public function getMaxRosterChangesPerWeek(): ?float {
        return $this->maxRosterChangesPerWeek;
    }

    /**
     * Gets the maxRosterSize property value. The maxRosterSize property
     * @return float|null
    */
    public function getMaxRosterSize(): ?float {
        return $this->maxRosterSize;
    }

    /**
     * Gets the maxWagerAmount property value. The maxWagerAmount property
     * @return float|null
    */
    public function getMaxWagerAmount(): ?float {
        return $this->maxWagerAmount;
    }

    /**
     * Gets the minRosterSize property value. The minRosterSize property
     * @return float|null
    */
    public function getMinRosterSize(): ?float {
        return $this->minRosterSize;
    }

    /**
     * Gets the minWagerAmount property value. The minWagerAmount property
     * @return float|null
    */
    public function getMinWagerAmount(): ?float {
        return $this->minWagerAmount;
    }

    /**
     * Gets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
     * @return array<string>|null
    */
    public function getRosterChangeWindowDays(): ?array {
        return $this->rosterChangeWindowDays;
    }

    /**
     * Gets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
     * @return UpdateGameRulesRequestBody_rosterChangeWindowTime|null
    */
    public function getRosterChangeWindowTime(): ?UpdateGameRulesRequestBody_rosterChangeWindowTime {
        return $this->rosterChangeWindowTime;
    }

    /**
     * Gets the rosterLockEnabled property value. The rosterLockEnabled property
     * @return bool|null
    */
    public function getRosterLockEnabled(): ?bool {
        return $this->rosterLockEnabled;
    }

    /**
     * Gets the teamSize property value. The teamSize property
     * @return UpdateGameRulesRequestBody_teamSize|null
    */
    public function getTeamSize(): ?UpdateGameRulesRequestBody_teamSize {
        return $this->teamSize;
    }

    /**
     * Gets the timezone property value. The timezone property
     * @return string|null
    */
    public function getTimezone(): ?string {
        return $this->timezone;
    }

    /**
     * Gets the wagersAllowed property value. The wagersAllowed property
     * @return bool|null
    */
    public function getWagersAllowed(): ?bool {
        return $this->wagersAllowed;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('allowedDays', $this->getAllowedDays());
        $writer->writeCollectionOfPrimitiveValues('allowedMapIds', $this->getAllowedMapIds());
        $writer->writeCollectionOfPrimitiveValues('allowedPlaylistIds', $this->getAllowedPlaylistIds());
        $writer->writeObjectValue('allowedTimeRange', $this->getAllowedTimeRange());
        $writer->writeCollectionOfPrimitiveValues('blockedDays', $this->getBlockedDays());
        $writer->writeFloatValue('challengeCooldownMinutes', $this->getChallengeCooldownMinutes());
        $writer->writeBooleanValue('challengesEnabled', $this->getChallengesEnabled());
        $writer->writeBooleanValue('forceCompetitive', $this->getForceCompetitive());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeEnumValue('matchFormat', $this->getMatchFormat());
        $writer->writeFloatValue('maxChallengesPerTeamPerSeason', $this->getMaxChallengesPerTeamPerSeason());
        $writer->writeFloatValue('maxPendingChallengesPerOpponent', $this->getMaxPendingChallengesPerOpponent());
        $writer->writeFloatValue('maxPendingChallengesTotal', $this->getMaxPendingChallengesTotal());
        $writer->writeFloatValue('maxPointsMatchesPerPairPer24h', $this->getMaxPointsMatchesPerPairPer24h());
        $writer->writeFloatValue('maxRosterChangesPerWeek', $this->getMaxRosterChangesPerWeek());
        $writer->writeFloatValue('maxRosterSize', $this->getMaxRosterSize());
        $writer->writeFloatValue('maxWagerAmount', $this->getMaxWagerAmount());
        $writer->writeFloatValue('minRosterSize', $this->getMinRosterSize());
        $writer->writeFloatValue('minWagerAmount', $this->getMinWagerAmount());
        $writer->writeCollectionOfPrimitiveValues('rosterChangeWindowDays', $this->getRosterChangeWindowDays());
        $writer->writeObjectValue('rosterChangeWindowTime', $this->getRosterChangeWindowTime());
        $writer->writeBooleanValue('rosterLockEnabled', $this->getRosterLockEnabled());
        $writer->writeObjectValue('teamSize', $this->getTeamSize());
        $writer->writeStringValue('timezone', $this->getTimezone());
        $writer->writeBooleanValue('wagersAllowed', $this->getWagersAllowed());
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
     * Sets the allowedDays property value. The allowedDays property
     * @param array<string>|null $value Value to set for the allowedDays property.
    */
    public function setAllowedDays(?array $value): void {
        $this->allowedDays = $value;
    }

    /**
     * Sets the allowedMapIds property value. The allowedMapIds property
     * @param array<string>|null $value Value to set for the allowedMapIds property.
    */
    public function setAllowedMapIds(?array $value): void {
        $this->allowedMapIds = $value;
    }

    /**
     * Sets the allowedPlaylistIds property value. The allowedPlaylistIds property
     * @param array<string>|null $value Value to set for the allowedPlaylistIds property.
    */
    public function setAllowedPlaylistIds(?array $value): void {
        $this->allowedPlaylistIds = $value;
    }

    /**
     * Sets the allowedTimeRange property value. The allowedTimeRange property
     * @param UpdateGameRulesRequestBody_allowedTimeRange|null $value Value to set for the allowedTimeRange property.
    */
    public function setAllowedTimeRange(?UpdateGameRulesRequestBody_allowedTimeRange $value): void {
        $this->allowedTimeRange = $value;
    }

    /**
     * Sets the blockedDays property value. The blockedDays property
     * @param array<string>|null $value Value to set for the blockedDays property.
    */
    public function setBlockedDays(?array $value): void {
        $this->blockedDays = $value;
    }

    /**
     * Sets the challengeCooldownMinutes property value. The challengeCooldownMinutes property
     * @param float|null $value Value to set for the challengeCooldownMinutes property.
    */
    public function setChallengeCooldownMinutes(?float $value): void {
        $this->challengeCooldownMinutes = $value;
    }

    /**
     * Sets the challengesEnabled property value. The challengesEnabled property
     * @param bool|null $value Value to set for the challengesEnabled property.
    */
    public function setChallengesEnabled(?bool $value): void {
        $this->challengesEnabled = $value;
    }

    /**
     * Sets the forceCompetitive property value. The forceCompetitive property
     * @param bool|null $value Value to set for the forceCompetitive property.
    */
    public function setForceCompetitive(?bool $value): void {
        $this->forceCompetitive = $value;
    }

    /**
     * Sets the gameId property value. Game ID whose league rules should change.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the matchFormat property value. The matchFormat property
     * @param UpdateGameRulesRequestBody_matchFormat|null $value Value to set for the matchFormat property.
    */
    public function setMatchFormat(?UpdateGameRulesRequestBody_matchFormat $value): void {
        $this->matchFormat = $value;
    }

    /**
     * Sets the maxChallengesPerTeamPerSeason property value. The maxChallengesPerTeamPerSeason property
     * @param float|null $value Value to set for the maxChallengesPerTeamPerSeason property.
    */
    public function setMaxChallengesPerTeamPerSeason(?float $value): void {
        $this->maxChallengesPerTeamPerSeason = $value;
    }

    /**
     * Sets the maxPendingChallengesPerOpponent property value. The maxPendingChallengesPerOpponent property
     * @param float|null $value Value to set for the maxPendingChallengesPerOpponent property.
    */
    public function setMaxPendingChallengesPerOpponent(?float $value): void {
        $this->maxPendingChallengesPerOpponent = $value;
    }

    /**
     * Sets the maxPendingChallengesTotal property value. The maxPendingChallengesTotal property
     * @param float|null $value Value to set for the maxPendingChallengesTotal property.
    */
    public function setMaxPendingChallengesTotal(?float $value): void {
        $this->maxPendingChallengesTotal = $value;
    }

    /**
     * Sets the maxPointsMatchesPerPairPer24h property value. The maxPointsMatchesPerPairPer24h property
     * @param float|null $value Value to set for the maxPointsMatchesPerPairPer24h property.
    */
    public function setMaxPointsMatchesPerPairPer24h(?float $value): void {
        $this->maxPointsMatchesPerPairPer24h = $value;
    }

    /**
     * Sets the maxRosterChangesPerWeek property value. The maxRosterChangesPerWeek property
     * @param float|null $value Value to set for the maxRosterChangesPerWeek property.
    */
    public function setMaxRosterChangesPerWeek(?float $value): void {
        $this->maxRosterChangesPerWeek = $value;
    }

    /**
     * Sets the maxRosterSize property value. The maxRosterSize property
     * @param float|null $value Value to set for the maxRosterSize property.
    */
    public function setMaxRosterSize(?float $value): void {
        $this->maxRosterSize = $value;
    }

    /**
     * Sets the maxWagerAmount property value. The maxWagerAmount property
     * @param float|null $value Value to set for the maxWagerAmount property.
    */
    public function setMaxWagerAmount(?float $value): void {
        $this->maxWagerAmount = $value;
    }

    /**
     * Sets the minRosterSize property value. The minRosterSize property
     * @param float|null $value Value to set for the minRosterSize property.
    */
    public function setMinRosterSize(?float $value): void {
        $this->minRosterSize = $value;
    }

    /**
     * Sets the minWagerAmount property value. The minWagerAmount property
     * @param float|null $value Value to set for the minWagerAmount property.
    */
    public function setMinWagerAmount(?float $value): void {
        $this->minWagerAmount = $value;
    }

    /**
     * Sets the rosterChangeWindowDays property value. The rosterChangeWindowDays property
     * @param array<string>|null $value Value to set for the rosterChangeWindowDays property.
    */
    public function setRosterChangeWindowDays(?array $value): void {
        $this->rosterChangeWindowDays = $value;
    }

    /**
     * Sets the rosterChangeWindowTime property value. The rosterChangeWindowTime property
     * @param UpdateGameRulesRequestBody_rosterChangeWindowTime|null $value Value to set for the rosterChangeWindowTime property.
    */
    public function setRosterChangeWindowTime(?UpdateGameRulesRequestBody_rosterChangeWindowTime $value): void {
        $this->rosterChangeWindowTime = $value;
    }

    /**
     * Sets the rosterLockEnabled property value. The rosterLockEnabled property
     * @param bool|null $value Value to set for the rosterLockEnabled property.
    */
    public function setRosterLockEnabled(?bool $value): void {
        $this->rosterLockEnabled = $value;
    }

    /**
     * Sets the teamSize property value. The teamSize property
     * @param UpdateGameRulesRequestBody_teamSize|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?UpdateGameRulesRequestBody_teamSize $value): void {
        $this->teamSize = $value;
    }

    /**
     * Sets the timezone property value. The timezone property
     * @param string|null $value Value to set for the timezone property.
    */
    public function setTimezone(?string $value): void {
        $this->timezone = $value;
    }

    /**
     * Sets the wagersAllowed property value. The wagersAllowed property
     * @param bool|null $value Value to set for the wagersAllowed property.
    */
    public function setWagersAllowed(?bool $value): void {
        $this->wagersAllowed = $value;
    }

}

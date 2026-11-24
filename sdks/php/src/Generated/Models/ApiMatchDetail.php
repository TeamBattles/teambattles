<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
*/
class ApiMatchDetail implements Parsable 
{
    /**
     * @var ApiMatchTeam|null $acceptedTeam The acceptedTeam property
    */
    private ?ApiMatchTeam $acceptedTeam = null;
    
    /**
     * @var int|null $bestOf The bestOf property
    */
    private ?int $bestOf = null;
    
    /**
     * @var ApiMatchTeam|null $challengedTeam The challengedTeam property
    */
    private ?ApiMatchTeam $challengedTeam = null;
    
    /**
     * @var string|null $completedAt The completedAt property
    */
    private ?string $completedAt = null;
    
    /**
     * @var string|null $createdAt The createdAt property
    */
    private ?string $createdAt = null;
    
    /**
     * @var ApiMatchTeam|null $creatorTeam The creatorTeam property
    */
    private ?ApiMatchTeam $creatorTeam = null;
    
    /**
     * @var Game|null $game Game definition.
    */
    private ?Game $game = null;
    
    /**
     * @var string|null $gameMode The gameMode property
    */
    private ?string $gameMode = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var string|null $leagueId The leagueId property
    */
    private ?string $leagueId = null;
    
    /**
     * @var string|null $leagueSeasonId The leagueSeasonId property
    */
    private ?string $leagueSeasonId = null;
    
    /**
     * @var string|null $matchType The matchType property
    */
    private ?string $matchType = null;
    
    /**
     * @var string|null $platform The platform property
    */
    private ?string $platform = null;
    
    /**
     * @var string|null $publishStatus The publishStatus property
    */
    private ?string $publishStatus = null;
    
    /**
     * @var string|null $region The region property
    */
    private ?string $region = null;
    
    /**
     * @var string|null $scheduledAt The scheduledAt property
    */
    private ?string $scheduledAt = null;
    
    /**
     * @var array<string>|null $selectedMaps The selectedMaps property
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var array<string>|null $selectedObjectives The selectedObjectives property
    */
    private ?array $selectedObjectives = null;
    
    /**
     * @var string|null $startedAt The startedAt property
    */
    private ?string $startedAt = null;
    
    /**
     * @var MatchStatus|null $status Lifecycle status of a match.
    */
    private ?MatchStatus $status = null;
    
    /**
     * @var int|null $teamSize The teamSize property
    */
    private ?int $teamSize = null;
    
    /**
     * @var string|null $winnerTeamId The winnerTeamId property
    */
    private ?string $winnerTeamId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail {
        return new ApiMatchDetail();
    }

    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return ApiMatchTeam|null
    */
    public function getAcceptedTeam(): ?ApiMatchTeam {
        return $this->acceptedTeam;
    }

    /**
     * Gets the bestOf property value. The bestOf property
     * @return int|null
    */
    public function getBestOf(): ?int {
        return $this->bestOf;
    }

    /**
     * Gets the challengedTeam property value. The challengedTeam property
     * @return ApiMatchTeam|null
    */
    public function getChallengedTeam(): ?ApiMatchTeam {
        return $this->challengedTeam;
    }

    /**
     * Gets the completedAt property value. The completedAt property
     * @return string|null
    */
    public function getCompletedAt(): ?string {
        return $this->completedAt;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return string|null
    */
    public function getCreatedAt(): ?string {
        return $this->createdAt;
    }

    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return ApiMatchTeam|null
    */
    public function getCreatorTeam(): ?ApiMatchTeam {
        return $this->creatorTeam;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'acceptedTeam' => fn(ParseNode $n) => $o->setAcceptedTeam($n->getObjectValue([ApiMatchTeam::class, 'createFromDiscriminatorValue'])),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getIntegerValue()),
            'challengedTeam' => fn(ParseNode $n) => $o->setChallengedTeam($n->getObjectValue([ApiMatchTeam::class, 'createFromDiscriminatorValue'])),
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([ApiMatchTeam::class, 'createFromDiscriminatorValue'])),
            'game' => fn(ParseNode $n) => $o->setGame($n->getObjectValue([Game::class, 'createFromDiscriminatorValue'])),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getStringValue()),
            'leagueSeasonId' => fn(ParseNode $n) => $o->setLeagueSeasonId($n->getStringValue()),
            'matchType' => fn(ParseNode $n) => $o->setMatchType($n->getStringValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getStringValue()),
            'publishStatus' => fn(ParseNode $n) => $o->setPublishStatus($n->getStringValue()),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getStringValue()),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getStringValue()),
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
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getIntegerValue()),
            'winnerTeamId' => fn(ParseNode $n) => $o->setWinnerTeamId($n->getStringValue()),
        ];
    }

    /**
     * Gets the game property value. Game definition.
     * @return Game|null
    */
    public function getGame(): ?Game {
        return $this->game;
    }

    /**
     * Gets the gameMode property value. The gameMode property
     * @return string|null
    */
    public function getGameMode(): ?string {
        return $this->gameMode;
    }

    /**
     * Gets the id property value. The id property
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the leagueId property value. The leagueId property
     * @return string|null
    */
    public function getLeagueId(): ?string {
        return $this->leagueId;
    }

    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return string|null
    */
    public function getLeagueSeasonId(): ?string {
        return $this->leagueSeasonId;
    }

    /**
     * Gets the matchType property value. The matchType property
     * @return string|null
    */
    public function getMatchType(): ?string {
        return $this->matchType;
    }

    /**
     * Gets the platform property value. The platform property
     * @return string|null
    */
    public function getPlatform(): ?string {
        return $this->platform;
    }

    /**
     * Gets the publishStatus property value. The publishStatus property
     * @return string|null
    */
    public function getPublishStatus(): ?string {
        return $this->publishStatus;
    }

    /**
     * Gets the region property value. The region property
     * @return string|null
    */
    public function getRegion(): ?string {
        return $this->region;
    }

    /**
     * Gets the scheduledAt property value. The scheduledAt property
     * @return string|null
    */
    public function getScheduledAt(): ?string {
        return $this->scheduledAt;
    }

    /**
     * Gets the selectedMaps property value. The selectedMaps property
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
     * Gets the startedAt property value. The startedAt property
     * @return string|null
    */
    public function getStartedAt(): ?string {
        return $this->startedAt;
    }

    /**
     * Gets the status property value. Lifecycle status of a match.
     * @return MatchStatus|null
    */
    public function getStatus(): ?MatchStatus {
        return $this->status;
    }

    /**
     * Gets the teamSize property value. The teamSize property
     * @return int|null
    */
    public function getTeamSize(): ?int {
        return $this->teamSize;
    }

    /**
     * Gets the winnerTeamId property value. The winnerTeamId property
     * @return string|null
    */
    public function getWinnerTeamId(): ?string {
        return $this->winnerTeamId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('acceptedTeam', $this->getAcceptedTeam());
        $writer->writeIntegerValue('bestOf', $this->getBestOf());
        $writer->writeObjectValue('challengedTeam', $this->getChallengedTeam());
        $writer->writeStringValue('completedAt', $this->getCompletedAt());
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('creatorTeam', $this->getCreatorTeam());
        $writer->writeObjectValue('game', $this->getGame());
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('leagueId', $this->getLeagueId());
        $writer->writeStringValue('leagueSeasonId', $this->getLeagueSeasonId());
        $writer->writeStringValue('matchType', $this->getMatchType());
        $writer->writeStringValue('platform', $this->getPlatform());
        $writer->writeStringValue('publishStatus', $this->getPublishStatus());
        $writer->writeStringValue('region', $this->getRegion());
        $writer->writeStringValue('scheduledAt', $this->getScheduledAt());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeCollectionOfPrimitiveValues('selectedObjectives', $this->getSelectedObjectives());
        $writer->writeStringValue('startedAt', $this->getStartedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeIntegerValue('teamSize', $this->getTeamSize());
        $writer->writeStringValue('winnerTeamId', $this->getWinnerTeamId());
    }

    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param ApiMatchTeam|null $value Value to set for the acceptedTeam property.
    */
    public function setAcceptedTeam(?ApiMatchTeam $value): void {
        $this->acceptedTeam = $value;
    }

    /**
     * Sets the bestOf property value. The bestOf property
     * @param int|null $value Value to set for the bestOf property.
    */
    public function setBestOf(?int $value): void {
        $this->bestOf = $value;
    }

    /**
     * Sets the challengedTeam property value. The challengedTeam property
     * @param ApiMatchTeam|null $value Value to set for the challengedTeam property.
    */
    public function setChallengedTeam(?ApiMatchTeam $value): void {
        $this->challengedTeam = $value;
    }

    /**
     * Sets the completedAt property value. The completedAt property
     * @param string|null $value Value to set for the completedAt property.
    */
    public function setCompletedAt(?string $value): void {
        $this->completedAt = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param string|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?string $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param ApiMatchTeam|null $value Value to set for the creatorTeam property.
    */
    public function setCreatorTeam(?ApiMatchTeam $value): void {
        $this->creatorTeam = $value;
    }

    /**
     * Sets the game property value. Game definition.
     * @param Game|null $value Value to set for the game property.
    */
    public function setGame(?Game $value): void {
        $this->game = $value;
    }

    /**
     * Sets the gameMode property value. The gameMode property
     * @param string|null $value Value to set for the gameMode property.
    */
    public function setGameMode(?string $value): void {
        $this->gameMode = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the leagueId property value. The leagueId property
     * @param string|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?string $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param string|null $value Value to set for the leagueSeasonId property.
    */
    public function setLeagueSeasonId(?string $value): void {
        $this->leagueSeasonId = $value;
    }

    /**
     * Sets the matchType property value. The matchType property
     * @param string|null $value Value to set for the matchType property.
    */
    public function setMatchType(?string $value): void {
        $this->matchType = $value;
    }

    /**
     * Sets the platform property value. The platform property
     * @param string|null $value Value to set for the platform property.
    */
    public function setPlatform(?string $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the publishStatus property value. The publishStatus property
     * @param string|null $value Value to set for the publishStatus property.
    */
    public function setPublishStatus(?string $value): void {
        $this->publishStatus = $value;
    }

    /**
     * Sets the region property value. The region property
     * @param string|null $value Value to set for the region property.
    */
    public function setRegion(?string $value): void {
        $this->region = $value;
    }

    /**
     * Sets the scheduledAt property value. The scheduledAt property
     * @param string|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?string $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the selectedMaps property value. The selectedMaps property
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

    /**
     * Sets the startedAt property value. The startedAt property
     * @param string|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?string $value): void {
        $this->startedAt = $value;
    }

    /**
     * Sets the status property value. Lifecycle status of a match.
     * @param MatchStatus|null $value Value to set for the status property.
    */
    public function setStatus(?MatchStatus $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamSize property value. The teamSize property
     * @param int|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?int $value): void {
        $this->teamSize = $value;
    }

    /**
     * Sets the winnerTeamId property value. The winnerTeamId property
     * @param string|null $value Value to set for the winnerTeamId property.
    */
    public function setWinnerTeamId(?string $value): void {
        $this->winnerTeamId = $value;
    }

}

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
     * @var ApiMatchDetail_completedAt|null $completedAt The completedAt property
    */
    private ?ApiMatchDetail_completedAt $completedAt = null;
    
    /**
     * @var ApiMatchDetail_createdAt|null $createdAt The createdAt property
    */
    private ?ApiMatchDetail_createdAt $createdAt = null;
    
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
     * @var ApiMatchDetail_leagueId|null $leagueId The leagueId property
    */
    private ?ApiMatchDetail_leagueId $leagueId = null;
    
    /**
     * @var ApiMatchDetail_leagueSeasonId|null $leagueSeasonId The leagueSeasonId property
    */
    private ?ApiMatchDetail_leagueSeasonId $leagueSeasonId = null;
    
    /**
     * @var ApiMatchDetail_matchType|null $matchType The matchType property
    */
    private ?ApiMatchDetail_matchType $matchType = null;
    
    /**
     * @var ApiMatchDetail_platform|null $platform The platform property
    */
    private ?ApiMatchDetail_platform $platform = null;
    
    /**
     * @var string|null $publishStatus The publishStatus property
    */
    private ?string $publishStatus = null;
    
    /**
     * @var ApiMatchDetail_region|null $region The region property
    */
    private ?ApiMatchDetail_region $region = null;
    
    /**
     * @var ApiMatchDetail_scheduledAt|null $scheduledAt The scheduledAt property
    */
    private ?ApiMatchDetail_scheduledAt $scheduledAt = null;
    
    /**
     * @var array<string>|null $selectedMaps The selectedMaps property
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var array<string>|null $selectedObjectives The selectedObjectives property
    */
    private ?array $selectedObjectives = null;
    
    /**
     * @var ApiMatchDetail_startedAt|null $startedAt The startedAt property
    */
    private ?ApiMatchDetail_startedAt $startedAt = null;
    
    /**
     * @var MatchStatus|null $status Lifecycle status of a match.
    */
    private ?MatchStatus $status = null;
    
    /**
     * @var int|null $teamSize The teamSize property
    */
    private ?int $teamSize = null;
    
    /**
     * @var ApiMatchDetail_winnerTeamId|null $winnerTeamId The winnerTeamId property
    */
    private ?ApiMatchDetail_winnerTeamId $winnerTeamId = null;
    
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
     * @return ApiMatchDetail_completedAt|null
    */
    public function getCompletedAt(): ?ApiMatchDetail_completedAt {
        return $this->completedAt;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return ApiMatchDetail_createdAt|null
    */
    public function getCreatedAt(): ?ApiMatchDetail_createdAt {
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
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getObjectValue([ApiMatchDetail_completedAt::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiMatchDetail_createdAt::class, 'createFromDiscriminatorValue'])),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([ApiMatchTeam::class, 'createFromDiscriminatorValue'])),
            'game' => fn(ParseNode $n) => $o->setGame($n->getObjectValue([Game::class, 'createFromDiscriminatorValue'])),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getObjectValue([ApiMatchDetail_leagueId::class, 'createFromDiscriminatorValue'])),
            'leagueSeasonId' => fn(ParseNode $n) => $o->setLeagueSeasonId($n->getObjectValue([ApiMatchDetail_leagueSeasonId::class, 'createFromDiscriminatorValue'])),
            'matchType' => fn(ParseNode $n) => $o->setMatchType($n->getObjectValue([ApiMatchDetail_matchType::class, 'createFromDiscriminatorValue'])),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getObjectValue([ApiMatchDetail_platform::class, 'createFromDiscriminatorValue'])),
            'publishStatus' => fn(ParseNode $n) => $o->setPublishStatus($n->getStringValue()),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getObjectValue([ApiMatchDetail_region::class, 'createFromDiscriminatorValue'])),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getObjectValue([ApiMatchDetail_scheduledAt::class, 'createFromDiscriminatorValue'])),
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
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getObjectValue([ApiMatchDetail_startedAt::class, 'createFromDiscriminatorValue'])),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getIntegerValue()),
            'winnerTeamId' => fn(ParseNode $n) => $o->setWinnerTeamId($n->getObjectValue([ApiMatchDetail_winnerTeamId::class, 'createFromDiscriminatorValue'])),
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
     * @return ApiMatchDetail_leagueId|null
    */
    public function getLeagueId(): ?ApiMatchDetail_leagueId {
        return $this->leagueId;
    }

    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return ApiMatchDetail_leagueSeasonId|null
    */
    public function getLeagueSeasonId(): ?ApiMatchDetail_leagueSeasonId {
        return $this->leagueSeasonId;
    }

    /**
     * Gets the matchType property value. The matchType property
     * @return ApiMatchDetail_matchType|null
    */
    public function getMatchType(): ?ApiMatchDetail_matchType {
        return $this->matchType;
    }

    /**
     * Gets the platform property value. The platform property
     * @return ApiMatchDetail_platform|null
    */
    public function getPlatform(): ?ApiMatchDetail_platform {
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
     * @return ApiMatchDetail_region|null
    */
    public function getRegion(): ?ApiMatchDetail_region {
        return $this->region;
    }

    /**
     * Gets the scheduledAt property value. The scheduledAt property
     * @return ApiMatchDetail_scheduledAt|null
    */
    public function getScheduledAt(): ?ApiMatchDetail_scheduledAt {
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
     * @return ApiMatchDetail_startedAt|null
    */
    public function getStartedAt(): ?ApiMatchDetail_startedAt {
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
     * @return ApiMatchDetail_winnerTeamId|null
    */
    public function getWinnerTeamId(): ?ApiMatchDetail_winnerTeamId {
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
        $writer->writeObjectValue('completedAt', $this->getCompletedAt());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('creatorTeam', $this->getCreatorTeam());
        $writer->writeObjectValue('game', $this->getGame());
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('leagueId', $this->getLeagueId());
        $writer->writeObjectValue('leagueSeasonId', $this->getLeagueSeasonId());
        $writer->writeObjectValue('matchType', $this->getMatchType());
        $writer->writeObjectValue('platform', $this->getPlatform());
        $writer->writeStringValue('publishStatus', $this->getPublishStatus());
        $writer->writeObjectValue('region', $this->getRegion());
        $writer->writeObjectValue('scheduledAt', $this->getScheduledAt());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeCollectionOfPrimitiveValues('selectedObjectives', $this->getSelectedObjectives());
        $writer->writeObjectValue('startedAt', $this->getStartedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeIntegerValue('teamSize', $this->getTeamSize());
        $writer->writeObjectValue('winnerTeamId', $this->getWinnerTeamId());
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
     * @param ApiMatchDetail_completedAt|null $value Value to set for the completedAt property.
    */
    public function setCompletedAt(?ApiMatchDetail_completedAt $value): void {
        $this->completedAt = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param ApiMatchDetail_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ApiMatchDetail_createdAt $value): void {
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
     * @param ApiMatchDetail_leagueId|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?ApiMatchDetail_leagueId $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param ApiMatchDetail_leagueSeasonId|null $value Value to set for the leagueSeasonId property.
    */
    public function setLeagueSeasonId(?ApiMatchDetail_leagueSeasonId $value): void {
        $this->leagueSeasonId = $value;
    }

    /**
     * Sets the matchType property value. The matchType property
     * @param ApiMatchDetail_matchType|null $value Value to set for the matchType property.
    */
    public function setMatchType(?ApiMatchDetail_matchType $value): void {
        $this->matchType = $value;
    }

    /**
     * Sets the platform property value. The platform property
     * @param ApiMatchDetail_platform|null $value Value to set for the platform property.
    */
    public function setPlatform(?ApiMatchDetail_platform $value): void {
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
     * @param ApiMatchDetail_region|null $value Value to set for the region property.
    */
    public function setRegion(?ApiMatchDetail_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the scheduledAt property value. The scheduledAt property
     * @param ApiMatchDetail_scheduledAt|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?ApiMatchDetail_scheduledAt $value): void {
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
     * @param ApiMatchDetail_startedAt|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?ApiMatchDetail_startedAt $value): void {
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
     * @param ApiMatchDetail_winnerTeamId|null $value Value to set for the winnerTeamId property.
    */
    public function setWinnerTeamId(?ApiMatchDetail_winnerTeamId $value): void {
        $this->winnerTeamId = $value;
    }

}

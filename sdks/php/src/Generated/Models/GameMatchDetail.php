<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Detailed match payload returned inside the game-developer match-detail response.
*/
class GameMatchDetail implements Parsable 
{
    /**
     * @var GameDetailTeam|null $acceptedTeam The acceptedTeam property
    */
    private ?GameDetailTeam $acceptedTeam = null;
    
    /**
     * @var GameMatchDetail_acceptedTeamScore|null $acceptedTeamScore The acceptedTeamScore property
    */
    private ?GameMatchDetail_acceptedTeamScore $acceptedTeamScore = null;
    
    /**
     * @var int|null $bestOf Number of maps in the series (1, 3, 5, or 7).
    */
    private ?int $bestOf = null;
    
    /**
     * @var string|null $completedAt Completion time (ISO 8601).
    */
    private ?string $completedAt = null;
    
    /**
     * @var string|null $createdAt Creation time (ISO 8601).
    */
    private ?string $createdAt = null;
    
    /**
     * @var GameDetailTeam|null $creatorTeam The creatorTeam property
    */
    private ?GameDetailTeam $creatorTeam = null;
    
    /**
     * @var GameMatchDetail_creatorTeamScore|null $creatorTeamScore The creatorTeamScore property
    */
    private ?GameMatchDetail_creatorTeamScore $creatorTeamScore = null;
    
    /**
     * @var string|null $gameId Game ID the match belongs to.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $gameMode Game mode identifier (from the match's gameModeId).
    */
    private ?string $gameMode = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var string|null $leagueId League this match belongs to, if any (SP-7 league wave).
    */
    private ?string $leagueId = null;
    
    /**
     * @var string|null $leagueSeasonId League season this match belongs to, if any.
    */
    private ?string $leagueSeasonId = null;
    
    /**
     * @var string|null $loserTeamId Losing team ID once the match completes.
    */
    private ?string $loserTeamId = null;
    
    /**
     * @var string|null $scheduledAt Scheduled start time (ISO 8601).
    */
    private ?string $scheduledAt = null;
    
    /**
     * @var string|null $startedAt Actual start time (ISO 8601).
    */
    private ?string $startedAt = null;
    
    /**
     * @var MatchStatus|null $status Lifecycle status of a match.
    */
    private ?MatchStatus $status = null;
    
    /**
     * @var string|null $winnerTeamId Winning team ID once the match completes.
    */
    private ?string $winnerTeamId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetail
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetail {
        return new GameMatchDetail();
    }

    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return GameDetailTeam|null
    */
    public function getAcceptedTeam(): ?GameDetailTeam {
        return $this->acceptedTeam;
    }

    /**
     * Gets the acceptedTeamScore property value. The acceptedTeamScore property
     * @return GameMatchDetail_acceptedTeamScore|null
    */
    public function getAcceptedTeamScore(): ?GameMatchDetail_acceptedTeamScore {
        return $this->acceptedTeamScore;
    }

    /**
     * Gets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @return int|null
    */
    public function getBestOf(): ?int {
        return $this->bestOf;
    }

    /**
     * Gets the completedAt property value. Completion time (ISO 8601).
     * @return string|null
    */
    public function getCompletedAt(): ?string {
        return $this->completedAt;
    }

    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return string|null
    */
    public function getCreatedAt(): ?string {
        return $this->createdAt;
    }

    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return GameDetailTeam|null
    */
    public function getCreatorTeam(): ?GameDetailTeam {
        return $this->creatorTeam;
    }

    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
     * @return GameMatchDetail_creatorTeamScore|null
    */
    public function getCreatorTeamScore(): ?GameMatchDetail_creatorTeamScore {
        return $this->creatorTeamScore;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'acceptedTeam' => fn(ParseNode $n) => $o->setAcceptedTeam($n->getObjectValue([GameDetailTeam::class, 'createFromDiscriminatorValue'])),
            'acceptedTeamScore' => fn(ParseNode $n) => $o->setAcceptedTeamScore($n->getObjectValue([GameMatchDetail_acceptedTeamScore::class, 'createFromDiscriminatorValue'])),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getIntegerValue()),
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([GameDetailTeam::class, 'createFromDiscriminatorValue'])),
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getObjectValue([GameMatchDetail_creatorTeamScore::class, 'createFromDiscriminatorValue'])),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getStringValue()),
            'leagueSeasonId' => fn(ParseNode $n) => $o->setLeagueSeasonId($n->getStringValue()),
            'loserTeamId' => fn(ParseNode $n) => $o->setLoserTeamId($n->getStringValue()),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getStringValue()),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
            'winnerTeamId' => fn(ParseNode $n) => $o->setWinnerTeamId($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game ID the match belongs to.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the gameMode property value. Game mode identifier (from the match's gameModeId).
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
     * Gets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
     * @return string|null
    */
    public function getLeagueId(): ?string {
        return $this->leagueId;
    }

    /**
     * Gets the leagueSeasonId property value. League season this match belongs to, if any.
     * @return string|null
    */
    public function getLeagueSeasonId(): ?string {
        return $this->leagueSeasonId;
    }

    /**
     * Gets the loserTeamId property value. Losing team ID once the match completes.
     * @return string|null
    */
    public function getLoserTeamId(): ?string {
        return $this->loserTeamId;
    }

    /**
     * Gets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @return string|null
    */
    public function getScheduledAt(): ?string {
        return $this->scheduledAt;
    }

    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
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
     * Gets the winnerTeamId property value. Winning team ID once the match completes.
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
        $writer->writeObjectValue('acceptedTeamScore', $this->getAcceptedTeamScore());
        $writer->writeIntegerValue('bestOf', $this->getBestOf());
        $writer->writeStringValue('completedAt', $this->getCompletedAt());
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('creatorTeam', $this->getCreatorTeam());
        $writer->writeObjectValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('leagueId', $this->getLeagueId());
        $writer->writeStringValue('leagueSeasonId', $this->getLeagueSeasonId());
        $writer->writeStringValue('loserTeamId', $this->getLoserTeamId());
        $writer->writeStringValue('scheduledAt', $this->getScheduledAt());
        $writer->writeStringValue('startedAt', $this->getStartedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('winnerTeamId', $this->getWinnerTeamId());
    }

    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param GameDetailTeam|null $value Value to set for the acceptedTeam property.
    */
    public function setAcceptedTeam(?GameDetailTeam $value): void {
        $this->acceptedTeam = $value;
    }

    /**
     * Sets the acceptedTeamScore property value. The acceptedTeamScore property
     * @param GameMatchDetail_acceptedTeamScore|null $value Value to set for the acceptedTeamScore property.
    */
    public function setAcceptedTeamScore(?GameMatchDetail_acceptedTeamScore $value): void {
        $this->acceptedTeamScore = $value;
    }

    /**
     * Sets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @param int|null $value Value to set for the bestOf property.
    */
    public function setBestOf(?int $value): void {
        $this->bestOf = $value;
    }

    /**
     * Sets the completedAt property value. Completion time (ISO 8601).
     * @param string|null $value Value to set for the completedAt property.
    */
    public function setCompletedAt(?string $value): void {
        $this->completedAt = $value;
    }

    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param string|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?string $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param GameDetailTeam|null $value Value to set for the creatorTeam property.
    */
    public function setCreatorTeam(?GameDetailTeam $value): void {
        $this->creatorTeam = $value;
    }

    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param GameMatchDetail_creatorTeamScore|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?GameMatchDetail_creatorTeamScore $value): void {
        $this->creatorTeamScore = $value;
    }

    /**
     * Sets the gameId property value. Game ID the match belongs to.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the gameMode property value. Game mode identifier (from the match's gameModeId).
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
     * Sets the leagueId property value. League this match belongs to, if any (SP-7 league wave).
     * @param string|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?string $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the leagueSeasonId property value. League season this match belongs to, if any.
     * @param string|null $value Value to set for the leagueSeasonId property.
    */
    public function setLeagueSeasonId(?string $value): void {
        $this->leagueSeasonId = $value;
    }

    /**
     * Sets the loserTeamId property value. Losing team ID once the match completes.
     * @param string|null $value Value to set for the loserTeamId property.
    */
    public function setLoserTeamId(?string $value): void {
        $this->loserTeamId = $value;
    }

    /**
     * Sets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @param string|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?string $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
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
     * Sets the winnerTeamId property value. Winning team ID once the match completes.
     * @param string|null $value Value to set for the winnerTeamId property.
    */
    public function setWinnerTeamId(?string $value): void {
        $this->winnerTeamId = $value;
    }

}

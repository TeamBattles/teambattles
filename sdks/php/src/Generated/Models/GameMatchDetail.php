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
     * @var GameMatchDetail_completedAt|null $completedAt Completion time (ISO 8601).
    */
    private ?GameMatchDetail_completedAt $completedAt = null;
    
    /**
     * @var GameMatchDetail_createdAt|null $createdAt Creation time (ISO 8601).
    */
    private ?GameMatchDetail_createdAt $createdAt = null;
    
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
     * @var GameMatchDetail_leagueId|null $leagueId League this match belongs to, if any (SP-7 league wave).
    */
    private ?GameMatchDetail_leagueId $leagueId = null;
    
    /**
     * @var GameMatchDetail_leagueSeasonId|null $leagueSeasonId League season this match belongs to, if any.
    */
    private ?GameMatchDetail_leagueSeasonId $leagueSeasonId = null;
    
    /**
     * @var GameMatchDetail_loserTeamId|null $loserTeamId Losing team ID once the match completes.
    */
    private ?GameMatchDetail_loserTeamId $loserTeamId = null;
    
    /**
     * @var GameMatchDetail_scheduledAt|null $scheduledAt Scheduled start time (ISO 8601).
    */
    private ?GameMatchDetail_scheduledAt $scheduledAt = null;
    
    /**
     * @var GameMatchDetail_startedAt|null $startedAt Actual start time (ISO 8601).
    */
    private ?GameMatchDetail_startedAt $startedAt = null;
    
    /**
     * @var MatchStatus|null $status Lifecycle status of a match.
    */
    private ?MatchStatus $status = null;
    
    /**
     * @var GameMatchDetail_winnerTeamId|null $winnerTeamId Winning team ID once the match completes.
    */
    private ?GameMatchDetail_winnerTeamId $winnerTeamId = null;
    
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
     * @return GameMatchDetail_completedAt|null
    */
    public function getCompletedAt(): ?GameMatchDetail_completedAt {
        return $this->completedAt;
    }

    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return GameMatchDetail_createdAt|null
    */
    public function getCreatedAt(): ?GameMatchDetail_createdAt {
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
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getObjectValue([GameMatchDetail_completedAt::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([GameMatchDetail_createdAt::class, 'createFromDiscriminatorValue'])),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([GameDetailTeam::class, 'createFromDiscriminatorValue'])),
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getObjectValue([GameMatchDetail_creatorTeamScore::class, 'createFromDiscriminatorValue'])),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'leagueId' => fn(ParseNode $n) => $o->setLeagueId($n->getObjectValue([GameMatchDetail_leagueId::class, 'createFromDiscriminatorValue'])),
            'leagueSeasonId' => fn(ParseNode $n) => $o->setLeagueSeasonId($n->getObjectValue([GameMatchDetail_leagueSeasonId::class, 'createFromDiscriminatorValue'])),
            'loserTeamId' => fn(ParseNode $n) => $o->setLoserTeamId($n->getObjectValue([GameMatchDetail_loserTeamId::class, 'createFromDiscriminatorValue'])),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getObjectValue([GameMatchDetail_scheduledAt::class, 'createFromDiscriminatorValue'])),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getObjectValue([GameMatchDetail_startedAt::class, 'createFromDiscriminatorValue'])),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
            'winnerTeamId' => fn(ParseNode $n) => $o->setWinnerTeamId($n->getObjectValue([GameMatchDetail_winnerTeamId::class, 'createFromDiscriminatorValue'])),
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
     * @return GameMatchDetail_leagueId|null
    */
    public function getLeagueId(): ?GameMatchDetail_leagueId {
        return $this->leagueId;
    }

    /**
     * Gets the leagueSeasonId property value. League season this match belongs to, if any.
     * @return GameMatchDetail_leagueSeasonId|null
    */
    public function getLeagueSeasonId(): ?GameMatchDetail_leagueSeasonId {
        return $this->leagueSeasonId;
    }

    /**
     * Gets the loserTeamId property value. Losing team ID once the match completes.
     * @return GameMatchDetail_loserTeamId|null
    */
    public function getLoserTeamId(): ?GameMatchDetail_loserTeamId {
        return $this->loserTeamId;
    }

    /**
     * Gets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @return GameMatchDetail_scheduledAt|null
    */
    public function getScheduledAt(): ?GameMatchDetail_scheduledAt {
        return $this->scheduledAt;
    }

    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
     * @return GameMatchDetail_startedAt|null
    */
    public function getStartedAt(): ?GameMatchDetail_startedAt {
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
     * @return GameMatchDetail_winnerTeamId|null
    */
    public function getWinnerTeamId(): ?GameMatchDetail_winnerTeamId {
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
        $writer->writeObjectValue('completedAt', $this->getCompletedAt());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('creatorTeam', $this->getCreatorTeam());
        $writer->writeObjectValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('leagueId', $this->getLeagueId());
        $writer->writeObjectValue('leagueSeasonId', $this->getLeagueSeasonId());
        $writer->writeObjectValue('loserTeamId', $this->getLoserTeamId());
        $writer->writeObjectValue('scheduledAt', $this->getScheduledAt());
        $writer->writeObjectValue('startedAt', $this->getStartedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeObjectValue('winnerTeamId', $this->getWinnerTeamId());
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
     * @param GameMatchDetail_completedAt|null $value Value to set for the completedAt property.
    */
    public function setCompletedAt(?GameMatchDetail_completedAt $value): void {
        $this->completedAt = $value;
    }

    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param GameMatchDetail_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?GameMatchDetail_createdAt $value): void {
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
     * @param GameMatchDetail_leagueId|null $value Value to set for the leagueId property.
    */
    public function setLeagueId(?GameMatchDetail_leagueId $value): void {
        $this->leagueId = $value;
    }

    /**
     * Sets the leagueSeasonId property value. League season this match belongs to, if any.
     * @param GameMatchDetail_leagueSeasonId|null $value Value to set for the leagueSeasonId property.
    */
    public function setLeagueSeasonId(?GameMatchDetail_leagueSeasonId $value): void {
        $this->leagueSeasonId = $value;
    }

    /**
     * Sets the loserTeamId property value. Losing team ID once the match completes.
     * @param GameMatchDetail_loserTeamId|null $value Value to set for the loserTeamId property.
    */
    public function setLoserTeamId(?GameMatchDetail_loserTeamId $value): void {
        $this->loserTeamId = $value;
    }

    /**
     * Sets the scheduledAt property value. Scheduled start time (ISO 8601).
     * @param GameMatchDetail_scheduledAt|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?GameMatchDetail_scheduledAt $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
     * @param GameMatchDetail_startedAt|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?GameMatchDetail_startedAt $value): void {
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
     * @param GameMatchDetail_winnerTeamId|null $value Value to set for the winnerTeamId property.
    */
    public function setWinnerTeamId(?GameMatchDetail_winnerTeamId $value): void {
        $this->winnerTeamId = $value;
    }

}

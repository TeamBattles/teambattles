<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Match as returned by the game-developer endpoints (includes scores, omits the game object).
*/
class GameMatch implements Parsable 
{
    /**
     * @var Team|null $acceptedTeam The acceptedTeam property
    */
    private ?Team $acceptedTeam = null;
    
    /**
     * @var GameMatch_acceptedTeamScore|null $acceptedTeamScore The acceptedTeamScore property
    */
    private ?GameMatch_acceptedTeamScore $acceptedTeamScore = null;
    
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
     * @var Team|null $creatorTeam The creatorTeam property
    */
    private ?Team $creatorTeam = null;
    
    /**
     * @var GameMatch_creatorTeamScore|null $creatorTeamScore The creatorTeamScore property
    */
    private ?GameMatch_creatorTeamScore $creatorTeamScore = null;
    
    /**
     * @var string|null $gameMode Game mode identifier (from the match's gameModeId).
    */
    private ?string $gameMode = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
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
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatch
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatch {
        return new GameMatch();
    }

    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return Team|null
    */
    public function getAcceptedTeam(): ?Team {
        return $this->acceptedTeam;
    }

    /**
     * Gets the acceptedTeamScore property value. The acceptedTeamScore property
     * @return GameMatch_acceptedTeamScore|null
    */
    public function getAcceptedTeamScore(): ?GameMatch_acceptedTeamScore {
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
     * @return Team|null
    */
    public function getCreatorTeam(): ?Team {
        return $this->creatorTeam;
    }

    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
     * @return GameMatch_creatorTeamScore|null
    */
    public function getCreatorTeamScore(): ?GameMatch_creatorTeamScore {
        return $this->creatorTeamScore;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'acceptedTeam' => fn(ParseNode $n) => $o->setAcceptedTeam($n->getObjectValue([Team::class, 'createFromDiscriminatorValue'])),
            'acceptedTeamScore' => fn(ParseNode $n) => $o->setAcceptedTeamScore($n->getObjectValue([GameMatch_acceptedTeamScore::class, 'createFromDiscriminatorValue'])),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getIntegerValue()),
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([Team::class, 'createFromDiscriminatorValue'])),
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getObjectValue([GameMatch_creatorTeamScore::class, 'createFromDiscriminatorValue'])),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getStringValue()),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
        ];
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
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('scheduledAt', $this->getScheduledAt());
        $writer->writeStringValue('startedAt', $this->getStartedAt());
        $writer->writeEnumValue('status', $this->getStatus());
    }

    /**
     * Sets the acceptedTeam property value. The acceptedTeam property
     * @param Team|null $value Value to set for the acceptedTeam property.
    */
    public function setAcceptedTeam(?Team $value): void {
        $this->acceptedTeam = $value;
    }

    /**
     * Sets the acceptedTeamScore property value. The acceptedTeamScore property
     * @param GameMatch_acceptedTeamScore|null $value Value to set for the acceptedTeamScore property.
    */
    public function setAcceptedTeamScore(?GameMatch_acceptedTeamScore $value): void {
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
     * @param Team|null $value Value to set for the creatorTeam property.
    */
    public function setCreatorTeam(?Team $value): void {
        $this->creatorTeam = $value;
    }

    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param GameMatch_creatorTeamScore|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?GameMatch_creatorTeamScore $value): void {
        $this->creatorTeamScore = $value;
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

}

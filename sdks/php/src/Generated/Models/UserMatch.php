<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Match as returned by the user/team/org match-listing endpoints.
*/
class UserMatch implements Parsable 
{
    /**
     * @var Team|null $acceptedTeam The acceptedTeam property
    */
    private ?Team $acceptedTeam = null;
    
    /**
     * @var int|null $bestOf Number of maps in the series (1, 3, 5, or 7).
    */
    private ?int $bestOf = null;
    
    /**
     * @var UserMatch_completedAt|null $completedAt Completion time (ISO 8601).
    */
    private ?UserMatch_completedAt $completedAt = null;
    
    /**
     * @var Team|null $creatorTeam The creatorTeam property
    */
    private ?Team $creatorTeam = null;
    
    /**
     * @var Game|null $game Game definition.
    */
    private ?Game $game = null;
    
    /**
     * @var string|null $gameMode Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
    */
    private ?string $gameMode = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var UserMatch_scheduledAt|null $scheduledAt Scheduled start time (ISO 8601).
    */
    private ?UserMatch_scheduledAt $scheduledAt = null;
    
    /**
     * @var UserMatch_startedAt|null $startedAt Actual start time (ISO 8601).
    */
    private ?UserMatch_startedAt $startedAt = null;
    
    /**
     * @var MatchStatus|null $status Lifecycle status of a match.
    */
    private ?MatchStatus $status = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UserMatch
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UserMatch {
        return new UserMatch();
    }

    /**
     * Gets the acceptedTeam property value. The acceptedTeam property
     * @return Team|null
    */
    public function getAcceptedTeam(): ?Team {
        return $this->acceptedTeam;
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
     * @return UserMatch_completedAt|null
    */
    public function getCompletedAt(): ?UserMatch_completedAt {
        return $this->completedAt;
    }

    /**
     * Gets the creatorTeam property value. The creatorTeam property
     * @return Team|null
    */
    public function getCreatorTeam(): ?Team {
        return $this->creatorTeam;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'acceptedTeam' => fn(ParseNode $n) => $o->setAcceptedTeam($n->getObjectValue([Team::class, 'createFromDiscriminatorValue'])),
            'bestOf' => fn(ParseNode $n) => $o->setBestOf($n->getIntegerValue()),
            'completedAt' => fn(ParseNode $n) => $o->setCompletedAt($n->getObjectValue([UserMatch_completedAt::class, 'createFromDiscriminatorValue'])),
            'creatorTeam' => fn(ParseNode $n) => $o->setCreatorTeam($n->getObjectValue([Team::class, 'createFromDiscriminatorValue'])),
            'game' => fn(ParseNode $n) => $o->setGame($n->getObjectValue([Game::class, 'createFromDiscriminatorValue'])),
            'gameMode' => fn(ParseNode $n) => $o->setGameMode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'scheduledAt' => fn(ParseNode $n) => $o->setScheduledAt($n->getObjectValue([UserMatch_scheduledAt::class, 'createFromDiscriminatorValue'])),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getObjectValue([UserMatch_startedAt::class, 'createFromDiscriminatorValue'])),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(MatchStatus::class)),
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
     * Gets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
     * @return UserMatch_scheduledAt|null
    */
    public function getScheduledAt(): ?UserMatch_scheduledAt {
        return $this->scheduledAt;
    }

    /**
     * Gets the startedAt property value. Actual start time (ISO 8601).
     * @return UserMatch_startedAt|null
    */
    public function getStartedAt(): ?UserMatch_startedAt {
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
        $writer->writeIntegerValue('bestOf', $this->getBestOf());
        $writer->writeObjectValue('completedAt', $this->getCompletedAt());
        $writer->writeObjectValue('creatorTeam', $this->getCreatorTeam());
        $writer->writeObjectValue('game', $this->getGame());
        $writer->writeStringValue('gameMode', $this->getGameMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('scheduledAt', $this->getScheduledAt());
        $writer->writeObjectValue('startedAt', $this->getStartedAt());
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
     * Sets the bestOf property value. Number of maps in the series (1, 3, 5, or 7).
     * @param int|null $value Value to set for the bestOf property.
    */
    public function setBestOf(?int $value): void {
        $this->bestOf = $value;
    }

    /**
     * Sets the completedAt property value. Completion time (ISO 8601).
     * @param UserMatch_completedAt|null $value Value to set for the completedAt property.
    */
    public function setCompletedAt(?UserMatch_completedAt $value): void {
        $this->completedAt = $value;
    }

    /**
     * Sets the creatorTeam property value. The creatorTeam property
     * @param Team|null $value Value to set for the creatorTeam property.
    */
    public function setCreatorTeam(?Team $value): void {
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
     * Sets the gameMode property value. Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
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
     * @param UserMatch_scheduledAt|null $value Value to set for the scheduledAt property.
    */
    public function setScheduledAt(?UserMatch_scheduledAt $value): void {
        $this->scheduledAt = $value;
    }

    /**
     * Sets the startedAt property value. Actual start time (ISO 8601).
     * @param UserMatch_startedAt|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?UserMatch_startedAt $value): void {
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

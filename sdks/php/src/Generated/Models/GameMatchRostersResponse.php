<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Team rosters for a match, grouped by creator and accepted team.
*/
class GameMatchRostersResponse implements Parsable 
{
    /**
     * @var array<GameRosterPlayer>|null $acceptedRoster Players on the accepted team (empty when unaccepted).
    */
    private ?array $acceptedRoster = null;
    
    /**
     * @var GameMatchRostersResponse_acceptedTeamId|null $acceptedTeamId ID of the team that accepted the match, or null if unaccepted.
    */
    private ?GameMatchRostersResponse_acceptedTeamId $acceptedTeamId = null;
    
    /**
     * @var array<GameRosterPlayer>|null $creatorRoster Players on the creator team.
    */
    private ?array $creatorRoster = null;
    
    /**
     * @var string|null $creatorTeamId ID of the team that created the match.
    */
    private ?string $creatorTeamId = null;
    
    /**
     * @var string|null $timestamp Server response time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchRostersResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchRostersResponse {
        return new GameMatchRostersResponse();
    }

    /**
     * Gets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
     * @return array<GameRosterPlayer>|null
    */
    public function getAcceptedRoster(): ?array {
        return $this->acceptedRoster;
    }

    /**
     * Gets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
     * @return GameMatchRostersResponse_acceptedTeamId|null
    */
    public function getAcceptedTeamId(): ?GameMatchRostersResponse_acceptedTeamId {
        return $this->acceptedTeamId;
    }

    /**
     * Gets the creatorRoster property value. Players on the creator team.
     * @return array<GameRosterPlayer>|null
    */
    public function getCreatorRoster(): ?array {
        return $this->creatorRoster;
    }

    /**
     * Gets the creatorTeamId property value. ID of the team that created the match.
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
            'acceptedRoster' => fn(ParseNode $n) => $o->setAcceptedRoster($n->getCollectionOfObjectValues([GameRosterPlayer::class, 'createFromDiscriminatorValue'])),
            'acceptedTeamId' => fn(ParseNode $n) => $o->setAcceptedTeamId($n->getObjectValue([GameMatchRostersResponse_acceptedTeamId::class, 'createFromDiscriminatorValue'])),
            'creatorRoster' => fn(ParseNode $n) => $o->setCreatorRoster($n->getCollectionOfObjectValues([GameRosterPlayer::class, 'createFromDiscriminatorValue'])),
            'creatorTeamId' => fn(ParseNode $n) => $o->setCreatorTeamId($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('acceptedRoster', $this->getAcceptedRoster());
        $writer->writeObjectValue('acceptedTeamId', $this->getAcceptedTeamId());
        $writer->writeCollectionOfObjectValues('creatorRoster', $this->getCreatorRoster());
        $writer->writeStringValue('creatorTeamId', $this->getCreatorTeamId());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the acceptedRoster property value. Players on the accepted team (empty when unaccepted).
     * @param array<GameRosterPlayer>|null $value Value to set for the acceptedRoster property.
    */
    public function setAcceptedRoster(?array $value): void {
        $this->acceptedRoster = $value;
    }

    /**
     * Sets the acceptedTeamId property value. ID of the team that accepted the match, or null if unaccepted.
     * @param GameMatchRostersResponse_acceptedTeamId|null $value Value to set for the acceptedTeamId property.
    */
    public function setAcceptedTeamId(?GameMatchRostersResponse_acceptedTeamId $value): void {
        $this->acceptedTeamId = $value;
    }

    /**
     * Sets the creatorRoster property value. Players on the creator team.
     * @param array<GameRosterPlayer>|null $value Value to set for the creatorRoster property.
    */
    public function setCreatorRoster(?array $value): void {
        $this->creatorRoster = $value;
    }

    /**
     * Sets the creatorTeamId property value. ID of the team that created the match.
     * @param string|null $value Value to set for the creatorTeamId property.
    */
    public function setCreatorTeamId(?string $value): void {
        $this->creatorTeamId = $value;
    }

    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

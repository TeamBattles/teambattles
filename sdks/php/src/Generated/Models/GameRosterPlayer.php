<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A single player entry on a match roster.
*/
class GameRosterPlayer implements Parsable 
{
    /**
     * @var bool|null $isCheckedIn Whether the player has checked in for the match.
    */
    private ?bool $isCheckedIn = null;
    
    /**
     * @var string|null $name Player's display name, or null if unset.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $teamId ID of the team the player belongs to.
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $userId Player's user ID.
    */
    private ?string $userId = null;
    
    /**
     * @var string|null $username Player's username, or null if unset.
    */
    private ?string $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameRosterPlayer
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameRosterPlayer {
        return new GameRosterPlayer();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'isCheckedIn' => fn(ParseNode $n) => $o->setIsCheckedIn($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
        ];
    }

    /**
     * Gets the isCheckedIn property value. Whether the player has checked in for the match.
     * @return bool|null
    */
    public function getIsCheckedIn(): ?bool {
        return $this->isCheckedIn;
    }

    /**
     * Gets the name property value. Player's display name, or null if unset.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the teamId property value. ID of the team the player belongs to.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the userId property value. Player's user ID.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Gets the username property value. Player's username, or null if unset.
     * @return string|null
    */
    public function getUsername(): ?string {
        return $this->username;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('isCheckedIn', $this->getIsCheckedIn());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('userId', $this->getUserId());
        $writer->writeStringValue('username', $this->getUsername());
    }

    /**
     * Sets the isCheckedIn property value. Whether the player has checked in for the match.
     * @param bool|null $value Value to set for the isCheckedIn property.
    */
    public function setIsCheckedIn(?bool $value): void {
        $this->isCheckedIn = $value;
    }

    /**
     * Sets the name property value. Player's display name, or null if unset.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the teamId property value. ID of the team the player belongs to.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the userId property value. Player's user ID.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

    /**
     * Sets the username property value. Player's username, or null if unset.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

}

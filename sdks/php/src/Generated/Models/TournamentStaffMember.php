<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One tournament staff assignment.
*/
class TournamentStaffMember implements Parsable 
{
    /**
     * @var TournamentStaffMember_avatarUrl|null $avatarUrl Avatar image URL.
    */
    private ?TournamentStaffMember_avatarUrl $avatarUrl = null;
    
    /**
     * @var float|null $createdAt Time the row was added (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $id Staff row ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Display name.
    */
    private ?string $name = null;
    
    /**
     * @var TournamentStaffRole|null $role Tournament staff role.
    */
    private ?TournamentStaffRole $role = null;
    
    /**
     * @var string|null $userId Staff member's user ID.
    */
    private ?string $userId = null;
    
    /**
     * @var string|null $username Username.
    */
    private ?string $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentStaffMember
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentStaffMember {
        return new TournamentStaffMember();
    }

    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return TournamentStaffMember_avatarUrl|null
    */
    public function getAvatarUrl(): ?TournamentStaffMember_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the createdAt property value. Time the row was added (epoch milliseconds).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([TournamentStaffMember_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'role' => fn(ParseNode $n) => $o->setRole($n->getEnumValue(TournamentStaffRole::class)),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Staff row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the name property value. Display name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the role property value. Tournament staff role.
     * @return TournamentStaffRole|null
    */
    public function getRole(): ?TournamentStaffRole {
        return $this->role;
    }

    /**
     * Gets the userId property value. Staff member's user ID.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Gets the username property value. Username.
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
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeEnumValue('role', $this->getRole());
        $writer->writeStringValue('userId', $this->getUserId());
        $writer->writeStringValue('username', $this->getUsername());
    }

    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param TournamentStaffMember_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?TournamentStaffMember_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the createdAt property value. Time the row was added (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. Staff row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the name property value. Display name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the role property value. Tournament staff role.
     * @param TournamentStaffRole|null $value Value to set for the role property.
    */
    public function setRole(?TournamentStaffRole $value): void {
        $this->role = $value;
    }

    /**
     * Sets the userId property value. Staff member's user ID.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

    /**
     * Sets the username property value. Username.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

}

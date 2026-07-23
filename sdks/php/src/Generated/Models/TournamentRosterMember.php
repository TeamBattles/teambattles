<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One member of a participant's roster.
*/
class TournamentRosterMember implements Parsable 
{
    /**
     * @var TournamentRosterMember_avatarUrl|null $avatarUrl Avatar image URL.
    */
    private ?TournamentRosterMember_avatarUrl $avatarUrl = null;
    
    /**
     * @var string|null $id User ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Display name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $source How the member joined the tournament roster.
    */
    private ?string $source = null;
    
    /**
     * @var string|null $username Username.
    */
    private ?string $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRosterMember
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRosterMember {
        return new TournamentRosterMember();
    }

    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return TournamentRosterMember_avatarUrl|null
    */
    public function getAvatarUrl(): ?TournamentRosterMember_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([TournamentRosterMember_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'source' => fn(ParseNode $n) => $o->setSource($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. User ID.
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
     * Gets the source property value. How the member joined the tournament roster.
     * @return string|null
    */
    public function getSource(): ?string {
        return $this->source;
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
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('source', $this->getSource());
        $writer->writeStringValue('username', $this->getUsername());
    }

    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param TournamentRosterMember_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?TournamentRosterMember_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the id property value. User ID.
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
     * Sets the source property value. How the member joined the tournament roster.
     * @param string|null $value Value to set for the source property.
    */
    public function setSource(?string $value): void {
        $this->source = $value;
    }

    /**
     * Sets the username property value. Username.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The user who performed a logged tournament action. Platform Staff actions suppress username/name and set isPlatformStaff: true, keeping only the id.
*/
class TournamentActivityActor implements Parsable 
{
    /**
     * @var string|null $id Actor's user ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isPlatformStaff Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
    */
    private ?bool $isPlatformStaff = null;
    
    /**
     * @var string|null $name Display name. Omitted when the action was taken by Platform Staff.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $username Username. Omitted when the action was taken by Platform Staff.
    */
    private ?string $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentActivityActor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentActivityActor {
        return new TournamentActivityActor();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isPlatformStaff' => fn(ParseNode $n) => $o->setIsPlatformStaff($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Actor's user ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
     * @return bool|null
    */
    public function getIsPlatformStaff(): ?bool {
        return $this->isPlatformStaff;
    }

    /**
     * Gets the name property value. Display name. Omitted when the action was taken by Platform Staff.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the username property value. Username. Omitted when the action was taken by Platform Staff.
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
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isPlatformStaff', $this->getIsPlatformStaff());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('username', $this->getUsername());
    }

    /**
     * Sets the id property value. Actor's user ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
     * @param bool|null $value Value to set for the isPlatformStaff property.
    */
    public function setIsPlatformStaff(?bool $value): void {
        $this->isPlatformStaff = $value;
    }

    /**
     * Sets the name property value. Display name. Omitted when the action was taken by Platform Staff.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the username property value. Username. Omitted when the action was taken by Platform Staff.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

}

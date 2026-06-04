<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Staff members of a league.
*/
class LeagueMembers implements Parsable 
{
    /**
     * @var int|null $count Number of members returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueMembers_members>|null $members Enriched league staff member records.
    */
    private ?array $members = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueMembers
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueMembers {
        return new LeagueMembers();
    }

    /**
     * Gets the count property value. Number of members returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'members' => fn(ParseNode $n) => $o->setMembers($n->getCollectionOfObjectValues([LeagueMembers_members::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the members property value. Enriched league staff member records.
     * @return array<LeagueMembers_members>|null
    */
    public function getMembers(): ?array {
        return $this->members;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('members', $this->getMembers());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of members returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the members property value. Enriched league staff member records.
     * @param array<LeagueMembers_members>|null $value Value to set for the members property.
    */
    public function setMembers(?array $value): void {
        $this->members = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

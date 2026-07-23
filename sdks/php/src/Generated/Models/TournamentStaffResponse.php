<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The tournament staff roster.
*/
class TournamentStaffResponse implements Parsable 
{
    /**
     * @var int|null $count Number of staff rows returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<TournamentStaffMember>|null $staff Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
    */
    private ?array $staff = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentStaffResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentStaffResponse {
        return new TournamentStaffResponse();
    }

    /**
     * Gets the count property value. Number of staff rows returned.
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
            'staff' => fn(ParseNode $n) => $o->setStaff($n->getCollectionOfObjectValues([TournamentStaffMember::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the staff property value. Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
     * @return array<TournamentStaffMember>|null
    */
    public function getStaff(): ?array {
        return $this->staff;
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
        $writer->writeCollectionOfObjectValues('staff', $this->getStaff());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of staff rows returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the staff property value. Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
     * @param array<TournamentStaffMember>|null $value Value to set for the staff property.
    */
    public function setStaff(?array $value): void {
        $this->staff = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Pending tournament applications.
*/
class TournamentApplicationsResponse implements Parsable 
{
    /**
     * @var array<TournamentApplication>|null $applications Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
    */
    private ?array $applications = null;
    
    /**
     * @var int|null $count Number of applications returned.
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentApplicationsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentApplicationsResponse {
        return new TournamentApplicationsResponse();
    }

    /**
     * Gets the applications property value. Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
     * @return array<TournamentApplication>|null
    */
    public function getApplications(): ?array {
        return $this->applications;
    }

    /**
     * Gets the count property value. Number of applications returned.
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
            'applications' => fn(ParseNode $n) => $o->setApplications($n->getCollectionOfObjectValues([TournamentApplication::class, 'createFromDiscriminatorValue'])),
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
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
        $writer->writeCollectionOfObjectValues('applications', $this->getApplications());
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the applications property value. Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
     * @param array<TournamentApplication>|null $value Value to set for the applications property.
    */
    public function setApplications(?array $value): void {
        $this->applications = $value;
    }

    /**
     * Sets the count property value. Number of applications returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

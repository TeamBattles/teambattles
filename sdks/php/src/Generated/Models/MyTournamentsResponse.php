<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The key owner's manageable tournaments.
*/
class MyTournamentsResponse implements Parsable 
{
    /**
     * @var int|null $count Number of tournaments returned.
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * @var array<MyTournamentSummary>|null $tournaments Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
    */
    private ?array $tournaments = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentsResponse {
        return new MyTournamentsResponse();
    }

    /**
     * Gets the count property value. Number of tournaments returned.
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
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'tournaments' => fn(ParseNode $n) => $o->setTournaments($n->getCollectionOfObjectValues([MyTournamentSummary::class, 'createFromDiscriminatorValue'])),
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
     * Gets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
     * @return array<MyTournamentSummary>|null
    */
    public function getTournaments(): ?array {
        return $this->tournaments;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeCollectionOfObjectValues('tournaments', $this->getTournaments());
    }

    /**
     * Sets the count property value. Number of tournaments returned.
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

    /**
     * Sets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
     * @param array<MyTournamentSummary>|null $value Value to set for the tournaments property.
    */
    public function setTournaments(?array $value): void {
        $this->tournaments = $value;
    }

}

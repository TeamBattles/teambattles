<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The caller's tournament entry state.
*/
class MyTournamentEntryResponse implements Parsable 
{
    /**
     * @var MyTournamentEntry|null $entry The API key owner's own state in one tournament.
    */
    private ?MyTournamentEntry $entry = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentEntryResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentEntryResponse {
        return new MyTournamentEntryResponse();
    }

    /**
     * Gets the entry property value. The API key owner's own state in one tournament.
     * @return MyTournamentEntry|null
    */
    public function getEntry(): ?MyTournamentEntry {
        return $this->entry;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'entry' => fn(ParseNode $n) => $o->setEntry($n->getObjectValue([MyTournamentEntry::class, 'createFromDiscriminatorValue'])),
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
        $writer->writeObjectValue('entry', $this->getEntry());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the entry property value. The API key owner's own state in one tournament.
     * @param MyTournamentEntry|null $value Value to set for the entry property.
    */
    public function setEntry(?MyTournamentEntry $value): void {
        $this->entry = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

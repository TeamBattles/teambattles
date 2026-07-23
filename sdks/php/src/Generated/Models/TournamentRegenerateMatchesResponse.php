<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Acknowledgement that match regeneration was scheduled.
*/
class TournamentRegenerateMatchesResponse implements Parsable 
{
    /**
     * @var int|null $queued An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
    */
    private ?int $queued = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRegenerateMatchesResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRegenerateMatchesResponse {
        return new TournamentRegenerateMatchesResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'queued' => fn(ParseNode $n) => $o->setQueued($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
     * @return int|null
    */
    public function getQueued(): ?int {
        return $this->queued;
    }

    /**
     * Gets the timestamp property value. The timestamp property
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
        $writer->writeIntegerValue('queued', $this->getQueued());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
     * @param int|null $value Value to set for the queued property.
    */
    public function setQueued(?int $value): void {
        $this->queued = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

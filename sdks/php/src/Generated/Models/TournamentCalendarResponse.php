<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Tournament milestones for the key owner's teams.
*/
class TournamentCalendarResponse implements Parsable 
{
    /**
     * @var int|null $count Number of milestones returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<TournamentCalendarEvent>|null $events Milestones in the requested window, ascending by time.
    */
    private ?array $events = null;
    
    /**
     * @var string|null $rangeEnd Applied window end (ISO 8601).
    */
    private ?string $rangeEnd = null;
    
    /**
     * @var string|null $rangeStart Applied window start (ISO 8601).
    */
    private ?string $rangeStart = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentCalendarResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentCalendarResponse {
        return new TournamentCalendarResponse();
    }

    /**
     * Gets the count property value. Number of milestones returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * Gets the events property value. Milestones in the requested window, ascending by time.
     * @return array<TournamentCalendarEvent>|null
    */
    public function getEvents(): ?array {
        return $this->events;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'events' => fn(ParseNode $n) => $o->setEvents($n->getCollectionOfObjectValues([TournamentCalendarEvent::class, 'createFromDiscriminatorValue'])),
            'rangeEnd' => fn(ParseNode $n) => $o->setRangeEnd($n->getStringValue()),
            'rangeStart' => fn(ParseNode $n) => $o->setRangeStart($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the rangeEnd property value. Applied window end (ISO 8601).
     * @return string|null
    */
    public function getRangeEnd(): ?string {
        return $this->rangeEnd;
    }

    /**
     * Gets the rangeStart property value. Applied window start (ISO 8601).
     * @return string|null
    */
    public function getRangeStart(): ?string {
        return $this->rangeStart;
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
        $writer->writeCollectionOfObjectValues('events', $this->getEvents());
        $writer->writeStringValue('rangeEnd', $this->getRangeEnd());
        $writer->writeStringValue('rangeStart', $this->getRangeStart());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of milestones returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the events property value. Milestones in the requested window, ascending by time.
     * @param array<TournamentCalendarEvent>|null $value Value to set for the events property.
    */
    public function setEvents(?array $value): void {
        $this->events = $value;
    }

    /**
     * Sets the rangeEnd property value. Applied window end (ISO 8601).
     * @param string|null $value Value to set for the rangeEnd property.
    */
    public function setRangeEnd(?string $value): void {
        $this->rangeEnd = $value;
    }

    /**
     * Sets the rangeStart property value. Applied window start (ISO 8601).
     * @param string|null $value Value to set for the rangeStart property.
    */
    public function setRangeStart(?string $value): void {
        $this->rangeStart = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

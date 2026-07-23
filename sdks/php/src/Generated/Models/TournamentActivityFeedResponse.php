<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The tournament organizer activity feed.
*/
class TournamentActivityFeedResponse implements Parsable 
{
    /**
     * @var array<TournamentActivityEntry>|null $activities Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
    */
    private ?array $activities = null;
    
    /**
     * @var int|null $count Number of entries returned.
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentActivityFeedResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentActivityFeedResponse {
        return new TournamentActivityFeedResponse();
    }

    /**
     * Gets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
     * @return array<TournamentActivityEntry>|null
    */
    public function getActivities(): ?array {
        return $this->activities;
    }

    /**
     * Gets the count property value. Number of entries returned.
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
            'activities' => fn(ParseNode $n) => $o->setActivities($n->getCollectionOfObjectValues([TournamentActivityEntry::class, 'createFromDiscriminatorValue'])),
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
        $writer->writeCollectionOfObjectValues('activities', $this->getActivities());
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the activities property value. Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
     * @param array<TournamentActivityEntry>|null $value Value to set for the activities property.
    */
    public function setActivities(?array $value): void {
        $this->activities = $value;
    }

    /**
     * Sets the count property value. Number of entries returned.
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

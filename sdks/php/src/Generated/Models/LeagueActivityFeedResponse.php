<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A paginated league activity feed.
*/
class LeagueActivityFeedResponse implements Parsable 
{
    /**
     * @var bool|null $hasMore The hasMore property
    */
    private ?bool $hasMore = null;
    
    /**
     * @var string|null $nextCursor The nextCursor property
    */
    private ?string $nextCursor = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueActivityFeedResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueActivityFeedResponse {
        return new LeagueActivityFeedResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'hasMore' => fn(ParseNode $n) => $o->setHasMore($n->getBooleanValue()),
            'nextCursor' => fn(ParseNode $n) => $o->setNextCursor($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the hasMore property value. The hasMore property
     * @return bool|null
    */
    public function getHasMore(): ?bool {
        return $this->hasMore;
    }

    /**
     * Gets the nextCursor property value. The nextCursor property
     * @return string|null
    */
    public function getNextCursor(): ?string {
        return $this->nextCursor;
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
        $writer->writeBooleanValue('hasMore', $this->getHasMore());
        $writer->writeStringValue('nextCursor', $this->getNextCursor());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the hasMore property value. The hasMore property
     * @param bool|null $value Value to set for the hasMore property.
    */
    public function setHasMore(?bool $value): void {
        $this->hasMore = $value;
    }

    /**
     * Sets the nextCursor property value. The nextCursor property
     * @param string|null $value Value to set for the nextCursor property.
    */
    public function setNextCursor(?string $value): void {
        $this->nextCursor = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

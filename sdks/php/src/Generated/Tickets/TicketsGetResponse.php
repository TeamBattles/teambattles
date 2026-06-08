<?php

namespace TeamBattles\Sdk\Generated\Tickets;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\TicketSummary;

class TicketsGetResponse implements Parsable 
{
    /**
     * @var array<TicketSummary>|null $data The data property
    */
    private ?array $data = null;
    
    /**
     * @var bool|null $hasMore The hasMore property
    */
    private ?bool $hasMore = null;
    
    /**
     * @var TicketsGetResponse_nextCursor|null $nextCursor The nextCursor property
    */
    private ?TicketsGetResponse_nextCursor $nextCursor = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TicketsGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TicketsGetResponse {
        return new TicketsGetResponse();
    }

    /**
     * Gets the data property value. The data property
     * @return array<TicketSummary>|null
    */
    public function getData(): ?array {
        return $this->data;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'data' => fn(ParseNode $n) => $o->setData($n->getCollectionOfObjectValues([TicketSummary::class, 'createFromDiscriminatorValue'])),
            'hasMore' => fn(ParseNode $n) => $o->setHasMore($n->getBooleanValue()),
            'nextCursor' => fn(ParseNode $n) => $o->setNextCursor($n->getObjectValue([TicketsGetResponse_nextCursor::class, 'createFromDiscriminatorValue'])),
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
     * @return TicketsGetResponse_nextCursor|null
    */
    public function getNextCursor(): ?TicketsGetResponse_nextCursor {
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
        $writer->writeCollectionOfObjectValues('data', $this->getData());
        $writer->writeBooleanValue('hasMore', $this->getHasMore());
        $writer->writeObjectValue('nextCursor', $this->getNextCursor());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the data property value. The data property
     * @param array<TicketSummary>|null $value Value to set for the data property.
    */
    public function setData(?array $value): void {
        $this->data = $value;
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
     * @param TicketsGetResponse_nextCursor|null $value Value to set for the nextCursor property.
    */
    public function setNextCursor(?TicketsGetResponse_nextCursor $value): void {
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

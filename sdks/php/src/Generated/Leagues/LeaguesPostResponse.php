<?php

namespace TeamBattles\Sdk\Generated\Leagues;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\LeagueSummary;

class LeaguesPostResponse implements Parsable 
{
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueSummary>|null $leagues The leagues property
    */
    private ?array $leagues = null;
    
    /**
     * @var LeaguesPostResponse_pagination|null $pagination The pagination property
    */
    private ?LeaguesPostResponse_pagination $pagination = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeaguesPostResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaguesPostResponse {
        return new LeaguesPostResponse();
    }

    /**
     * Gets the count property value. The count property
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
            'leagues' => fn(ParseNode $n) => $o->setLeagues($n->getCollectionOfObjectValues([LeagueSummary::class, 'createFromDiscriminatorValue'])),
            'pagination' => fn(ParseNode $n) => $o->setPagination($n->getObjectValue([LeaguesPostResponse_pagination::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the leagues property value. The leagues property
     * @return array<LeagueSummary>|null
    */
    public function getLeagues(): ?array {
        return $this->leagues;
    }

    /**
     * Gets the pagination property value. The pagination property
     * @return LeaguesPostResponse_pagination|null
    */
    public function getPagination(): ?LeaguesPostResponse_pagination {
        return $this->pagination;
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('leagues', $this->getLeagues());
        $writer->writeObjectValue('pagination', $this->getPagination());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the leagues property value. The leagues property
     * @param array<LeagueSummary>|null $value Value to set for the leagues property.
    */
    public function setLeagues(?array $value): void {
        $this->leagues = $value;
    }

    /**
     * Sets the pagination property value. The pagination property
     * @param LeaguesPostResponse_pagination|null $value Value to set for the pagination property.
    */
    public function setPagination(?LeaguesPostResponse_pagination $value): void {
        $this->pagination = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

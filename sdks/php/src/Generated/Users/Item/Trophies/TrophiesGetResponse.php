<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Trophies;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiUserTrophy;

/**
 * Envelope containing trophies, count, and a response timestamp.
*/
class TrophiesGetResponse implements Parsable 
{
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * @var array<ApiUserTrophy>|null $trophies The trophies property
    */
    private ?array $trophies = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TrophiesGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TrophiesGetResponse {
        return new TrophiesGetResponse();
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
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'trophies' => fn(ParseNode $n) => $o->setTrophies($n->getCollectionOfObjectValues([ApiUserTrophy::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the trophies property value. The trophies property
     * @return array<ApiUserTrophy>|null
    */
    public function getTrophies(): ?array {
        return $this->trophies;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeCollectionOfObjectValues('trophies', $this->getTrophies());
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the trophies property value. The trophies property
     * @param array<ApiUserTrophy>|null $value Value to set for the trophies property.
    */
    public function setTrophies(?array $value): void {
        $this->trophies = $value;
    }

}

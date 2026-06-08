<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Cursor pagination options for a league activity feed.
*/
class LeagueActivityFeedRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var LeagueActivityFeedRequestBody_cursor|null $cursor The cursor property
    */
    private ?LeagueActivityFeedRequestBody_cursor $cursor = null;
    
    /**
     * @var int|null $limit The limit property
    */
    private ?int $limit = null;
    
    /**
     * Instantiates a new LeagueActivityFeedRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(25);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueActivityFeedRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueActivityFeedRequestBody {
        return new LeagueActivityFeedRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the cursor property value. The cursor property
     * @return LeagueActivityFeedRequestBody_cursor|null
    */
    public function getCursor(): ?LeagueActivityFeedRequestBody_cursor {
        return $this->cursor;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'cursor' => fn(ParseNode $n) => $o->setCursor($n->getObjectValue([LeagueActivityFeedRequestBody_cursor::class, 'createFromDiscriminatorValue'])),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the limit property value. The limit property
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('cursor', $this->getCursor());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the cursor property value. The cursor property
     * @param LeagueActivityFeedRequestBody_cursor|null $value Value to set for the cursor property.
    */
    public function setCursor(?LeagueActivityFeedRequestBody_cursor $value): void {
        $this->cursor = $value;
    }

    /**
     * Sets the limit property value. The limit property
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

}

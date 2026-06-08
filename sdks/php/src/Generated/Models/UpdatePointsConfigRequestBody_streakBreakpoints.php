<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class UpdatePointsConfigRequestBody_streakBreakpoints implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $bonus The bonus property
    */
    private ?float $bonus = null;
    
    /**
     * @var float|null $count The count property
    */
    private ?float $count = null;
    
    /**
     * Instantiates a new UpdatePointsConfigRequestBody_streakBreakpoints and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdatePointsConfigRequestBody_streakBreakpoints
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdatePointsConfigRequestBody_streakBreakpoints {
        return new UpdatePointsConfigRequestBody_streakBreakpoints();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the bonus property value. The bonus property
     * @return float|null
    */
    public function getBonus(): ?float {
        return $this->bonus;
    }

    /**
     * Gets the count property value. The count property
     * @return float|null
    */
    public function getCount(): ?float {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'bonus' => fn(ParseNode $n) => $o->setBonus($n->getFloatValue()),
            'count' => fn(ParseNode $n) => $o->setCount($n->getFloatValue()),
        ];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('bonus', $this->getBonus());
        $writer->writeFloatValue('count', $this->getCount());
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
     * Sets the bonus property value. The bonus property
     * @param float|null $value Value to set for the bonus property.
    */
    public function setBonus(?float $value): void {
        $this->bonus = $value;
    }

    /**
     * Sets the count property value. The count property
     * @param float|null $value Value to set for the count property.
    */
    public function setCount(?float $value): void {
        $this->count = $value;
    }

}

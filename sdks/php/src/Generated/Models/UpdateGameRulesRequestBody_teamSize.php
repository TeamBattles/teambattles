<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class UpdateGameRulesRequestBody_teamSize implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $max The max property
    */
    private ?float $max = null;
    
    /**
     * @var float|null $min The min property
    */
    private ?float $min = null;
    
    /**
     * Instantiates a new UpdateGameRulesRequestBody_teamSize and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateGameRulesRequestBody_teamSize
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateGameRulesRequestBody_teamSize {
        return new UpdateGameRulesRequestBody_teamSize();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'max' => fn(ParseNode $n) => $o->setMax($n->getFloatValue()),
            'min' => fn(ParseNode $n) => $o->setMin($n->getFloatValue()),
        ];
    }

    /**
     * Gets the max property value. The max property
     * @return float|null
    */
    public function getMax(): ?float {
        return $this->max;
    }

    /**
     * Gets the min property value. The min property
     * @return float|null
    */
    public function getMin(): ?float {
        return $this->min;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('max', $this->getMax());
        $writer->writeFloatValue('min', $this->getMin());
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
     * Sets the max property value. The max property
     * @param float|null $value Value to set for the max property.
    */
    public function setMax(?float $value): void {
        $this->max = $value;
    }

    /**
     * Sets the min property value. The min property
     * @param float|null $value Value to set for the min property.
    */
    public function setMin(?float $value): void {
        $this->min = $value;
    }

}

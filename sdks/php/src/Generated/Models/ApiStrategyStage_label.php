<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiStrategyStage_labelMember1, string
*/
class ApiStrategyStage_label implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiStrategyStage_labelMember1|null $apiStrategyStage_labelMember1 Composed type representation for type ApiStrategyStage_labelMember1
    */
    private ?ApiStrategyStage_labelMember1 $apiStrategyStage_labelMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategyStage_label
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategyStage_label {
        $result = new ApiStrategyStage_label();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiStrategyStageLabelMember1(new ApiStrategyStage_labelMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiStrategyStage_labelMember1 property value. Composed type representation for type ApiStrategyStage_labelMember1
     * @return ApiStrategyStage_labelMember1|null
    */
    public function getApiStrategyStageLabelMember1(): ?ApiStrategyStage_labelMember1 {
        return $this->apiStrategyStage_labelMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiStrategyStageLabelMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiStrategyStageLabelMember1());
        }
        return [];
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getApiStrategyStageLabelMember1());
        }
    }

    /**
     * Sets the ApiStrategyStage_labelMember1 property value. Composed type representation for type ApiStrategyStage_labelMember1
     * @param ApiStrategyStage_labelMember1|null $value Value to set for the ApiStrategyStage_labelMember1 property.
    */
    public function setApiStrategyStageLabelMember1(?ApiStrategyStage_labelMember1 $value): void {
        $this->apiStrategyStage_labelMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

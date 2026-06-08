<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiStrategyShape_updatedAtMember1, string
*/
class ApiStrategyShape_updatedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiStrategyShape_updatedAtMember1|null $apiStrategyShape_updatedAtMember1 Composed type representation for type ApiStrategyShape_updatedAtMember1
    */
    private ?ApiStrategyShape_updatedAtMember1 $apiStrategyShape_updatedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategyShape_updatedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategyShape_updatedAt {
        $result = new ApiStrategyShape_updatedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiStrategyShapeUpdatedAtMember1(new ApiStrategyShape_updatedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type ApiStrategyShape_updatedAtMember1
     * @return ApiStrategyShape_updatedAtMember1|null
    */
    public function getApiStrategyShapeUpdatedAtMember1(): ?ApiStrategyShape_updatedAtMember1 {
        return $this->apiStrategyShape_updatedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiStrategyShapeUpdatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiStrategyShapeUpdatedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiStrategyShapeUpdatedAtMember1());
        }
    }

    /**
     * Sets the ApiStrategyShape_updatedAtMember1 property value. Composed type representation for type ApiStrategyShape_updatedAtMember1
     * @param ApiStrategyShape_updatedAtMember1|null $value Value to set for the ApiStrategyShape_updatedAtMember1 property.
    */
    public function setApiStrategyShapeUpdatedAtMember1(?ApiStrategyShape_updatedAtMember1 $value): void {
        $this->apiStrategyShape_updatedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

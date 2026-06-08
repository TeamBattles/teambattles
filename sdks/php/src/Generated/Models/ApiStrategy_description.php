<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiStrategy_descriptionMember1, string
*/
class ApiStrategy_description implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiStrategy_descriptionMember1|null $apiStrategy_descriptionMember1 Composed type representation for type ApiStrategy_descriptionMember1
    */
    private ?ApiStrategy_descriptionMember1 $apiStrategy_descriptionMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategy_description
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategy_description {
        $result = new ApiStrategy_description();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiStrategyDescriptionMember1(new ApiStrategy_descriptionMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiStrategy_descriptionMember1 property value. Composed type representation for type ApiStrategy_descriptionMember1
     * @return ApiStrategy_descriptionMember1|null
    */
    public function getApiStrategyDescriptionMember1(): ?ApiStrategy_descriptionMember1 {
        return $this->apiStrategy_descriptionMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiStrategyDescriptionMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiStrategyDescriptionMember1());
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
            $writer->writeObjectValue(null, $this->getApiStrategyDescriptionMember1());
        }
    }

    /**
     * Sets the ApiStrategy_descriptionMember1 property value. Composed type representation for type ApiStrategy_descriptionMember1
     * @param ApiStrategy_descriptionMember1|null $value Value to set for the ApiStrategy_descriptionMember1 property.
    */
    public function setApiStrategyDescriptionMember1(?ApiStrategy_descriptionMember1 $value): void {
        $this->apiStrategy_descriptionMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

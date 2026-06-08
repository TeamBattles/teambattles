<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiStrategy_createdAtMember1, string
*/
class ApiStrategy_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiStrategy_createdAtMember1|null $apiStrategy_createdAtMember1 Composed type representation for type ApiStrategy_createdAtMember1
    */
    private ?ApiStrategy_createdAtMember1 $apiStrategy_createdAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategy_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategy_createdAt {
        $result = new ApiStrategy_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiStrategyCreatedAtMember1(new ApiStrategy_createdAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiStrategy_createdAtMember1 property value. Composed type representation for type ApiStrategy_createdAtMember1
     * @return ApiStrategy_createdAtMember1|null
    */
    public function getApiStrategyCreatedAtMember1(): ?ApiStrategy_createdAtMember1 {
        return $this->apiStrategy_createdAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiStrategyCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiStrategyCreatedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiStrategyCreatedAtMember1());
        }
    }

    /**
     * Sets the ApiStrategy_createdAtMember1 property value. Composed type representation for type ApiStrategy_createdAtMember1
     * @param ApiStrategy_createdAtMember1|null $value Value to set for the ApiStrategy_createdAtMember1 property.
    */
    public function setApiStrategyCreatedAtMember1(?ApiStrategy_createdAtMember1 $value): void {
        $this->apiStrategy_createdAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

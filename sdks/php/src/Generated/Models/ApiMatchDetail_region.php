<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchDetail_regionMember1, string
*/
class ApiMatchDetail_region implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchDetail_regionMember1|null $apiMatchDetail_regionMember1 Composed type representation for type ApiMatchDetail_regionMember1
    */
    private ?ApiMatchDetail_regionMember1 $apiMatchDetail_regionMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail_region
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail_region {
        $result = new ApiMatchDetail_region();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchDetailRegionMember1(new ApiMatchDetail_regionMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchDetail_regionMember1 property value. Composed type representation for type ApiMatchDetail_regionMember1
     * @return ApiMatchDetail_regionMember1|null
    */
    public function getApiMatchDetailRegionMember1(): ?ApiMatchDetail_regionMember1 {
        return $this->apiMatchDetail_regionMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchDetailRegionMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchDetailRegionMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchDetailRegionMember1());
        }
    }

    /**
     * Sets the ApiMatchDetail_regionMember1 property value. Composed type representation for type ApiMatchDetail_regionMember1
     * @param ApiMatchDetail_regionMember1|null $value Value to set for the ApiMatchDetail_regionMember1 property.
    */
    public function setApiMatchDetailRegionMember1(?ApiMatchDetail_regionMember1 $value): void {
        $this->apiMatchDetail_regionMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

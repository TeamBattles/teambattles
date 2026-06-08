<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_gameNameMember1, string
*/
class ApiPrimaryStream_gameName implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_gameNameMember1|null $apiPrimaryStream_gameNameMember1 Composed type representation for type ApiPrimaryStream_gameNameMember1
    */
    private ?ApiPrimaryStream_gameNameMember1 $apiPrimaryStream_gameNameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_gameName
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_gameName {
        $result = new ApiPrimaryStream_gameName();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamGameNameMember1(new ApiPrimaryStream_gameNameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_gameNameMember1 property value. Composed type representation for type ApiPrimaryStream_gameNameMember1
     * @return ApiPrimaryStream_gameNameMember1|null
    */
    public function getApiPrimaryStreamGameNameMember1(): ?ApiPrimaryStream_gameNameMember1 {
        return $this->apiPrimaryStream_gameNameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamGameNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamGameNameMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamGameNameMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_gameNameMember1 property value. Composed type representation for type ApiPrimaryStream_gameNameMember1
     * @param ApiPrimaryStream_gameNameMember1|null $value Value to set for the ApiPrimaryStream_gameNameMember1 property.
    */
    public function setApiPrimaryStreamGameNameMember1(?ApiPrimaryStream_gameNameMember1 $value): void {
        $this->apiPrimaryStream_gameNameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

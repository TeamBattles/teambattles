<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_titleMember1, string
*/
class ApiPrimaryStream_title implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_titleMember1|null $apiPrimaryStream_titleMember1 Composed type representation for type ApiPrimaryStream_titleMember1
    */
    private ?ApiPrimaryStream_titleMember1 $apiPrimaryStream_titleMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_title
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_title {
        $result = new ApiPrimaryStream_title();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamTitleMember1(new ApiPrimaryStream_titleMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_titleMember1 property value. Composed type representation for type ApiPrimaryStream_titleMember1
     * @return ApiPrimaryStream_titleMember1|null
    */
    public function getApiPrimaryStreamTitleMember1(): ?ApiPrimaryStream_titleMember1 {
        return $this->apiPrimaryStream_titleMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamTitleMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamTitleMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamTitleMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_titleMember1 property value. Composed type representation for type ApiPrimaryStream_titleMember1
     * @param ApiPrimaryStream_titleMember1|null $value Value to set for the ApiPrimaryStream_titleMember1 property.
    */
    public function setApiPrimaryStreamTitleMember1(?ApiPrimaryStream_titleMember1 $value): void {
        $this->apiPrimaryStream_titleMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

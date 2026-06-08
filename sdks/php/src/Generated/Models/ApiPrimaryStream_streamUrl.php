<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_streamUrlMember1, string
*/
class ApiPrimaryStream_streamUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_streamUrlMember1|null $apiPrimaryStream_streamUrlMember1 Composed type representation for type ApiPrimaryStream_streamUrlMember1
    */
    private ?ApiPrimaryStream_streamUrlMember1 $apiPrimaryStream_streamUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_streamUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_streamUrl {
        $result = new ApiPrimaryStream_streamUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamStreamUrlMember1(new ApiPrimaryStream_streamUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_streamUrlMember1 property value. Composed type representation for type ApiPrimaryStream_streamUrlMember1
     * @return ApiPrimaryStream_streamUrlMember1|null
    */
    public function getApiPrimaryStreamStreamUrlMember1(): ?ApiPrimaryStream_streamUrlMember1 {
        return $this->apiPrimaryStream_streamUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamStreamUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamStreamUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamStreamUrlMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_streamUrlMember1 property value. Composed type representation for type ApiPrimaryStream_streamUrlMember1
     * @param ApiPrimaryStream_streamUrlMember1|null $value Value to set for the ApiPrimaryStream_streamUrlMember1 property.
    */
    public function setApiPrimaryStreamStreamUrlMember1(?ApiPrimaryStream_streamUrlMember1 $value): void {
        $this->apiPrimaryStream_streamUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

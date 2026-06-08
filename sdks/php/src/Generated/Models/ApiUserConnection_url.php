<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserConnection_urlMember1, string
*/
class ApiUserConnection_url implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserConnection_urlMember1|null $apiUserConnection_urlMember1 Composed type representation for type ApiUserConnection_urlMember1
    */
    private ?ApiUserConnection_urlMember1 $apiUserConnection_urlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserConnection_url
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserConnection_url {
        $result = new ApiUserConnection_url();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserConnectionUrlMember1(new ApiUserConnection_urlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserConnection_urlMember1 property value. Composed type representation for type ApiUserConnection_urlMember1
     * @return ApiUserConnection_urlMember1|null
    */
    public function getApiUserConnectionUrlMember1(): ?ApiUserConnection_urlMember1 {
        return $this->apiUserConnection_urlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserConnectionUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserConnectionUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserConnectionUrlMember1());
        }
    }

    /**
     * Sets the ApiUserConnection_urlMember1 property value. Composed type representation for type ApiUserConnection_urlMember1
     * @param ApiUserConnection_urlMember1|null $value Value to set for the ApiUserConnection_urlMember1 property.
    */
    public function setApiUserConnectionUrlMember1(?ApiUserConnection_urlMember1 $value): void {
        $this->apiUserConnection_urlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

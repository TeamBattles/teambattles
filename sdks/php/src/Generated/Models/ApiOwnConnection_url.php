<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOwnConnection_urlMember1, string
*/
class ApiOwnConnection_url implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOwnConnection_urlMember1|null $apiOwnConnection_urlMember1 Composed type representation for type ApiOwnConnection_urlMember1
    */
    private ?ApiOwnConnection_urlMember1 $apiOwnConnection_urlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOwnConnection_url
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOwnConnection_url {
        $result = new ApiOwnConnection_url();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOwnConnectionUrlMember1(new ApiOwnConnection_urlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOwnConnection_urlMember1 property value. Composed type representation for type ApiOwnConnection_urlMember1
     * @return ApiOwnConnection_urlMember1|null
    */
    public function getApiOwnConnectionUrlMember1(): ?ApiOwnConnection_urlMember1 {
        return $this->apiOwnConnection_urlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOwnConnectionUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOwnConnectionUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiOwnConnectionUrlMember1());
        }
    }

    /**
     * Sets the ApiOwnConnection_urlMember1 property value. Composed type representation for type ApiOwnConnection_urlMember1
     * @param ApiOwnConnection_urlMember1|null $value Value to set for the ApiOwnConnection_urlMember1 property.
    */
    public function setApiOwnConnectionUrlMember1(?ApiOwnConnection_urlMember1 $value): void {
        $this->apiOwnConnection_urlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

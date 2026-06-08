<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiUserConnection_usernameMember1, string
*/
class ApiUserConnection_username implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiUserConnection_usernameMember1|null $apiUserConnection_usernameMember1 Composed type representation for type ApiUserConnection_usernameMember1
    */
    private ?ApiUserConnection_usernameMember1 $apiUserConnection_usernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserConnection_username
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserConnection_username {
        $result = new ApiUserConnection_username();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiUserConnectionUsernameMember1(new ApiUserConnection_usernameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiUserConnection_usernameMember1 property value. Composed type representation for type ApiUserConnection_usernameMember1
     * @return ApiUserConnection_usernameMember1|null
    */
    public function getApiUserConnectionUsernameMember1(): ?ApiUserConnection_usernameMember1 {
        return $this->apiUserConnection_usernameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiUserConnectionUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiUserConnectionUsernameMember1());
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
            $writer->writeObjectValue(null, $this->getApiUserConnectionUsernameMember1());
        }
    }

    /**
     * Sets the ApiUserConnection_usernameMember1 property value. Composed type representation for type ApiUserConnection_usernameMember1
     * @param ApiUserConnection_usernameMember1|null $value Value to set for the ApiUserConnection_usernameMember1 property.
    */
    public function setApiUserConnectionUsernameMember1(?ApiUserConnection_usernameMember1 $value): void {
        $this->apiUserConnection_usernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOwnConnection_usernameMember1, string
*/
class ApiOwnConnection_username implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOwnConnection_usernameMember1|null $apiOwnConnection_usernameMember1 Composed type representation for type ApiOwnConnection_usernameMember1
    */
    private ?ApiOwnConnection_usernameMember1 $apiOwnConnection_usernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOwnConnection_username
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOwnConnection_username {
        $result = new ApiOwnConnection_username();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOwnConnectionUsernameMember1(new ApiOwnConnection_usernameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type ApiOwnConnection_usernameMember1
     * @return ApiOwnConnection_usernameMember1|null
    */
    public function getApiOwnConnectionUsernameMember1(): ?ApiOwnConnection_usernameMember1 {
        return $this->apiOwnConnection_usernameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOwnConnectionUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOwnConnectionUsernameMember1());
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
            $writer->writeObjectValue(null, $this->getApiOwnConnectionUsernameMember1());
        }
    }

    /**
     * Sets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type ApiOwnConnection_usernameMember1
     * @param ApiOwnConnection_usernameMember1|null $value Value to set for the ApiOwnConnection_usernameMember1 property.
    */
    public function setApiOwnConnectionUsernameMember1(?ApiOwnConnection_usernameMember1 $value): void {
        $this->apiOwnConnection_usernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

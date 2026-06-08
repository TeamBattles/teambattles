<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchPlayer_usernameMember1, string
*/
class ApiMatchPlayer_username implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchPlayer_usernameMember1|null $apiMatchPlayer_usernameMember1 Composed type representation for type ApiMatchPlayer_usernameMember1
    */
    private ?ApiMatchPlayer_usernameMember1 $apiMatchPlayer_usernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchPlayer_username
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchPlayer_username {
        $result = new ApiMatchPlayer_username();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchPlayerUsernameMember1(new ApiMatchPlayer_usernameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type ApiMatchPlayer_usernameMember1
     * @return ApiMatchPlayer_usernameMember1|null
    */
    public function getApiMatchPlayerUsernameMember1(): ?ApiMatchPlayer_usernameMember1 {
        return $this->apiMatchPlayer_usernameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchPlayerUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchPlayerUsernameMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchPlayerUsernameMember1());
        }
    }

    /**
     * Sets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type ApiMatchPlayer_usernameMember1
     * @param ApiMatchPlayer_usernameMember1|null $value Value to set for the ApiMatchPlayer_usernameMember1 property.
    */
    public function setApiMatchPlayerUsernameMember1(?ApiMatchPlayer_usernameMember1 $value): void {
        $this->apiMatchPlayer_usernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

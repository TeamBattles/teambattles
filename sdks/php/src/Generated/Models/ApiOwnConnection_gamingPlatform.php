<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiOwnConnection_gamingPlatformMember1, string
*/
class ApiOwnConnection_gamingPlatform implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiOwnConnection_gamingPlatformMember1|null $apiOwnConnection_gamingPlatformMember1 Composed type representation for type ApiOwnConnection_gamingPlatformMember1
    */
    private ?ApiOwnConnection_gamingPlatformMember1 $apiOwnConnection_gamingPlatformMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOwnConnection_gamingPlatform
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOwnConnection_gamingPlatform {
        $result = new ApiOwnConnection_gamingPlatform();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiOwnConnectionGamingPlatformMember1(new ApiOwnConnection_gamingPlatformMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type ApiOwnConnection_gamingPlatformMember1
     * @return ApiOwnConnection_gamingPlatformMember1|null
    */
    public function getApiOwnConnectionGamingPlatformMember1(): ?ApiOwnConnection_gamingPlatformMember1 {
        return $this->apiOwnConnection_gamingPlatformMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiOwnConnectionGamingPlatformMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiOwnConnectionGamingPlatformMember1());
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
            $writer->writeObjectValue(null, $this->getApiOwnConnectionGamingPlatformMember1());
        }
    }

    /**
     * Sets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type ApiOwnConnection_gamingPlatformMember1
     * @param ApiOwnConnection_gamingPlatformMember1|null $value Value to set for the ApiOwnConnection_gamingPlatformMember1 property.
    */
    public function setApiOwnConnectionGamingPlatformMember1(?ApiOwnConnection_gamingPlatformMember1 $value): void {
        $this->apiOwnConnection_gamingPlatformMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

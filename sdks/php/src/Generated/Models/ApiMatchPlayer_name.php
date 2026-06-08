<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchPlayer_nameMember1, string
*/
class ApiMatchPlayer_name implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchPlayer_nameMember1|null $apiMatchPlayer_nameMember1 Composed type representation for type ApiMatchPlayer_nameMember1
    */
    private ?ApiMatchPlayer_nameMember1 $apiMatchPlayer_nameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchPlayer_name
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchPlayer_name {
        $result = new ApiMatchPlayer_name();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchPlayerNameMember1(new ApiMatchPlayer_nameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type ApiMatchPlayer_nameMember1
     * @return ApiMatchPlayer_nameMember1|null
    */
    public function getApiMatchPlayerNameMember1(): ?ApiMatchPlayer_nameMember1 {
        return $this->apiMatchPlayer_nameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchPlayerNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchPlayerNameMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchPlayerNameMember1());
        }
    }

    /**
     * Sets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type ApiMatchPlayer_nameMember1
     * @param ApiMatchPlayer_nameMember1|null $value Value to set for the ApiMatchPlayer_nameMember1 property.
    */
    public function setApiMatchPlayerNameMember1(?ApiMatchPlayer_nameMember1 $value): void {
        $this->apiMatchPlayer_nameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

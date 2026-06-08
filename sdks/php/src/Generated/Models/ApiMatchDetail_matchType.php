<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchDetail_matchTypeMember1, string
*/
class ApiMatchDetail_matchType implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchDetail_matchTypeMember1|null $apiMatchDetail_matchTypeMember1 Composed type representation for type ApiMatchDetail_matchTypeMember1
    */
    private ?ApiMatchDetail_matchTypeMember1 $apiMatchDetail_matchTypeMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail_matchType
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail_matchType {
        $result = new ApiMatchDetail_matchType();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchDetailMatchTypeMember1(new ApiMatchDetail_matchTypeMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type ApiMatchDetail_matchTypeMember1
     * @return ApiMatchDetail_matchTypeMember1|null
    */
    public function getApiMatchDetailMatchTypeMember1(): ?ApiMatchDetail_matchTypeMember1 {
        return $this->apiMatchDetail_matchTypeMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchDetailMatchTypeMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchDetailMatchTypeMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchDetailMatchTypeMember1());
        }
    }

    /**
     * Sets the ApiMatchDetail_matchTypeMember1 property value. Composed type representation for type ApiMatchDetail_matchTypeMember1
     * @param ApiMatchDetail_matchTypeMember1|null $value Value to set for the ApiMatchDetail_matchTypeMember1 property.
    */
    public function setApiMatchDetailMatchTypeMember1(?ApiMatchDetail_matchTypeMember1 $value): void {
        $this->apiMatchDetail_matchTypeMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

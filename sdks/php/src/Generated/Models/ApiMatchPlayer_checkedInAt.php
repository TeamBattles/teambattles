<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchPlayer_checkedInAtMember1, string
*/
class ApiMatchPlayer_checkedInAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchPlayer_checkedInAtMember1|null $apiMatchPlayer_checkedInAtMember1 Composed type representation for type ApiMatchPlayer_checkedInAtMember1
    */
    private ?ApiMatchPlayer_checkedInAtMember1 $apiMatchPlayer_checkedInAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchPlayer_checkedInAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchPlayer_checkedInAt {
        $result = new ApiMatchPlayer_checkedInAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchPlayerCheckedInAtMember1(new ApiMatchPlayer_checkedInAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type ApiMatchPlayer_checkedInAtMember1
     * @return ApiMatchPlayer_checkedInAtMember1|null
    */
    public function getApiMatchPlayerCheckedInAtMember1(): ?ApiMatchPlayer_checkedInAtMember1 {
        return $this->apiMatchPlayer_checkedInAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchPlayerCheckedInAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchPlayerCheckedInAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchPlayerCheckedInAtMember1());
        }
    }

    /**
     * Sets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type ApiMatchPlayer_checkedInAtMember1
     * @param ApiMatchPlayer_checkedInAtMember1|null $value Value to set for the ApiMatchPlayer_checkedInAtMember1 property.
    */
    public function setApiMatchPlayerCheckedInAtMember1(?ApiMatchPlayer_checkedInAtMember1 $value): void {
        $this->apiMatchPlayer_checkedInAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

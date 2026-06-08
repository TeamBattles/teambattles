<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_lastLiveAtMember1, string
*/
class ApiPrimaryStream_lastLiveAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_lastLiveAtMember1|null $apiPrimaryStream_lastLiveAtMember1 Composed type representation for type ApiPrimaryStream_lastLiveAtMember1
    */
    private ?ApiPrimaryStream_lastLiveAtMember1 $apiPrimaryStream_lastLiveAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_lastLiveAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_lastLiveAt {
        $result = new ApiPrimaryStream_lastLiveAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamLastLiveAtMember1(new ApiPrimaryStream_lastLiveAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_lastLiveAtMember1 property value. Composed type representation for type ApiPrimaryStream_lastLiveAtMember1
     * @return ApiPrimaryStream_lastLiveAtMember1|null
    */
    public function getApiPrimaryStreamLastLiveAtMember1(): ?ApiPrimaryStream_lastLiveAtMember1 {
        return $this->apiPrimaryStream_lastLiveAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamLastLiveAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamLastLiveAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamLastLiveAtMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_lastLiveAtMember1 property value. Composed type representation for type ApiPrimaryStream_lastLiveAtMember1
     * @param ApiPrimaryStream_lastLiveAtMember1|null $value Value to set for the ApiPrimaryStream_lastLiveAtMember1 property.
    */
    public function setApiPrimaryStreamLastLiveAtMember1(?ApiPrimaryStream_lastLiveAtMember1 $value): void {
        $this->apiPrimaryStream_lastLiveAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

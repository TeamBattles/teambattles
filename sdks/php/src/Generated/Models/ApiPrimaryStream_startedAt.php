<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_startedAtMember1, string
*/
class ApiPrimaryStream_startedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_startedAtMember1|null $apiPrimaryStream_startedAtMember1 Composed type representation for type ApiPrimaryStream_startedAtMember1
    */
    private ?ApiPrimaryStream_startedAtMember1 $apiPrimaryStream_startedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_startedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_startedAt {
        $result = new ApiPrimaryStream_startedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamStartedAtMember1(new ApiPrimaryStream_startedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_startedAtMember1 property value. Composed type representation for type ApiPrimaryStream_startedAtMember1
     * @return ApiPrimaryStream_startedAtMember1|null
    */
    public function getApiPrimaryStreamStartedAtMember1(): ?ApiPrimaryStream_startedAtMember1 {
        return $this->apiPrimaryStream_startedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamStartedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamStartedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamStartedAtMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_startedAtMember1 property value. Composed type representation for type ApiPrimaryStream_startedAtMember1
     * @param ApiPrimaryStream_startedAtMember1|null $value Value to set for the ApiPrimaryStream_startedAtMember1 property.
    */
    public function setApiPrimaryStreamStartedAtMember1(?ApiPrimaryStream_startedAtMember1 $value): void {
        $this->apiPrimaryStream_startedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

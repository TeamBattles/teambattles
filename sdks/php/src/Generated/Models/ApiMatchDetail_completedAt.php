<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchDetail_completedAtMember1, string
*/
class ApiMatchDetail_completedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchDetail_completedAtMember1|null $apiMatchDetail_completedAtMember1 Composed type representation for type ApiMatchDetail_completedAtMember1
    */
    private ?ApiMatchDetail_completedAtMember1 $apiMatchDetail_completedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail_completedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail_completedAt {
        $result = new ApiMatchDetail_completedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchDetailCompletedAtMember1(new ApiMatchDetail_completedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type ApiMatchDetail_completedAtMember1
     * @return ApiMatchDetail_completedAtMember1|null
    */
    public function getApiMatchDetailCompletedAtMember1(): ?ApiMatchDetail_completedAtMember1 {
        return $this->apiMatchDetail_completedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchDetailCompletedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchDetailCompletedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchDetailCompletedAtMember1());
        }
    }

    /**
     * Sets the ApiMatchDetail_completedAtMember1 property value. Composed type representation for type ApiMatchDetail_completedAtMember1
     * @param ApiMatchDetail_completedAtMember1|null $value Value to set for the ApiMatchDetail_completedAtMember1 property.
    */
    public function setApiMatchDetailCompletedAtMember1(?ApiMatchDetail_completedAtMember1 $value): void {
        $this->apiMatchDetail_completedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

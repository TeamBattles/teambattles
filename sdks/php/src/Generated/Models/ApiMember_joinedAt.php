<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMember_joinedAtMember1, string
*/
class ApiMember_joinedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMember_joinedAtMember1|null $apiMember_joinedAtMember1 Composed type representation for type ApiMember_joinedAtMember1
    */
    private ?ApiMember_joinedAtMember1 $apiMember_joinedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMember_joinedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMember_joinedAt {
        $result = new ApiMember_joinedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMemberJoinedAtMember1(new ApiMember_joinedAtMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMember_joinedAtMember1 property value. Composed type representation for type ApiMember_joinedAtMember1
     * @return ApiMember_joinedAtMember1|null
    */
    public function getApiMemberJoinedAtMember1(): ?ApiMember_joinedAtMember1 {
        return $this->apiMember_joinedAtMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMemberJoinedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMemberJoinedAtMember1());
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
            $writer->writeObjectValue(null, $this->getApiMemberJoinedAtMember1());
        }
    }

    /**
     * Sets the ApiMember_joinedAtMember1 property value. Composed type representation for type ApiMember_joinedAtMember1
     * @param ApiMember_joinedAtMember1|null $value Value to set for the ApiMember_joinedAtMember1 property.
    */
    public function setApiMemberJoinedAtMember1(?ApiMember_joinedAtMember1 $value): void {
        $this->apiMember_joinedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

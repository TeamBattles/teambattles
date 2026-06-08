<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameMode_descriptionKeyMember1, string
*/
class ApiGameMode_descriptionKey implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameMode_descriptionKeyMember1|null $apiGameMode_descriptionKeyMember1 Composed type representation for type ApiGameMode_descriptionKeyMember1
    */
    private ?ApiGameMode_descriptionKeyMember1 $apiGameMode_descriptionKeyMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMode_descriptionKey
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMode_descriptionKey {
        $result = new ApiGameMode_descriptionKey();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameModeDescriptionKeyMember1(new ApiGameMode_descriptionKeyMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type ApiGameMode_descriptionKeyMember1
     * @return ApiGameMode_descriptionKeyMember1|null
    */
    public function getApiGameModeDescriptionKeyMember1(): ?ApiGameMode_descriptionKeyMember1 {
        return $this->apiGameMode_descriptionKeyMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameModeDescriptionKeyMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameModeDescriptionKeyMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameModeDescriptionKeyMember1());
        }
    }

    /**
     * Sets the ApiGameMode_descriptionKeyMember1 property value. Composed type representation for type ApiGameMode_descriptionKeyMember1
     * @param ApiGameMode_descriptionKeyMember1|null $value Value to set for the ApiGameMode_descriptionKeyMember1 property.
    */
    public function setApiGameModeDescriptionKeyMember1(?ApiGameMode_descriptionKeyMember1 $value): void {
        $this->apiGameMode_descriptionKeyMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

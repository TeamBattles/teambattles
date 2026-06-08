<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameMode_shortNameMember1, string
*/
class ApiGameMode_shortName implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameMode_shortNameMember1|null $apiGameMode_shortNameMember1 Composed type representation for type ApiGameMode_shortNameMember1
    */
    private ?ApiGameMode_shortNameMember1 $apiGameMode_shortNameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMode_shortName
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMode_shortName {
        $result = new ApiGameMode_shortName();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameModeShortNameMember1(new ApiGameMode_shortNameMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameMode_shortNameMember1 property value. Composed type representation for type ApiGameMode_shortNameMember1
     * @return ApiGameMode_shortNameMember1|null
    */
    public function getApiGameModeShortNameMember1(): ?ApiGameMode_shortNameMember1 {
        return $this->apiGameMode_shortNameMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameModeShortNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameModeShortNameMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameModeShortNameMember1());
        }
    }

    /**
     * Sets the ApiGameMode_shortNameMember1 property value. Composed type representation for type ApiGameMode_shortNameMember1
     * @param ApiGameMode_shortNameMember1|null $value Value to set for the ApiGameMode_shortNameMember1 property.
    */
    public function setApiGameModeShortNameMember1(?ApiGameMode_shortNameMember1 $value): void {
        $this->apiGameMode_shortNameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameMap_minimapImageMember1, string
*/
class ApiGameMap_minimapImage implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameMap_minimapImageMember1|null $apiGameMap_minimapImageMember1 Composed type representation for type ApiGameMap_minimapImageMember1
    */
    private ?ApiGameMap_minimapImageMember1 $apiGameMap_minimapImageMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMap_minimapImage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMap_minimapImage {
        $result = new ApiGameMap_minimapImage();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameMapMinimapImageMember1(new ApiGameMap_minimapImageMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type ApiGameMap_minimapImageMember1
     * @return ApiGameMap_minimapImageMember1|null
    */
    public function getApiGameMapMinimapImageMember1(): ?ApiGameMap_minimapImageMember1 {
        return $this->apiGameMap_minimapImageMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameMapMinimapImageMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameMapMinimapImageMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameMapMinimapImageMember1());
        }
    }

    /**
     * Sets the ApiGameMap_minimapImageMember1 property value. Composed type representation for type ApiGameMap_minimapImageMember1
     * @param ApiGameMap_minimapImageMember1|null $value Value to set for the ApiGameMap_minimapImageMember1 property.
    */
    public function setApiGameMapMinimapImageMember1(?ApiGameMap_minimapImageMember1 $value): void {
        $this->apiGameMap_minimapImageMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

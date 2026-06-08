<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameCatalogEntry_coverImageMember1, string
*/
class ApiGameCatalogEntry_coverImage implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameCatalogEntry_coverImageMember1|null $apiGameCatalogEntry_coverImageMember1 Composed type representation for type ApiGameCatalogEntry_coverImageMember1
    */
    private ?ApiGameCatalogEntry_coverImageMember1 $apiGameCatalogEntry_coverImageMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameCatalogEntry_coverImage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameCatalogEntry_coverImage {
        $result = new ApiGameCatalogEntry_coverImage();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameCatalogEntryCoverImageMember1(new ApiGameCatalogEntry_coverImageMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type ApiGameCatalogEntry_coverImageMember1
     * @return ApiGameCatalogEntry_coverImageMember1|null
    */
    public function getApiGameCatalogEntryCoverImageMember1(): ?ApiGameCatalogEntry_coverImageMember1 {
        return $this->apiGameCatalogEntry_coverImageMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameCatalogEntryCoverImageMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameCatalogEntryCoverImageMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameCatalogEntryCoverImageMember1());
        }
    }

    /**
     * Sets the ApiGameCatalogEntry_coverImageMember1 property value. Composed type representation for type ApiGameCatalogEntry_coverImageMember1
     * @param ApiGameCatalogEntry_coverImageMember1|null $value Value to set for the ApiGameCatalogEntry_coverImageMember1 property.
    */
    public function setApiGameCatalogEntryCoverImageMember1(?ApiGameCatalogEntry_coverImageMember1 $value): void {
        $this->apiGameCatalogEntry_coverImageMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

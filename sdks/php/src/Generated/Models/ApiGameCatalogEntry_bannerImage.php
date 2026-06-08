<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameCatalogEntry_bannerImageMember1, string
*/
class ApiGameCatalogEntry_bannerImage implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameCatalogEntry_bannerImageMember1|null $apiGameCatalogEntry_bannerImageMember1 Composed type representation for type ApiGameCatalogEntry_bannerImageMember1
    */
    private ?ApiGameCatalogEntry_bannerImageMember1 $apiGameCatalogEntry_bannerImageMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameCatalogEntry_bannerImage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameCatalogEntry_bannerImage {
        $result = new ApiGameCatalogEntry_bannerImage();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameCatalogEntryBannerImageMember1(new ApiGameCatalogEntry_bannerImageMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type ApiGameCatalogEntry_bannerImageMember1
     * @return ApiGameCatalogEntry_bannerImageMember1|null
    */
    public function getApiGameCatalogEntryBannerImageMember1(): ?ApiGameCatalogEntry_bannerImageMember1 {
        return $this->apiGameCatalogEntry_bannerImageMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameCatalogEntryBannerImageMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameCatalogEntryBannerImageMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameCatalogEntryBannerImageMember1());
        }
    }

    /**
     * Sets the ApiGameCatalogEntry_bannerImageMember1 property value. Composed type representation for type ApiGameCatalogEntry_bannerImageMember1
     * @param ApiGameCatalogEntry_bannerImageMember1|null $value Value to set for the ApiGameCatalogEntry_bannerImageMember1 property.
    */
    public function setApiGameCatalogEntryBannerImageMember1(?ApiGameCatalogEntry_bannerImageMember1 $value): void {
        $this->apiGameCatalogEntry_bannerImageMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

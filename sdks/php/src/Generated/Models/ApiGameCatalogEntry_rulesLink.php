<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameCatalogEntry_rulesLinkMember1, string
*/
class ApiGameCatalogEntry_rulesLink implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameCatalogEntry_rulesLinkMember1|null $apiGameCatalogEntry_rulesLinkMember1 Composed type representation for type ApiGameCatalogEntry_rulesLinkMember1
    */
    private ?ApiGameCatalogEntry_rulesLinkMember1 $apiGameCatalogEntry_rulesLinkMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameCatalogEntry_rulesLink
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameCatalogEntry_rulesLink {
        $result = new ApiGameCatalogEntry_rulesLink();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGameCatalogEntryRulesLinkMember1(new ApiGameCatalogEntry_rulesLinkMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type ApiGameCatalogEntry_rulesLinkMember1
     * @return ApiGameCatalogEntry_rulesLinkMember1|null
    */
    public function getApiGameCatalogEntryRulesLinkMember1(): ?ApiGameCatalogEntry_rulesLinkMember1 {
        return $this->apiGameCatalogEntry_rulesLinkMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameCatalogEntryRulesLinkMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameCatalogEntryRulesLinkMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameCatalogEntryRulesLinkMember1());
        }
    }

    /**
     * Sets the ApiGameCatalogEntry_rulesLinkMember1 property value. Composed type representation for type ApiGameCatalogEntry_rulesLinkMember1
     * @param ApiGameCatalogEntry_rulesLinkMember1|null $value Value to set for the ApiGameCatalogEntry_rulesLinkMember1 property.
    */
    public function setApiGameCatalogEntryRulesLinkMember1(?ApiGameCatalogEntry_rulesLinkMember1 $value): void {
        $this->apiGameCatalogEntry_rulesLinkMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiStrategy_previewUrlMember1, string
*/
class ApiStrategy_previewUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiStrategy_previewUrlMember1|null $apiStrategy_previewUrlMember1 Composed type representation for type ApiStrategy_previewUrlMember1
    */
    private ?ApiStrategy_previewUrlMember1 $apiStrategy_previewUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategy_previewUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategy_previewUrl {
        $result = new ApiStrategy_previewUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiStrategyPreviewUrlMember1(new ApiStrategy_previewUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type ApiStrategy_previewUrlMember1
     * @return ApiStrategy_previewUrlMember1|null
    */
    public function getApiStrategyPreviewUrlMember1(): ?ApiStrategy_previewUrlMember1 {
        return $this->apiStrategy_previewUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiStrategyPreviewUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiStrategyPreviewUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiStrategyPreviewUrlMember1());
        }
    }

    /**
     * Sets the ApiStrategy_previewUrlMember1 property value. Composed type representation for type ApiStrategy_previewUrlMember1
     * @param ApiStrategy_previewUrlMember1|null $value Value to set for the ApiStrategy_previewUrlMember1 property.
    */
    public function setApiStrategyPreviewUrlMember1(?ApiStrategy_previewUrlMember1 $value): void {
        $this->apiStrategy_previewUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_thumbnailUrlMember1, string
*/
class ApiPrimaryStream_thumbnailUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_thumbnailUrlMember1|null $apiPrimaryStream_thumbnailUrlMember1 Composed type representation for type ApiPrimaryStream_thumbnailUrlMember1
    */
    private ?ApiPrimaryStream_thumbnailUrlMember1 $apiPrimaryStream_thumbnailUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_thumbnailUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_thumbnailUrl {
        $result = new ApiPrimaryStream_thumbnailUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiPrimaryStreamThumbnailUrlMember1(new ApiPrimaryStream_thumbnailUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_thumbnailUrlMember1 property value. Composed type representation for type ApiPrimaryStream_thumbnailUrlMember1
     * @return ApiPrimaryStream_thumbnailUrlMember1|null
    */
    public function getApiPrimaryStreamThumbnailUrlMember1(): ?ApiPrimaryStream_thumbnailUrlMember1 {
        return $this->apiPrimaryStream_thumbnailUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamThumbnailUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamThumbnailUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamThumbnailUrlMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_thumbnailUrlMember1 property value. Composed type representation for type ApiPrimaryStream_thumbnailUrlMember1
     * @param ApiPrimaryStream_thumbnailUrlMember1|null $value Value to set for the ApiPrimaryStream_thumbnailUrlMember1 property.
    */
    public function setApiPrimaryStreamThumbnailUrlMember1(?ApiPrimaryStream_thumbnailUrlMember1 $value): void {
        $this->apiPrimaryStream_thumbnailUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

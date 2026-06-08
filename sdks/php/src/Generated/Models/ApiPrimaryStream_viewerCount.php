<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiPrimaryStream_viewerCountMember1, int
*/
class ApiPrimaryStream_viewerCount implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiPrimaryStream_viewerCountMember1|null $apiPrimaryStream_viewerCountMember1 Composed type representation for type ApiPrimaryStream_viewerCountMember1
    */
    private ?ApiPrimaryStream_viewerCountMember1 $apiPrimaryStream_viewerCountMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream_viewerCount
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream_viewerCount {
        $result = new ApiPrimaryStream_viewerCount();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setApiPrimaryStreamViewerCountMember1(new ApiPrimaryStream_viewerCountMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type ApiPrimaryStream_viewerCountMember1
     * @return ApiPrimaryStream_viewerCountMember1|null
    */
    public function getApiPrimaryStreamViewerCountMember1(): ?ApiPrimaryStream_viewerCountMember1 {
        return $this->apiPrimaryStream_viewerCountMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiPrimaryStreamViewerCountMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiPrimaryStreamViewerCountMember1());
        }
        return [];
    }

    /**
     * Gets the integer property value. Composed type representation for type int
     * @return int|null
    */
    public function getInteger(): ?int {
        return $this->integer;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getApiPrimaryStreamViewerCountMember1());
        }
    }

    /**
     * Sets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type ApiPrimaryStream_viewerCountMember1
     * @param ApiPrimaryStream_viewerCountMember1|null $value Value to set for the ApiPrimaryStream_viewerCountMember1 property.
    */
    public function setApiPrimaryStreamViewerCountMember1(?ApiPrimaryStream_viewerCountMember1 $value): void {
        $this->apiPrimaryStream_viewerCountMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}

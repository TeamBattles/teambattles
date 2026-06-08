<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGamePlaylist_imageMember1, string
*/
class ApiGamePlaylist_image implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGamePlaylist_imageMember1|null $apiGamePlaylist_imageMember1 Composed type representation for type ApiGamePlaylist_imageMember1
    */
    private ?ApiGamePlaylist_imageMember1 $apiGamePlaylist_imageMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGamePlaylist_image
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGamePlaylist_image {
        $result = new ApiGamePlaylist_image();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiGamePlaylistImageMember1(new ApiGamePlaylist_imageMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type ApiGamePlaylist_imageMember1
     * @return ApiGamePlaylist_imageMember1|null
    */
    public function getApiGamePlaylistImageMember1(): ?ApiGamePlaylist_imageMember1 {
        return $this->apiGamePlaylist_imageMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGamePlaylistImageMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGamePlaylistImageMember1());
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
            $writer->writeObjectValue(null, $this->getApiGamePlaylistImageMember1());
        }
    }

    /**
     * Sets the ApiGamePlaylist_imageMember1 property value. Composed type representation for type ApiGamePlaylist_imageMember1
     * @param ApiGamePlaylist_imageMember1|null $value Value to set for the ApiGamePlaylist_imageMember1 property.
    */
    public function setApiGamePlaylistImageMember1(?ApiGamePlaylist_imageMember1 $value): void {
        $this->apiGamePlaylist_imageMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

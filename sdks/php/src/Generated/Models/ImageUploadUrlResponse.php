<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A freshly minted Convex storage upload URL. POST the image to it to receive a storageId for use on a downstream write.
*/
class ImageUploadUrlResponse implements Parsable 
{
    /**
     * @var string|null $uploadUrl Short-lived, single-use URL to POST the image bytes to.
    */
    private ?string $uploadUrl = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ImageUploadUrlResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ImageUploadUrlResponse {
        return new ImageUploadUrlResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'uploadUrl' => fn(ParseNode $n) => $o->setUploadUrl($n->getStringValue()),
        ];
    }

    /**
     * Gets the uploadUrl property value. Short-lived, single-use URL to POST the image bytes to.
     * @return string|null
    */
    public function getUploadUrl(): ?string {
        return $this->uploadUrl;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('uploadUrl', $this->getUploadUrl());
    }

    /**
     * Sets the uploadUrl property value. Short-lived, single-use URL to POST the image bytes to.
     * @param string|null $value Value to set for the uploadUrl property.
    */
    public function setUploadUrl(?string $value): void {
        $this->uploadUrl = $value;
    }

}

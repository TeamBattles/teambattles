<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A stored, NSFW-scanned image bound to the API key owner.
*/
class BoundImageUploadResponse implements Parsable 
{
    /**
     * @var string|null $storageId Convex storage id, already bound to the API key owner. Use it on a write.
    */
    private ?string $storageId = null;
    
    /**
     * @var string|null $url Public CDN URL for the stored image.
    */
    private ?string $url = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return BoundImageUploadResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): BoundImageUploadResponse {
        return new BoundImageUploadResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'storageId' => fn(ParseNode $n) => $o->setStorageId($n->getStringValue()),
            'url' => fn(ParseNode $n) => $o->setUrl($n->getStringValue()),
        ];
    }

    /**
     * Gets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
     * @return string|null
    */
    public function getStorageId(): ?string {
        return $this->storageId;
    }

    /**
     * Gets the url property value. Public CDN URL for the stored image.
     * @return string|null
    */
    public function getUrl(): ?string {
        return $this->url;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('storageId', $this->getStorageId());
        $writer->writeStringValue('url', $this->getUrl());
    }

    /**
     * Sets the storageId property value. Convex storage id, already bound to the API key owner. Use it on a write.
     * @param string|null $value Value to set for the storageId property.
    */
    public function setStorageId(?string $value): void {
        $this->storageId = $value;
    }

    /**
     * Sets the url property value. Public CDN URL for the stored image.
     * @param string|null $value Value to set for the url property.
    */
    public function setUrl(?string $value): void {
        $this->url = $value;
    }

}

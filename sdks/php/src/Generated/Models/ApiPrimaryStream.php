<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The user's primary (highest-viewer) live stream.
*/
class ApiPrimaryStream implements Parsable 
{
    /**
     * @var string|null $gameName Game/category being streamed, when known.
    */
    private ?string $gameName = null;
    
    /**
     * @var string|null $lastLiveAt ISO timestamp the user was last observed live, when known.
    */
    private ?string $lastLiveAt = null;
    
    /**
     * @var StreamPlatform|null $platform Supported streaming platform.
    */
    private ?StreamPlatform $platform = null;
    
    /**
     * @var string|null $startedAt Stream start time (platform-provided ISO timestamp), when known.
    */
    private ?string $startedAt = null;
    
    /**
     * @var string|null $streamUrl Watch URL, when known.
    */
    private ?string $streamUrl = null;
    
    /**
     * @var string|null $thumbnailUrl Stream thumbnail URL, when known.
    */
    private ?string $thumbnailUrl = null;
    
    /**
     * @var string|null $title Stream title, when known.
    */
    private ?string $title = null;
    
    /**
     * @var ApiPrimaryStream_viewerCount|null $viewerCount Current viewer count, when known.
    */
    private ?ApiPrimaryStream_viewerCount $viewerCount = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiPrimaryStream
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiPrimaryStream {
        return new ApiPrimaryStream();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameName' => fn(ParseNode $n) => $o->setGameName($n->getStringValue()),
            'lastLiveAt' => fn(ParseNode $n) => $o->setLastLiveAt($n->getStringValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(StreamPlatform::class)),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getStringValue()),
            'streamUrl' => fn(ParseNode $n) => $o->setStreamUrl($n->getStringValue()),
            'thumbnailUrl' => fn(ParseNode $n) => $o->setThumbnailUrl($n->getStringValue()),
            'title' => fn(ParseNode $n) => $o->setTitle($n->getStringValue()),
            'viewerCount' => fn(ParseNode $n) => $o->setViewerCount($n->getObjectValue([ApiPrimaryStream_viewerCount::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gameName property value. Game/category being streamed, when known.
     * @return string|null
    */
    public function getGameName(): ?string {
        return $this->gameName;
    }

    /**
     * Gets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @return string|null
    */
    public function getLastLiveAt(): ?string {
        return $this->lastLiveAt;
    }

    /**
     * Gets the platform property value. Supported streaming platform.
     * @return StreamPlatform|null
    */
    public function getPlatform(): ?StreamPlatform {
        return $this->platform;
    }

    /**
     * Gets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
     * @return string|null
    */
    public function getStartedAt(): ?string {
        return $this->startedAt;
    }

    /**
     * Gets the streamUrl property value. Watch URL, when known.
     * @return string|null
    */
    public function getStreamUrl(): ?string {
        return $this->streamUrl;
    }

    /**
     * Gets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @return string|null
    */
    public function getThumbnailUrl(): ?string {
        return $this->thumbnailUrl;
    }

    /**
     * Gets the title property value. Stream title, when known.
     * @return string|null
    */
    public function getTitle(): ?string {
        return $this->title;
    }

    /**
     * Gets the viewerCount property value. Current viewer count, when known.
     * @return ApiPrimaryStream_viewerCount|null
    */
    public function getViewerCount(): ?ApiPrimaryStream_viewerCount {
        return $this->viewerCount;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameName', $this->getGameName());
        $writer->writeStringValue('lastLiveAt', $this->getLastLiveAt());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeStringValue('startedAt', $this->getStartedAt());
        $writer->writeStringValue('streamUrl', $this->getStreamUrl());
        $writer->writeStringValue('thumbnailUrl', $this->getThumbnailUrl());
        $writer->writeStringValue('title', $this->getTitle());
        $writer->writeObjectValue('viewerCount', $this->getViewerCount());
    }

    /**
     * Sets the gameName property value. Game/category being streamed, when known.
     * @param string|null $value Value to set for the gameName property.
    */
    public function setGameName(?string $value): void {
        $this->gameName = $value;
    }

    /**
     * Sets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @param string|null $value Value to set for the lastLiveAt property.
    */
    public function setLastLiveAt(?string $value): void {
        $this->lastLiveAt = $value;
    }

    /**
     * Sets the platform property value. Supported streaming platform.
     * @param StreamPlatform|null $value Value to set for the platform property.
    */
    public function setPlatform(?StreamPlatform $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
     * @param string|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?string $value): void {
        $this->startedAt = $value;
    }

    /**
     * Sets the streamUrl property value. Watch URL, when known.
     * @param string|null $value Value to set for the streamUrl property.
    */
    public function setStreamUrl(?string $value): void {
        $this->streamUrl = $value;
    }

    /**
     * Sets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @param string|null $value Value to set for the thumbnailUrl property.
    */
    public function setThumbnailUrl(?string $value): void {
        $this->thumbnailUrl = $value;
    }

    /**
     * Sets the title property value. Stream title, when known.
     * @param string|null $value Value to set for the title property.
    */
    public function setTitle(?string $value): void {
        $this->title = $value;
    }

    /**
     * Sets the viewerCount property value. Current viewer count, when known.
     * @param ApiPrimaryStream_viewerCount|null $value Value to set for the viewerCount property.
    */
    public function setViewerCount(?ApiPrimaryStream_viewerCount $value): void {
        $this->viewerCount = $value;
    }

}

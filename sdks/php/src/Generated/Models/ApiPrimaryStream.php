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
     * @var ApiPrimaryStream_gameName|null $gameName Game/category being streamed, when known.
    */
    private ?ApiPrimaryStream_gameName $gameName = null;
    
    /**
     * @var ApiPrimaryStream_lastLiveAt|null $lastLiveAt ISO timestamp the user was last observed live, when known.
    */
    private ?ApiPrimaryStream_lastLiveAt $lastLiveAt = null;
    
    /**
     * @var StreamPlatform|null $platform Supported streaming platform.
    */
    private ?StreamPlatform $platform = null;
    
    /**
     * @var ApiPrimaryStream_startedAt|null $startedAt Stream start time (platform-provided ISO timestamp), when known.
    */
    private ?ApiPrimaryStream_startedAt $startedAt = null;
    
    /**
     * @var ApiPrimaryStream_streamUrl|null $streamUrl Watch URL, when known.
    */
    private ?ApiPrimaryStream_streamUrl $streamUrl = null;
    
    /**
     * @var ApiPrimaryStream_thumbnailUrl|null $thumbnailUrl Stream thumbnail URL, when known.
    */
    private ?ApiPrimaryStream_thumbnailUrl $thumbnailUrl = null;
    
    /**
     * @var ApiPrimaryStream_title|null $title Stream title, when known.
    */
    private ?ApiPrimaryStream_title $title = null;
    
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
            'gameName' => fn(ParseNode $n) => $o->setGameName($n->getObjectValue([ApiPrimaryStream_gameName::class, 'createFromDiscriminatorValue'])),
            'lastLiveAt' => fn(ParseNode $n) => $o->setLastLiveAt($n->getObjectValue([ApiPrimaryStream_lastLiveAt::class, 'createFromDiscriminatorValue'])),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getEnumValue(StreamPlatform::class)),
            'startedAt' => fn(ParseNode $n) => $o->setStartedAt($n->getObjectValue([ApiPrimaryStream_startedAt::class, 'createFromDiscriminatorValue'])),
            'streamUrl' => fn(ParseNode $n) => $o->setStreamUrl($n->getObjectValue([ApiPrimaryStream_streamUrl::class, 'createFromDiscriminatorValue'])),
            'thumbnailUrl' => fn(ParseNode $n) => $o->setThumbnailUrl($n->getObjectValue([ApiPrimaryStream_thumbnailUrl::class, 'createFromDiscriminatorValue'])),
            'title' => fn(ParseNode $n) => $o->setTitle($n->getObjectValue([ApiPrimaryStream_title::class, 'createFromDiscriminatorValue'])),
            'viewerCount' => fn(ParseNode $n) => $o->setViewerCount($n->getObjectValue([ApiPrimaryStream_viewerCount::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gameName property value. Game/category being streamed, when known.
     * @return ApiPrimaryStream_gameName|null
    */
    public function getGameName(): ?ApiPrimaryStream_gameName {
        return $this->gameName;
    }

    /**
     * Gets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @return ApiPrimaryStream_lastLiveAt|null
    */
    public function getLastLiveAt(): ?ApiPrimaryStream_lastLiveAt {
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
     * @return ApiPrimaryStream_startedAt|null
    */
    public function getStartedAt(): ?ApiPrimaryStream_startedAt {
        return $this->startedAt;
    }

    /**
     * Gets the streamUrl property value. Watch URL, when known.
     * @return ApiPrimaryStream_streamUrl|null
    */
    public function getStreamUrl(): ?ApiPrimaryStream_streamUrl {
        return $this->streamUrl;
    }

    /**
     * Gets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @return ApiPrimaryStream_thumbnailUrl|null
    */
    public function getThumbnailUrl(): ?ApiPrimaryStream_thumbnailUrl {
        return $this->thumbnailUrl;
    }

    /**
     * Gets the title property value. Stream title, when known.
     * @return ApiPrimaryStream_title|null
    */
    public function getTitle(): ?ApiPrimaryStream_title {
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
        $writer->writeObjectValue('gameName', $this->getGameName());
        $writer->writeObjectValue('lastLiveAt', $this->getLastLiveAt());
        $writer->writeEnumValue('platform', $this->getPlatform());
        $writer->writeObjectValue('startedAt', $this->getStartedAt());
        $writer->writeObjectValue('streamUrl', $this->getStreamUrl());
        $writer->writeObjectValue('thumbnailUrl', $this->getThumbnailUrl());
        $writer->writeObjectValue('title', $this->getTitle());
        $writer->writeObjectValue('viewerCount', $this->getViewerCount());
    }

    /**
     * Sets the gameName property value. Game/category being streamed, when known.
     * @param ApiPrimaryStream_gameName|null $value Value to set for the gameName property.
    */
    public function setGameName(?ApiPrimaryStream_gameName $value): void {
        $this->gameName = $value;
    }

    /**
     * Sets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
     * @param ApiPrimaryStream_lastLiveAt|null $value Value to set for the lastLiveAt property.
    */
    public function setLastLiveAt(?ApiPrimaryStream_lastLiveAt $value): void {
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
     * @param ApiPrimaryStream_startedAt|null $value Value to set for the startedAt property.
    */
    public function setStartedAt(?ApiPrimaryStream_startedAt $value): void {
        $this->startedAt = $value;
    }

    /**
     * Sets the streamUrl property value. Watch URL, when known.
     * @param ApiPrimaryStream_streamUrl|null $value Value to set for the streamUrl property.
    */
    public function setStreamUrl(?ApiPrimaryStream_streamUrl $value): void {
        $this->streamUrl = $value;
    }

    /**
     * Sets the thumbnailUrl property value. Stream thumbnail URL, when known.
     * @param ApiPrimaryStream_thumbnailUrl|null $value Value to set for the thumbnailUrl property.
    */
    public function setThumbnailUrl(?ApiPrimaryStream_thumbnailUrl $value): void {
        $this->thumbnailUrl = $value;
    }

    /**
     * Sets the title property value. Stream title, when known.
     * @param ApiPrimaryStream_title|null $value Value to set for the title property.
    */
    public function setTitle(?ApiPrimaryStream_title $value): void {
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

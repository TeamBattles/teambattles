<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe shareable strategy.
*/
class ApiStrategy implements Parsable 
{
    /**
     * @var ApiStrategy_createdAt|null $createdAt The createdAt property
    */
    private ?ApiStrategy_createdAt $createdAt = null;
    
    /**
     * @var ApiStrategy_description|null $description Author description, when set.
    */
    private ?ApiStrategy_description $description = null;
    
    /**
     * @var string|null $game Game slug the strategy targets.
    */
    private ?string $game = null;
    
    /**
     * @var string|null $id Strategy ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $mapId Built-in map slug, or the sentinel "__custom" for a custom map.
    */
    private ?string $mapId = null;
    
    /**
     * @var float|null $mapRotation Map render orientation in degrees (0, 90, 180, or 270).
    */
    private ?float $mapRotation = null;
    
    /**
     * @var string|null $name Strategy name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $ownerId Owning user ID.
    */
    private ?string $ownerId = null;
    
    /**
     * @var bool|null $playbackLoop Whether frame playback wraps from the last stage to the first.
    */
    private ?bool $playbackLoop = null;
    
    /**
     * @var ApiStrategy_previewUrl|null $previewUrl Freshly signed preview image URL, when a preview has been rendered.
    */
    private ?ApiStrategy_previewUrl $previewUrl = null;
    
    /**
     * @var string|null $shareSlug Public share slug.
    */
    private ?string $shareSlug = null;
    
    /**
     * @var int|null $stageCount The stageCount property
    */
    private ?int $stageCount = null;
    
    /**
     * @var array<ApiStrategyStage>|null $stages The stages property
    */
    private ?array $stages = null;
    
    /**
     * @var ApiStrategy_updatedAt|null $updatedAt The updatedAt property
    */
    private ?ApiStrategy_updatedAt $updatedAt = null;
    
    /**
     * @var StrategyVisibility|null $visibility Strategy share visibility setting.
    */
    private ?StrategyVisibility $visibility = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategy
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategy {
        return new ApiStrategy();
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return ApiStrategy_createdAt|null
    */
    public function getCreatedAt(): ?ApiStrategy_createdAt {
        return $this->createdAt;
    }

    /**
     * Gets the description property value. Author description, when set.
     * @return ApiStrategy_description|null
    */
    public function getDescription(): ?ApiStrategy_description {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiStrategy_createdAt::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getObjectValue([ApiStrategy_description::class, 'createFromDiscriminatorValue'])),
            'game' => fn(ParseNode $n) => $o->setGame($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'mapId' => fn(ParseNode $n) => $o->setMapId($n->getStringValue()),
            'mapRotation' => fn(ParseNode $n) => $o->setMapRotation($n->getFloatValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'ownerId' => fn(ParseNode $n) => $o->setOwnerId($n->getStringValue()),
            'playbackLoop' => fn(ParseNode $n) => $o->setPlaybackLoop($n->getBooleanValue()),
            'previewUrl' => fn(ParseNode $n) => $o->setPreviewUrl($n->getObjectValue([ApiStrategy_previewUrl::class, 'createFromDiscriminatorValue'])),
            'shareSlug' => fn(ParseNode $n) => $o->setShareSlug($n->getStringValue()),
            'stageCount' => fn(ParseNode $n) => $o->setStageCount($n->getIntegerValue()),
            'stages' => fn(ParseNode $n) => $o->setStages($n->getCollectionOfObjectValues([ApiStrategyStage::class, 'createFromDiscriminatorValue'])),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getObjectValue([ApiStrategy_updatedAt::class, 'createFromDiscriminatorValue'])),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(StrategyVisibility::class)),
        ];
    }

    /**
     * Gets the game property value. Game slug the strategy targets.
     * @return string|null
    */
    public function getGame(): ?string {
        return $this->game;
    }

    /**
     * Gets the id property value. Strategy ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the mapId property value. Built-in map slug, or the sentinel "__custom" for a custom map.
     * @return string|null
    */
    public function getMapId(): ?string {
        return $this->mapId;
    }

    /**
     * Gets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
     * @return float|null
    */
    public function getMapRotation(): ?float {
        return $this->mapRotation;
    }

    /**
     * Gets the name property value. Strategy name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the ownerId property value. Owning user ID.
     * @return string|null
    */
    public function getOwnerId(): ?string {
        return $this->ownerId;
    }

    /**
     * Gets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
     * @return bool|null
    */
    public function getPlaybackLoop(): ?bool {
        return $this->playbackLoop;
    }

    /**
     * Gets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
     * @return ApiStrategy_previewUrl|null
    */
    public function getPreviewUrl(): ?ApiStrategy_previewUrl {
        return $this->previewUrl;
    }

    /**
     * Gets the shareSlug property value. Public share slug.
     * @return string|null
    */
    public function getShareSlug(): ?string {
        return $this->shareSlug;
    }

    /**
     * Gets the stageCount property value. The stageCount property
     * @return int|null
    */
    public function getStageCount(): ?int {
        return $this->stageCount;
    }

    /**
     * Gets the stages property value. The stages property
     * @return array<ApiStrategyStage>|null
    */
    public function getStages(): ?array {
        return $this->stages;
    }

    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return ApiStrategy_updatedAt|null
    */
    public function getUpdatedAt(): ?ApiStrategy_updatedAt {
        return $this->updatedAt;
    }

    /**
     * Gets the visibility property value. Strategy share visibility setting.
     * @return StrategyVisibility|null
    */
    public function getVisibility(): ?StrategyVisibility {
        return $this->visibility;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('description', $this->getDescription());
        $writer->writeStringValue('game', $this->getGame());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('mapId', $this->getMapId());
        $writer->writeFloatValue('mapRotation', $this->getMapRotation());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('ownerId', $this->getOwnerId());
        $writer->writeBooleanValue('playbackLoop', $this->getPlaybackLoop());
        $writer->writeObjectValue('previewUrl', $this->getPreviewUrl());
        $writer->writeStringValue('shareSlug', $this->getShareSlug());
        $writer->writeIntegerValue('stageCount', $this->getStageCount());
        $writer->writeCollectionOfObjectValues('stages', $this->getStages());
        $writer->writeObjectValue('updatedAt', $this->getUpdatedAt());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param ApiStrategy_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ApiStrategy_createdAt $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the description property value. Author description, when set.
     * @param ApiStrategy_description|null $value Value to set for the description property.
    */
    public function setDescription(?ApiStrategy_description $value): void {
        $this->description = $value;
    }

    /**
     * Sets the game property value. Game slug the strategy targets.
     * @param string|null $value Value to set for the game property.
    */
    public function setGame(?string $value): void {
        $this->game = $value;
    }

    /**
     * Sets the id property value. Strategy ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the mapId property value. Built-in map slug, or the sentinel "__custom" for a custom map.
     * @param string|null $value Value to set for the mapId property.
    */
    public function setMapId(?string $value): void {
        $this->mapId = $value;
    }

    /**
     * Sets the mapRotation property value. Map render orientation in degrees (0, 90, 180, or 270).
     * @param float|null $value Value to set for the mapRotation property.
    */
    public function setMapRotation(?float $value): void {
        $this->mapRotation = $value;
    }

    /**
     * Sets the name property value. Strategy name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the ownerId property value. Owning user ID.
     * @param string|null $value Value to set for the ownerId property.
    */
    public function setOwnerId(?string $value): void {
        $this->ownerId = $value;
    }

    /**
     * Sets the playbackLoop property value. Whether frame playback wraps from the last stage to the first.
     * @param bool|null $value Value to set for the playbackLoop property.
    */
    public function setPlaybackLoop(?bool $value): void {
        $this->playbackLoop = $value;
    }

    /**
     * Sets the previewUrl property value. Freshly signed preview image URL, when a preview has been rendered.
     * @param ApiStrategy_previewUrl|null $value Value to set for the previewUrl property.
    */
    public function setPreviewUrl(?ApiStrategy_previewUrl $value): void {
        $this->previewUrl = $value;
    }

    /**
     * Sets the shareSlug property value. Public share slug.
     * @param string|null $value Value to set for the shareSlug property.
    */
    public function setShareSlug(?string $value): void {
        $this->shareSlug = $value;
    }

    /**
     * Sets the stageCount property value. The stageCount property
     * @param int|null $value Value to set for the stageCount property.
    */
    public function setStageCount(?int $value): void {
        $this->stageCount = $value;
    }

    /**
     * Sets the stages property value. The stages property
     * @param array<ApiStrategyStage>|null $value Value to set for the stages property.
    */
    public function setStages(?array $value): void {
        $this->stages = $value;
    }

    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param ApiStrategy_updatedAt|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?ApiStrategy_updatedAt $value): void {
        $this->updatedAt = $value;
    }

    /**
     * Sets the visibility property value. Strategy share visibility setting.
     * @param StrategyVisibility|null $value Value to set for the visibility property.
    */
    public function setVisibility(?StrategyVisibility $value): void {
        $this->visibility = $value;
    }

}

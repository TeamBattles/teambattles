<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Static public game catalog entry.
*/
class ApiGameCatalogEntry implements Parsable 
{
    /**
     * @var string|null $bannerImage The bannerImage property
    */
    private ?string $bannerImage = null;
    
    /**
     * @var string|null $category The category property
    */
    private ?string $category = null;
    
    /**
     * @var string|null $convexId Active Convex games-table ID, when available for match APIs.
    */
    private ?string $convexId = null;
    
    /**
     * @var string|null $coverImage The coverImage property
    */
    private ?string $coverImage = null;
    
    /**
     * @var int|null $defaultTeamSize The defaultTeamSize property
    */
    private ?int $defaultTeamSize = null;
    
    /**
     * @var string|null $descriptionKey The descriptionKey property
    */
    private ?string $descriptionKey = null;
    
    /**
     * @var bool|null $hasCompetitiveMode The hasCompetitiveMode property
    */
    private ?bool $hasCompetitiveMode = null;
    
    /**
     * @var string|null $id Static public game ID/slug.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isAvailableForMatchApi The isAvailableForMatchApi property
    */
    private ?bool $isAvailableForMatchApi = null;
    
    /**
     * @var bool|null $isComingSoon The isComingSoon property
    */
    private ?bool $isComingSoon = null;
    
    /**
     * @var array<ApiGameMap>|null $maps The maps property
    */
    private ?array $maps = null;
    
    /**
     * @var array<ApiGameModeMapPool>|null $modeMapPools The modeMapPools property
    */
    private ?array $modeMapPools = null;
    
    /**
     * @var array<ApiGameMode>|null $modes The modes property
    */
    private ?array $modes = null;
    
    /**
     * @var string|null $nameKey The nameKey property
    */
    private ?string $nameKey = null;
    
    /**
     * @var array<ApiGamePlaylist>|null $playlists The playlists property
    */
    private ?array $playlists = null;
    
    /**
     * @var string|null $rulesLink The rulesLink property
    */
    private ?string $rulesLink = null;
    
    /**
     * @var string|null $shortNameKey The shortNameKey property
    */
    private ?string $shortNameKey = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameCatalogEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameCatalogEntry {
        return new ApiGameCatalogEntry();
    }

    /**
     * Gets the bannerImage property value. The bannerImage property
     * @return string|null
    */
    public function getBannerImage(): ?string {
        return $this->bannerImage;
    }

    /**
     * Gets the category property value. The category property
     * @return string|null
    */
    public function getCategory(): ?string {
        return $this->category;
    }

    /**
     * Gets the convexId property value. Active Convex games-table ID, when available for match APIs.
     * @return string|null
    */
    public function getConvexId(): ?string {
        return $this->convexId;
    }

    /**
     * Gets the coverImage property value. The coverImage property
     * @return string|null
    */
    public function getCoverImage(): ?string {
        return $this->coverImage;
    }

    /**
     * Gets the defaultTeamSize property value. The defaultTeamSize property
     * @return int|null
    */
    public function getDefaultTeamSize(): ?int {
        return $this->defaultTeamSize;
    }

    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return string|null
    */
    public function getDescriptionKey(): ?string {
        return $this->descriptionKey;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'bannerImage' => fn(ParseNode $n) => $o->setBannerImage($n->getStringValue()),
            'category' => fn(ParseNode $n) => $o->setCategory($n->getStringValue()),
            'convexId' => fn(ParseNode $n) => $o->setConvexId($n->getStringValue()),
            'coverImage' => fn(ParseNode $n) => $o->setCoverImage($n->getStringValue()),
            'defaultTeamSize' => fn(ParseNode $n) => $o->setDefaultTeamSize($n->getIntegerValue()),
            'descriptionKey' => fn(ParseNode $n) => $o->setDescriptionKey($n->getStringValue()),
            'hasCompetitiveMode' => fn(ParseNode $n) => $o->setHasCompetitiveMode($n->getBooleanValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isAvailableForMatchApi' => fn(ParseNode $n) => $o->setIsAvailableForMatchApi($n->getBooleanValue()),
            'isComingSoon' => fn(ParseNode $n) => $o->setIsComingSoon($n->getBooleanValue()),
            'maps' => fn(ParseNode $n) => $o->setMaps($n->getCollectionOfObjectValues([ApiGameMap::class, 'createFromDiscriminatorValue'])),
            'modeMapPools' => fn(ParseNode $n) => $o->setModeMapPools($n->getCollectionOfObjectValues([ApiGameModeMapPool::class, 'createFromDiscriminatorValue'])),
            'modes' => fn(ParseNode $n) => $o->setModes($n->getCollectionOfObjectValues([ApiGameMode::class, 'createFromDiscriminatorValue'])),
            'nameKey' => fn(ParseNode $n) => $o->setNameKey($n->getStringValue()),
            'playlists' => fn(ParseNode $n) => $o->setPlaylists($n->getCollectionOfObjectValues([ApiGamePlaylist::class, 'createFromDiscriminatorValue'])),
            'rulesLink' => fn(ParseNode $n) => $o->setRulesLink($n->getStringValue()),
            'shortNameKey' => fn(ParseNode $n) => $o->setShortNameKey($n->getStringValue()),
        ];
    }

    /**
     * Gets the hasCompetitiveMode property value. The hasCompetitiveMode property
     * @return bool|null
    */
    public function getHasCompetitiveMode(): ?bool {
        return $this->hasCompetitiveMode;
    }

    /**
     * Gets the id property value. Static public game ID/slug.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
     * @return bool|null
    */
    public function getIsAvailableForMatchApi(): ?bool {
        return $this->isAvailableForMatchApi;
    }

    /**
     * Gets the isComingSoon property value. The isComingSoon property
     * @return bool|null
    */
    public function getIsComingSoon(): ?bool {
        return $this->isComingSoon;
    }

    /**
     * Gets the maps property value. The maps property
     * @return array<ApiGameMap>|null
    */
    public function getMaps(): ?array {
        return $this->maps;
    }

    /**
     * Gets the modeMapPools property value. The modeMapPools property
     * @return array<ApiGameModeMapPool>|null
    */
    public function getModeMapPools(): ?array {
        return $this->modeMapPools;
    }

    /**
     * Gets the modes property value. The modes property
     * @return array<ApiGameMode>|null
    */
    public function getModes(): ?array {
        return $this->modes;
    }

    /**
     * Gets the nameKey property value. The nameKey property
     * @return string|null
    */
    public function getNameKey(): ?string {
        return $this->nameKey;
    }

    /**
     * Gets the playlists property value. The playlists property
     * @return array<ApiGamePlaylist>|null
    */
    public function getPlaylists(): ?array {
        return $this->playlists;
    }

    /**
     * Gets the rulesLink property value. The rulesLink property
     * @return string|null
    */
    public function getRulesLink(): ?string {
        return $this->rulesLink;
    }

    /**
     * Gets the shortNameKey property value. The shortNameKey property
     * @return string|null
    */
    public function getShortNameKey(): ?string {
        return $this->shortNameKey;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('bannerImage', $this->getBannerImage());
        $writer->writeStringValue('category', $this->getCategory());
        $writer->writeStringValue('convexId', $this->getConvexId());
        $writer->writeStringValue('coverImage', $this->getCoverImage());
        $writer->writeIntegerValue('defaultTeamSize', $this->getDefaultTeamSize());
        $writer->writeStringValue('descriptionKey', $this->getDescriptionKey());
        $writer->writeBooleanValue('hasCompetitiveMode', $this->getHasCompetitiveMode());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isAvailableForMatchApi', $this->getIsAvailableForMatchApi());
        $writer->writeBooleanValue('isComingSoon', $this->getIsComingSoon());
        $writer->writeCollectionOfObjectValues('maps', $this->getMaps());
        $writer->writeCollectionOfObjectValues('modeMapPools', $this->getModeMapPools());
        $writer->writeCollectionOfObjectValues('modes', $this->getModes());
        $writer->writeStringValue('nameKey', $this->getNameKey());
        $writer->writeCollectionOfObjectValues('playlists', $this->getPlaylists());
        $writer->writeStringValue('rulesLink', $this->getRulesLink());
        $writer->writeStringValue('shortNameKey', $this->getShortNameKey());
    }

    /**
     * Sets the bannerImage property value. The bannerImage property
     * @param string|null $value Value to set for the bannerImage property.
    */
    public function setBannerImage(?string $value): void {
        $this->bannerImage = $value;
    }

    /**
     * Sets the category property value. The category property
     * @param string|null $value Value to set for the category property.
    */
    public function setCategory(?string $value): void {
        $this->category = $value;
    }

    /**
     * Sets the convexId property value. Active Convex games-table ID, when available for match APIs.
     * @param string|null $value Value to set for the convexId property.
    */
    public function setConvexId(?string $value): void {
        $this->convexId = $value;
    }

    /**
     * Sets the coverImage property value. The coverImage property
     * @param string|null $value Value to set for the coverImage property.
    */
    public function setCoverImage(?string $value): void {
        $this->coverImage = $value;
    }

    /**
     * Sets the defaultTeamSize property value. The defaultTeamSize property
     * @param int|null $value Value to set for the defaultTeamSize property.
    */
    public function setDefaultTeamSize(?int $value): void {
        $this->defaultTeamSize = $value;
    }

    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param string|null $value Value to set for the descriptionKey property.
    */
    public function setDescriptionKey(?string $value): void {
        $this->descriptionKey = $value;
    }

    /**
     * Sets the hasCompetitiveMode property value. The hasCompetitiveMode property
     * @param bool|null $value Value to set for the hasCompetitiveMode property.
    */
    public function setHasCompetitiveMode(?bool $value): void {
        $this->hasCompetitiveMode = $value;
    }

    /**
     * Sets the id property value. Static public game ID/slug.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isAvailableForMatchApi property value. The isAvailableForMatchApi property
     * @param bool|null $value Value to set for the isAvailableForMatchApi property.
    */
    public function setIsAvailableForMatchApi(?bool $value): void {
        $this->isAvailableForMatchApi = $value;
    }

    /**
     * Sets the isComingSoon property value. The isComingSoon property
     * @param bool|null $value Value to set for the isComingSoon property.
    */
    public function setIsComingSoon(?bool $value): void {
        $this->isComingSoon = $value;
    }

    /**
     * Sets the maps property value. The maps property
     * @param array<ApiGameMap>|null $value Value to set for the maps property.
    */
    public function setMaps(?array $value): void {
        $this->maps = $value;
    }

    /**
     * Sets the modeMapPools property value. The modeMapPools property
     * @param array<ApiGameModeMapPool>|null $value Value to set for the modeMapPools property.
    */
    public function setModeMapPools(?array $value): void {
        $this->modeMapPools = $value;
    }

    /**
     * Sets the modes property value. The modes property
     * @param array<ApiGameMode>|null $value Value to set for the modes property.
    */
    public function setModes(?array $value): void {
        $this->modes = $value;
    }

    /**
     * Sets the nameKey property value. The nameKey property
     * @param string|null $value Value to set for the nameKey property.
    */
    public function setNameKey(?string $value): void {
        $this->nameKey = $value;
    }

    /**
     * Sets the playlists property value. The playlists property
     * @param array<ApiGamePlaylist>|null $value Value to set for the playlists property.
    */
    public function setPlaylists(?array $value): void {
        $this->playlists = $value;
    }

    /**
     * Sets the rulesLink property value. The rulesLink property
     * @param string|null $value Value to set for the rulesLink property.
    */
    public function setRulesLink(?string $value): void {
        $this->rulesLink = $value;
    }

    /**
     * Sets the shortNameKey property value. The shortNameKey property
     * @param string|null $value Value to set for the shortNameKey property.
    */
    public function setShortNameKey(?string $value): void {
        $this->shortNameKey = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe user trophy. Event linkage fields are intentionally omitted.
*/
class ApiUserTrophy implements Parsable 
{
    /**
     * @var ApiUserTrophy_awardedAt|null $awardedAt The awardedAt property
    */
    private ?ApiUserTrophy_awardedAt $awardedAt = null;
    
    /**
     * @var ApiUserTrophy_description|null $description The description property
    */
    private ?ApiUserTrophy_description $description = null;
    
    /**
     * @var ApiUserTrophy_iconUrl|null $iconUrl The iconUrl property
    */
    private ?ApiUserTrophy_iconUrl $iconUrl = null;
    
    /**
     * @var string|null $id Trophy award ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiUserTrophy_rarity|null $rarity The rarity property
    */
    private ?ApiUserTrophy_rarity $rarity = null;
    
    /**
     * @var ApiUserTrophy_title|null $title The title property
    */
    private ?ApiUserTrophy_title $title = null;
    
    /**
     * @var string|null $trophyId Trophy definition ID.
    */
    private ?string $trophyId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTrophy
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTrophy {
        return new ApiUserTrophy();
    }

    /**
     * Gets the awardedAt property value. The awardedAt property
     * @return ApiUserTrophy_awardedAt|null
    */
    public function getAwardedAt(): ?ApiUserTrophy_awardedAt {
        return $this->awardedAt;
    }

    /**
     * Gets the description property value. The description property
     * @return ApiUserTrophy_description|null
    */
    public function getDescription(): ?ApiUserTrophy_description {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'awardedAt' => fn(ParseNode $n) => $o->setAwardedAt($n->getObjectValue([ApiUserTrophy_awardedAt::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getObjectValue([ApiUserTrophy_description::class, 'createFromDiscriminatorValue'])),
            'iconUrl' => fn(ParseNode $n) => $o->setIconUrl($n->getObjectValue([ApiUserTrophy_iconUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'rarity' => fn(ParseNode $n) => $o->setRarity($n->getObjectValue([ApiUserTrophy_rarity::class, 'createFromDiscriminatorValue'])),
            'title' => fn(ParseNode $n) => $o->setTitle($n->getObjectValue([ApiUserTrophy_title::class, 'createFromDiscriminatorValue'])),
            'trophyId' => fn(ParseNode $n) => $o->setTrophyId($n->getStringValue()),
        ];
    }

    /**
     * Gets the iconUrl property value. The iconUrl property
     * @return ApiUserTrophy_iconUrl|null
    */
    public function getIconUrl(): ?ApiUserTrophy_iconUrl {
        return $this->iconUrl;
    }

    /**
     * Gets the id property value. Trophy award ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the rarity property value. The rarity property
     * @return ApiUserTrophy_rarity|null
    */
    public function getRarity(): ?ApiUserTrophy_rarity {
        return $this->rarity;
    }

    /**
     * Gets the title property value. The title property
     * @return ApiUserTrophy_title|null
    */
    public function getTitle(): ?ApiUserTrophy_title {
        return $this->title;
    }

    /**
     * Gets the trophyId property value. Trophy definition ID.
     * @return string|null
    */
    public function getTrophyId(): ?string {
        return $this->trophyId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('awardedAt', $this->getAwardedAt());
        $writer->writeObjectValue('description', $this->getDescription());
        $writer->writeObjectValue('iconUrl', $this->getIconUrl());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('rarity', $this->getRarity());
        $writer->writeObjectValue('title', $this->getTitle());
        $writer->writeStringValue('trophyId', $this->getTrophyId());
    }

    /**
     * Sets the awardedAt property value. The awardedAt property
     * @param ApiUserTrophy_awardedAt|null $value Value to set for the awardedAt property.
    */
    public function setAwardedAt(?ApiUserTrophy_awardedAt $value): void {
        $this->awardedAt = $value;
    }

    /**
     * Sets the description property value. The description property
     * @param ApiUserTrophy_description|null $value Value to set for the description property.
    */
    public function setDescription(?ApiUserTrophy_description $value): void {
        $this->description = $value;
    }

    /**
     * Sets the iconUrl property value. The iconUrl property
     * @param ApiUserTrophy_iconUrl|null $value Value to set for the iconUrl property.
    */
    public function setIconUrl(?ApiUserTrophy_iconUrl $value): void {
        $this->iconUrl = $value;
    }

    /**
     * Sets the id property value. Trophy award ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the rarity property value. The rarity property
     * @param ApiUserTrophy_rarity|null $value Value to set for the rarity property.
    */
    public function setRarity(?ApiUserTrophy_rarity $value): void {
        $this->rarity = $value;
    }

    /**
     * Sets the title property value. The title property
     * @param ApiUserTrophy_title|null $value Value to set for the title property.
    */
    public function setTitle(?ApiUserTrophy_title $value): void {
        $this->title = $value;
    }

    /**
     * Sets the trophyId property value. Trophy definition ID.
     * @param string|null $value Value to set for the trophyId property.
    */
    public function setTrophyId(?string $value): void {
        $this->trophyId = $value;
    }

}

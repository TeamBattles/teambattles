<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Static game mode definition.
*/
class ApiGameMode implements Parsable 
{
    /**
     * @var ApiGameMode_descriptionKey|null $descriptionKey The descriptionKey property
    */
    private ?ApiGameMode_descriptionKey $descriptionKey = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var ApiGameMode_image|null $image The image property
    */
    private ?ApiGameMode_image $image = null;
    
    /**
     * @var array<string>|null $mapIds The mapIds property
    */
    private ?array $mapIds = null;
    
    /**
     * @var string|null $nameKey The nameKey property
    */
    private ?string $nameKey = null;
    
    /**
     * @var ApiGameMode_rewardBonus|null $rewardBonus The rewardBonus property
    */
    private ?ApiGameMode_rewardBonus $rewardBonus = null;
    
    /**
     * @var ApiGameMode_shortName|null $shortName The shortName property
    */
    private ?ApiGameMode_shortName $shortName = null;
    
    /**
     * @var bool|null $supportsDraftToggle The supportsDraftToggle property
    */
    private ?bool $supportsDraftToggle = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMode
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMode {
        return new ApiGameMode();
    }

    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return ApiGameMode_descriptionKey|null
    */
    public function getDescriptionKey(): ?ApiGameMode_descriptionKey {
        return $this->descriptionKey;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'descriptionKey' => fn(ParseNode $n) => $o->setDescriptionKey($n->getObjectValue([ApiGameMode_descriptionKey::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'image' => fn(ParseNode $n) => $o->setImage($n->getObjectValue([ApiGameMode_image::class, 'createFromDiscriminatorValue'])),
            'mapIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setMapIds($val);
            },
            'nameKey' => fn(ParseNode $n) => $o->setNameKey($n->getStringValue()),
            'rewardBonus' => fn(ParseNode $n) => $o->setRewardBonus($n->getObjectValue([ApiGameMode_rewardBonus::class, 'createFromDiscriminatorValue'])),
            'shortName' => fn(ParseNode $n) => $o->setShortName($n->getObjectValue([ApiGameMode_shortName::class, 'createFromDiscriminatorValue'])),
            'supportsDraftToggle' => fn(ParseNode $n) => $o->setSupportsDraftToggle($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the id property value. The id property
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the image property value. The image property
     * @return ApiGameMode_image|null
    */
    public function getImage(): ?ApiGameMode_image {
        return $this->image;
    }

    /**
     * Gets the mapIds property value. The mapIds property
     * @return array<string>|null
    */
    public function getMapIds(): ?array {
        return $this->mapIds;
    }

    /**
     * Gets the nameKey property value. The nameKey property
     * @return string|null
    */
    public function getNameKey(): ?string {
        return $this->nameKey;
    }

    /**
     * Gets the rewardBonus property value. The rewardBonus property
     * @return ApiGameMode_rewardBonus|null
    */
    public function getRewardBonus(): ?ApiGameMode_rewardBonus {
        return $this->rewardBonus;
    }

    /**
     * Gets the shortName property value. The shortName property
     * @return ApiGameMode_shortName|null
    */
    public function getShortName(): ?ApiGameMode_shortName {
        return $this->shortName;
    }

    /**
     * Gets the supportsDraftToggle property value. The supportsDraftToggle property
     * @return bool|null
    */
    public function getSupportsDraftToggle(): ?bool {
        return $this->supportsDraftToggle;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('descriptionKey', $this->getDescriptionKey());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('image', $this->getImage());
        $writer->writeCollectionOfPrimitiveValues('mapIds', $this->getMapIds());
        $writer->writeStringValue('nameKey', $this->getNameKey());
        $writer->writeObjectValue('rewardBonus', $this->getRewardBonus());
        $writer->writeObjectValue('shortName', $this->getShortName());
        $writer->writeBooleanValue('supportsDraftToggle', $this->getSupportsDraftToggle());
    }

    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param ApiGameMode_descriptionKey|null $value Value to set for the descriptionKey property.
    */
    public function setDescriptionKey(?ApiGameMode_descriptionKey $value): void {
        $this->descriptionKey = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the image property value. The image property
     * @param ApiGameMode_image|null $value Value to set for the image property.
    */
    public function setImage(?ApiGameMode_image $value): void {
        $this->image = $value;
    }

    /**
     * Sets the mapIds property value. The mapIds property
     * @param array<string>|null $value Value to set for the mapIds property.
    */
    public function setMapIds(?array $value): void {
        $this->mapIds = $value;
    }

    /**
     * Sets the nameKey property value. The nameKey property
     * @param string|null $value Value to set for the nameKey property.
    */
    public function setNameKey(?string $value): void {
        $this->nameKey = $value;
    }

    /**
     * Sets the rewardBonus property value. The rewardBonus property
     * @param ApiGameMode_rewardBonus|null $value Value to set for the rewardBonus property.
    */
    public function setRewardBonus(?ApiGameMode_rewardBonus $value): void {
        $this->rewardBonus = $value;
    }

    /**
     * Sets the shortName property value. The shortName property
     * @param ApiGameMode_shortName|null $value Value to set for the shortName property.
    */
    public function setShortName(?ApiGameMode_shortName $value): void {
        $this->shortName = $value;
    }

    /**
     * Sets the supportsDraftToggle property value. The supportsDraftToggle property
     * @param bool|null $value Value to set for the supportsDraftToggle property.
    */
    public function setSupportsDraftToggle(?bool $value): void {
        $this->supportsDraftToggle = $value;
    }

}

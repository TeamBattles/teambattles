<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Static game map definition.
*/
class ApiGameMap implements Parsable 
{
    /**
     * @var ApiGameMap_coverImage|null $coverImage The coverImage property
    */
    private ?ApiGameMap_coverImage $coverImage = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isReleased The isReleased property
    */
    private ?bool $isReleased = null;
    
    /**
     * @var ApiGameMap_minimapImage|null $minimapImage The minimapImage property
    */
    private ?ApiGameMap_minimapImage $minimapImage = null;
    
    /**
     * @var string|null $nameKey The nameKey property
    */
    private ?string $nameKey = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMap
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMap {
        return new ApiGameMap();
    }

    /**
     * Gets the coverImage property value. The coverImage property
     * @return ApiGameMap_coverImage|null
    */
    public function getCoverImage(): ?ApiGameMap_coverImage {
        return $this->coverImage;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'coverImage' => fn(ParseNode $n) => $o->setCoverImage($n->getObjectValue([ApiGameMap_coverImage::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isReleased' => fn(ParseNode $n) => $o->setIsReleased($n->getBooleanValue()),
            'minimapImage' => fn(ParseNode $n) => $o->setMinimapImage($n->getObjectValue([ApiGameMap_minimapImage::class, 'createFromDiscriminatorValue'])),
            'nameKey' => fn(ParseNode $n) => $o->setNameKey($n->getStringValue()),
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
     * Gets the isReleased property value. The isReleased property
     * @return bool|null
    */
    public function getIsReleased(): ?bool {
        return $this->isReleased;
    }

    /**
     * Gets the minimapImage property value. The minimapImage property
     * @return ApiGameMap_minimapImage|null
    */
    public function getMinimapImage(): ?ApiGameMap_minimapImage {
        return $this->minimapImage;
    }

    /**
     * Gets the nameKey property value. The nameKey property
     * @return string|null
    */
    public function getNameKey(): ?string {
        return $this->nameKey;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('coverImage', $this->getCoverImage());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isReleased', $this->getIsReleased());
        $writer->writeObjectValue('minimapImage', $this->getMinimapImage());
        $writer->writeStringValue('nameKey', $this->getNameKey());
    }

    /**
     * Sets the coverImage property value. The coverImage property
     * @param ApiGameMap_coverImage|null $value Value to set for the coverImage property.
    */
    public function setCoverImage(?ApiGameMap_coverImage $value): void {
        $this->coverImage = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isReleased property value. The isReleased property
     * @param bool|null $value Value to set for the isReleased property.
    */
    public function setIsReleased(?bool $value): void {
        $this->isReleased = $value;
    }

    /**
     * Sets the minimapImage property value. The minimapImage property
     * @param ApiGameMap_minimapImage|null $value Value to set for the minimapImage property.
    */
    public function setMinimapImage(?ApiGameMap_minimapImage $value): void {
        $this->minimapImage = $value;
    }

    /**
     * Sets the nameKey property value. The nameKey property
     * @param string|null $value Value to set for the nameKey property.
    */
    public function setNameKey(?string $value): void {
        $this->nameKey = $value;
    }

}

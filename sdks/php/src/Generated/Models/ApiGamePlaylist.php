<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Game-scoped playlist definition.
*/
class ApiGamePlaylist implements Parsable 
{
    /**
     * @var array<string>|null $allowedGameModeIds The allowedGameModeIds property
    */
    private ?array $allowedGameModeIds = null;
    
    /**
     * @var ApiGamePlaylist_descriptionKey|null $descriptionKey The descriptionKey property
    */
    private ?ApiGamePlaylist_descriptionKey $descriptionKey = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var ApiGamePlaylist_image|null $image The image property
    */
    private ?ApiGamePlaylist_image $image = null;
    
    /**
     * @var string|null $nameKey The nameKey property
    */
    private ?string $nameKey = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGamePlaylist
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGamePlaylist {
        return new ApiGamePlaylist();
    }

    /**
     * Gets the allowedGameModeIds property value. The allowedGameModeIds property
     * @return array<string>|null
    */
    public function getAllowedGameModeIds(): ?array {
        return $this->allowedGameModeIds;
    }

    /**
     * Gets the descriptionKey property value. The descriptionKey property
     * @return ApiGamePlaylist_descriptionKey|null
    */
    public function getDescriptionKey(): ?ApiGamePlaylist_descriptionKey {
        return $this->descriptionKey;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'allowedGameModeIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setAllowedGameModeIds($val);
            },
            'descriptionKey' => fn(ParseNode $n) => $o->setDescriptionKey($n->getObjectValue([ApiGamePlaylist_descriptionKey::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'image' => fn(ParseNode $n) => $o->setImage($n->getObjectValue([ApiGamePlaylist_image::class, 'createFromDiscriminatorValue'])),
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
     * Gets the image property value. The image property
     * @return ApiGamePlaylist_image|null
    */
    public function getImage(): ?ApiGamePlaylist_image {
        return $this->image;
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
        $writer->writeCollectionOfPrimitiveValues('allowedGameModeIds', $this->getAllowedGameModeIds());
        $writer->writeObjectValue('descriptionKey', $this->getDescriptionKey());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('image', $this->getImage());
        $writer->writeStringValue('nameKey', $this->getNameKey());
    }

    /**
     * Sets the allowedGameModeIds property value. The allowedGameModeIds property
     * @param array<string>|null $value Value to set for the allowedGameModeIds property.
    */
    public function setAllowedGameModeIds(?array $value): void {
        $this->allowedGameModeIds = $value;
    }

    /**
     * Sets the descriptionKey property value. The descriptionKey property
     * @param ApiGamePlaylist_descriptionKey|null $value Value to set for the descriptionKey property.
    */
    public function setDescriptionKey(?ApiGamePlaylist_descriptionKey $value): void {
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
     * @param ApiGamePlaylist_image|null $value Value to set for the image property.
    */
    public function setImage(?ApiGamePlaylist_image $value): void {
        $this->image = $value;
    }

    /**
     * Sets the nameKey property value. The nameKey property
     * @param string|null $value Value to set for the nameKey property.
    */
    public function setNameKey(?string $value): void {
        $this->nameKey = $value;
    }

}

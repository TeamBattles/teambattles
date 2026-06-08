<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Compact live-status row returned by the batch endpoint.
*/
class ApiBatchStreamStatus implements Parsable 
{
    /**
     * @var string|null $id User ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isLive The isLive property
    */
    private ?bool $isLive = null;
    
    /**
     * @var array<StreamPlatform>|null $platforms The platforms property
    */
    private ?array $platforms = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiBatchStreamStatus
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiBatchStreamStatus {
        return new ApiBatchStreamStatus();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isLive' => fn(ParseNode $n) => $o->setIsLive($n->getBooleanValue()),
            'platforms' => fn(ParseNode $n) => $o->setPlatforms($n->getCollectionOfEnumValues(StreamPlatform::class)),
        ];
    }

    /**
     * Gets the id property value. User ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isLive property value. The isLive property
     * @return bool|null
    */
    public function getIsLive(): ?bool {
        return $this->isLive;
    }

    /**
     * Gets the platforms property value. The platforms property
     * @return array<StreamPlatform>|null
    */
    public function getPlatforms(): ?array {
        return $this->platforms;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isLive', $this->getIsLive());
        $writer->writeCollectionOfEnumValues('platforms', $this->getPlatforms());
    }

    /**
     * Sets the id property value. User ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isLive property value. The isLive property
     * @param bool|null $value Value to set for the isLive property.
    */
    public function setIsLive(?bool $value): void {
        $this->isLive = $value;
    }

    /**
     * Sets the platforms property value. The platforms property
     * @param array<StreamPlatform>|null $value Value to set for the platforms property.
    */
    public function setPlatforms(?array $value): void {
        $this->platforms = $value;
    }

}

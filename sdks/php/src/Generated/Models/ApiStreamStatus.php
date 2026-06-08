<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe live-stream status for a user.
*/
class ApiStreamStatus implements Parsable 
{
    /**
     * @var bool|null $isLive Whether the user is live on any platform.
    */
    private ?bool $isLive = null;
    
    /**
     * @var array<StreamPlatform>|null $platforms Platforms the user is currently live on.
    */
    private ?array $platforms = null;
    
    /**
     * @var ApiPrimaryStream|null $primaryStream Primary stream details, or null when offline.
    */
    private ?ApiPrimaryStream $primaryStream = null;
    
    /**
     * @var string|null $userId User ID these stream details belong to.
    */
    private ?string $userId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStreamStatus
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStreamStatus {
        return new ApiStreamStatus();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'isLive' => fn(ParseNode $n) => $o->setIsLive($n->getBooleanValue()),
            'platforms' => fn(ParseNode $n) => $o->setPlatforms($n->getCollectionOfEnumValues(StreamPlatform::class)),
            'primaryStream' => fn(ParseNode $n) => $o->setPrimaryStream($n->getObjectValue([ApiPrimaryStream::class, 'createFromDiscriminatorValue'])),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the isLive property value. Whether the user is live on any platform.
     * @return bool|null
    */
    public function getIsLive(): ?bool {
        return $this->isLive;
    }

    /**
     * Gets the platforms property value. Platforms the user is currently live on.
     * @return array<StreamPlatform>|null
    */
    public function getPlatforms(): ?array {
        return $this->platforms;
    }

    /**
     * Gets the primaryStream property value. Primary stream details, or null when offline.
     * @return ApiPrimaryStream|null
    */
    public function getPrimaryStream(): ?ApiPrimaryStream {
        return $this->primaryStream;
    }

    /**
     * Gets the userId property value. User ID these stream details belong to.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('isLive', $this->getIsLive());
        $writer->writeCollectionOfEnumValues('platforms', $this->getPlatforms());
        $writer->writeObjectValue('primaryStream', $this->getPrimaryStream());
        $writer->writeStringValue('userId', $this->getUserId());
    }

    /**
     * Sets the isLive property value. Whether the user is live on any platform.
     * @param bool|null $value Value to set for the isLive property.
    */
    public function setIsLive(?bool $value): void {
        $this->isLive = $value;
    }

    /**
     * Sets the platforms property value. Platforms the user is currently live on.
     * @param array<StreamPlatform>|null $value Value to set for the platforms property.
    */
    public function setPlatforms(?array $value): void {
        $this->platforms = $value;
    }

    /**
     * Sets the primaryStream property value. Primary stream details, or null when offline.
     * @param ApiPrimaryStream|null $value Value to set for the primaryStream property.
    */
    public function setPrimaryStream(?ApiPrimaryStream $value): void {
        $this->primaryStream = $value;
    }

    /**
     * Sets the userId property value. User ID these stream details belong to.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

}

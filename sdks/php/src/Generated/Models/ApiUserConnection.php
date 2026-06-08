<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe public account connection.
*/
class ApiUserConnection implements Parsable 
{
    /**
     * @var ApiUserConnection_connectedAt|null $connectedAt The connectedAt property
    */
    private ?ApiUserConnection_connectedAt $connectedAt = null;
    
    /**
     * @var string|null $id Connection ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isPrimary The isPrimary property
    */
    private ?bool $isPrimary = null;
    
    /**
     * @var bool|null $isVerified The isVerified property
    */
    private ?bool $isVerified = null;
    
    /**
     * @var string|null $platform Connected platform.
    */
    private ?string $platform = null;
    
    /**
     * @var ApiUserConnection_url|null $url The url property
    */
    private ?ApiUserConnection_url $url = null;
    
    /**
     * @var ApiUserConnection_username|null $username The username property
    */
    private ?ApiUserConnection_username $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserConnection
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserConnection {
        return new ApiUserConnection();
    }

    /**
     * Gets the connectedAt property value. The connectedAt property
     * @return ApiUserConnection_connectedAt|null
    */
    public function getConnectedAt(): ?ApiUserConnection_connectedAt {
        return $this->connectedAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'connectedAt' => fn(ParseNode $n) => $o->setConnectedAt($n->getObjectValue([ApiUserConnection_connectedAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isPrimary' => fn(ParseNode $n) => $o->setIsPrimary($n->getBooleanValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getStringValue()),
            'url' => fn(ParseNode $n) => $o->setUrl($n->getObjectValue([ApiUserConnection_url::class, 'createFromDiscriminatorValue'])),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getObjectValue([ApiUserConnection_username::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. Connection ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isPrimary property value. The isPrimary property
     * @return bool|null
    */
    public function getIsPrimary(): ?bool {
        return $this->isPrimary;
    }

    /**
     * Gets the isVerified property value. The isVerified property
     * @return bool|null
    */
    public function getIsVerified(): ?bool {
        return $this->isVerified;
    }

    /**
     * Gets the platform property value. Connected platform.
     * @return string|null
    */
    public function getPlatform(): ?string {
        return $this->platform;
    }

    /**
     * Gets the url property value. The url property
     * @return ApiUserConnection_url|null
    */
    public function getUrl(): ?ApiUserConnection_url {
        return $this->url;
    }

    /**
     * Gets the username property value. The username property
     * @return ApiUserConnection_username|null
    */
    public function getUsername(): ?ApiUserConnection_username {
        return $this->username;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('connectedAt', $this->getConnectedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isPrimary', $this->getIsPrimary());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeStringValue('platform', $this->getPlatform());
        $writer->writeObjectValue('url', $this->getUrl());
        $writer->writeObjectValue('username', $this->getUsername());
    }

    /**
     * Sets the connectedAt property value. The connectedAt property
     * @param ApiUserConnection_connectedAt|null $value Value to set for the connectedAt property.
    */
    public function setConnectedAt(?ApiUserConnection_connectedAt $value): void {
        $this->connectedAt = $value;
    }

    /**
     * Sets the id property value. Connection ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isPrimary property value. The isPrimary property
     * @param bool|null $value Value to set for the isPrimary property.
    */
    public function setIsPrimary(?bool $value): void {
        $this->isPrimary = $value;
    }

    /**
     * Sets the isVerified property value. The isVerified property
     * @param bool|null $value Value to set for the isVerified property.
    */
    public function setIsVerified(?bool $value): void {
        $this->isVerified = $value;
    }

    /**
     * Sets the platform property value. Connected platform.
     * @param string|null $value Value to set for the platform property.
    */
    public function setPlatform(?string $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the url property value. The url property
     * @param ApiUserConnection_url|null $value Value to set for the url property.
    */
    public function setUrl(?ApiUserConnection_url $value): void {
        $this->url = $value;
    }

    /**
     * Sets the username property value. The username property
     * @param ApiUserConnection_username|null $value Value to set for the username property.
    */
    public function setUsername(?ApiUserConnection_username $value): void {
        $this->username = $value;
    }

}

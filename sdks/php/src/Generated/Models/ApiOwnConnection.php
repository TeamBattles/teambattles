<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe connection for the API key owner, including private fields.
*/
class ApiOwnConnection implements Parsable 
{
    /**
     * @var ApiOwnConnection_connectedAt|null $connectedAt The connectedAt property
    */
    private ?ApiOwnConnection_connectedAt $connectedAt = null;
    
    /**
     * @var ApiOwnConnection_gamingPlatform|null $gamingPlatform Gaming platform (e.g. pc / console), when set.
    */
    private ?ApiOwnConnection_gamingPlatform $gamingPlatform = null;
    
    /**
     * @var string|null $id Connection ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isPrimary The isPrimary property
    */
    private ?bool $isPrimary = null;
    
    /**
     * @var bool|null $isSelfReported True when the connection was self-reported (ownership unverified).
    */
    private ?bool $isSelfReported = null;
    
    /**
     * @var bool|null $isVerified The isVerified property
    */
    private ?bool $isVerified = null;
    
    /**
     * @var string|null $platform Connected platform.
    */
    private ?string $platform = null;
    
    /**
     * @var ApiOwnConnection_region|null $region Connection region, when set.
    */
    private ?ApiOwnConnection_region $region = null;
    
    /**
     * @var bool|null $showOnProfile Whether the owner has chosen to show this connection on their profile.
    */
    private ?bool $showOnProfile = null;
    
    /**
     * @var ApiOwnConnection_url|null $url The url property
    */
    private ?ApiOwnConnection_url $url = null;
    
    /**
     * @var ApiOwnConnection_username|null $username The username property
    */
    private ?ApiOwnConnection_username $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOwnConnection
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOwnConnection {
        return new ApiOwnConnection();
    }

    /**
     * Gets the connectedAt property value. The connectedAt property
     * @return ApiOwnConnection_connectedAt|null
    */
    public function getConnectedAt(): ?ApiOwnConnection_connectedAt {
        return $this->connectedAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'connectedAt' => fn(ParseNode $n) => $o->setConnectedAt($n->getObjectValue([ApiOwnConnection_connectedAt::class, 'createFromDiscriminatorValue'])),
            'gamingPlatform' => fn(ParseNode $n) => $o->setGamingPlatform($n->getObjectValue([ApiOwnConnection_gamingPlatform::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isPrimary' => fn(ParseNode $n) => $o->setIsPrimary($n->getBooleanValue()),
            'isSelfReported' => fn(ParseNode $n) => $o->setIsSelfReported($n->getBooleanValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getStringValue()),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getObjectValue([ApiOwnConnection_region::class, 'createFromDiscriminatorValue'])),
            'showOnProfile' => fn(ParseNode $n) => $o->setShowOnProfile($n->getBooleanValue()),
            'url' => fn(ParseNode $n) => $o->setUrl($n->getObjectValue([ApiOwnConnection_url::class, 'createFromDiscriminatorValue'])),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getObjectValue([ApiOwnConnection_username::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
     * @return ApiOwnConnection_gamingPlatform|null
    */
    public function getGamingPlatform(): ?ApiOwnConnection_gamingPlatform {
        return $this->gamingPlatform;
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
     * Gets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
     * @return bool|null
    */
    public function getIsSelfReported(): ?bool {
        return $this->isSelfReported;
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
     * Gets the region property value. Connection region, when set.
     * @return ApiOwnConnection_region|null
    */
    public function getRegion(): ?ApiOwnConnection_region {
        return $this->region;
    }

    /**
     * Gets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
     * @return bool|null
    */
    public function getShowOnProfile(): ?bool {
        return $this->showOnProfile;
    }

    /**
     * Gets the url property value. The url property
     * @return ApiOwnConnection_url|null
    */
    public function getUrl(): ?ApiOwnConnection_url {
        return $this->url;
    }

    /**
     * Gets the username property value. The username property
     * @return ApiOwnConnection_username|null
    */
    public function getUsername(): ?ApiOwnConnection_username {
        return $this->username;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('connectedAt', $this->getConnectedAt());
        $writer->writeObjectValue('gamingPlatform', $this->getGamingPlatform());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isPrimary', $this->getIsPrimary());
        $writer->writeBooleanValue('isSelfReported', $this->getIsSelfReported());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeStringValue('platform', $this->getPlatform());
        $writer->writeObjectValue('region', $this->getRegion());
        $writer->writeBooleanValue('showOnProfile', $this->getShowOnProfile());
        $writer->writeObjectValue('url', $this->getUrl());
        $writer->writeObjectValue('username', $this->getUsername());
    }

    /**
     * Sets the connectedAt property value. The connectedAt property
     * @param ApiOwnConnection_connectedAt|null $value Value to set for the connectedAt property.
    */
    public function setConnectedAt(?ApiOwnConnection_connectedAt $value): void {
        $this->connectedAt = $value;
    }

    /**
     * Sets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
     * @param ApiOwnConnection_gamingPlatform|null $value Value to set for the gamingPlatform property.
    */
    public function setGamingPlatform(?ApiOwnConnection_gamingPlatform $value): void {
        $this->gamingPlatform = $value;
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
     * Sets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
     * @param bool|null $value Value to set for the isSelfReported property.
    */
    public function setIsSelfReported(?bool $value): void {
        $this->isSelfReported = $value;
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
     * Sets the region property value. Connection region, when set.
     * @param ApiOwnConnection_region|null $value Value to set for the region property.
    */
    public function setRegion(?ApiOwnConnection_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
     * @param bool|null $value Value to set for the showOnProfile property.
    */
    public function setShowOnProfile(?bool $value): void {
        $this->showOnProfile = $value;
    }

    /**
     * Sets the url property value. The url property
     * @param ApiOwnConnection_url|null $value Value to set for the url property.
    */
    public function setUrl(?ApiOwnConnection_url $value): void {
        $this->url = $value;
    }

    /**
     * Sets the username property value. The username property
     * @param ApiOwnConnection_username|null $value Value to set for the username property.
    */
    public function setUsername(?ApiOwnConnection_username $value): void {
        $this->username = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe public user profile.
*/
class ApiUserProfile implements Parsable 
{
    /**
     * @var string|null $avatarUrl Avatar image URL, when set.
    */
    private ?string $avatarUrl = null;
    
    /**
     * @var string|null $bannerUrl Banner image URL, when set.
    */
    private ?string $bannerUrl = null;
    
    /**
     * @var string|null $bio Public profile bio.
    */
    private ?string $bio = null;
    
    /**
     * @var ApiUserProfile_createdAt|null $createdAt The createdAt property
    */
    private ?ApiUserProfile_createdAt $createdAt = null;
    
    /**
     * @var string|null $id User ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isVerified The isVerified property
    */
    private ?bool $isVerified = null;
    
    /**
     * @var string|null $name Display name, when set.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $username User handle, when set.
    */
    private ?string $username = null;
    
    /**
     * @var ProfileVisibility|null $visibility Public profile visibility setting.
    */
    private ?ProfileVisibility $visibility = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserProfile
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserProfile {
        return new ApiUserProfile();
    }

    /**
     * Gets the avatarUrl property value. Avatar image URL, when set.
     * @return string|null
    */
    public function getAvatarUrl(): ?string {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. Banner image URL, when set.
     * @return string|null
    */
    public function getBannerUrl(): ?string {
        return $this->bannerUrl;
    }

    /**
     * Gets the bio property value. Public profile bio.
     * @return string|null
    */
    public function getBio(): ?string {
        return $this->bio;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return ApiUserProfile_createdAt|null
    */
    public function getCreatedAt(): ?ApiUserProfile_createdAt {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getStringValue()),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getStringValue()),
            'bio' => fn(ParseNode $n) => $o->setBio($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiUserProfile_createdAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(ProfileVisibility::class)),
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
     * Gets the isVerified property value. The isVerified property
     * @return bool|null
    */
    public function getIsVerified(): ?bool {
        return $this->isVerified;
    }

    /**
     * Gets the name property value. Display name, when set.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the username property value. User handle, when set.
     * @return string|null
    */
    public function getUsername(): ?string {
        return $this->username;
    }

    /**
     * Gets the visibility property value. Public profile visibility setting.
     * @return ProfileVisibility|null
    */
    public function getVisibility(): ?ProfileVisibility {
        return $this->visibility;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeStringValue('bannerUrl', $this->getBannerUrl());
        $writer->writeStringValue('bio', $this->getBio());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('username', $this->getUsername());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the avatarUrl property value. Avatar image URL, when set.
     * @param string|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?string $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. Banner image URL, when set.
     * @param string|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?string $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the bio property value. Public profile bio.
     * @param string|null $value Value to set for the bio property.
    */
    public function setBio(?string $value): void {
        $this->bio = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param ApiUserProfile_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ApiUserProfile_createdAt $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. User ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isVerified property value. The isVerified property
     * @param bool|null $value Value to set for the isVerified property.
    */
    public function setIsVerified(?bool $value): void {
        $this->isVerified = $value;
    }

    /**
     * Sets the name property value. Display name, when set.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the username property value. User handle, when set.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param ProfileVisibility|null $value Value to set for the visibility property.
    */
    public function setVisibility(?ProfileVisibility $value): void {
        $this->visibility = $value;
    }

}

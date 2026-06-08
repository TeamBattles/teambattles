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
     * @var ApiUserProfile_avatarUrl|null $avatarUrl Avatar image URL, when set.
    */
    private ?ApiUserProfile_avatarUrl $avatarUrl = null;
    
    /**
     * @var ApiUserProfile_bannerUrl|null $bannerUrl Banner image URL, when set.
    */
    private ?ApiUserProfile_bannerUrl $bannerUrl = null;
    
    /**
     * @var ApiUserProfile_bio|null $bio Public profile bio.
    */
    private ?ApiUserProfile_bio $bio = null;
    
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
     * @var ApiUserProfile_name|null $name Display name, when set.
    */
    private ?ApiUserProfile_name $name = null;
    
    /**
     * @var ApiUserProfile_username|null $username User handle, when set.
    */
    private ?ApiUserProfile_username $username = null;
    
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
     * @return ApiUserProfile_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiUserProfile_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. Banner image URL, when set.
     * @return ApiUserProfile_bannerUrl|null
    */
    public function getBannerUrl(): ?ApiUserProfile_bannerUrl {
        return $this->bannerUrl;
    }

    /**
     * Gets the bio property value. Public profile bio.
     * @return ApiUserProfile_bio|null
    */
    public function getBio(): ?ApiUserProfile_bio {
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
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiUserProfile_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([ApiUserProfile_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'bio' => fn(ParseNode $n) => $o->setBio($n->getObjectValue([ApiUserProfile_bio::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiUserProfile_createdAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getObjectValue([ApiUserProfile_name::class, 'createFromDiscriminatorValue'])),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getObjectValue([ApiUserProfile_username::class, 'createFromDiscriminatorValue'])),
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
     * @return ApiUserProfile_name|null
    */
    public function getName(): ?ApiUserProfile_name {
        return $this->name;
    }

    /**
     * Gets the username property value. User handle, when set.
     * @return ApiUserProfile_username|null
    */
    public function getUsername(): ?ApiUserProfile_username {
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
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeObjectValue('bio', $this->getBio());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeObjectValue('name', $this->getName());
        $writer->writeObjectValue('username', $this->getUsername());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the avatarUrl property value. Avatar image URL, when set.
     * @param ApiUserProfile_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiUserProfile_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. Banner image URL, when set.
     * @param ApiUserProfile_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?ApiUserProfile_bannerUrl $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the bio property value. Public profile bio.
     * @param ApiUserProfile_bio|null $value Value to set for the bio property.
    */
    public function setBio(?ApiUserProfile_bio $value): void {
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
     * @param ApiUserProfile_name|null $value Value to set for the name property.
    */
    public function setName(?ApiUserProfile_name $value): void {
        $this->name = $value;
    }

    /**
     * Sets the username property value. User handle, when set.
     * @param ApiUserProfile_username|null $value Value to set for the username property.
    */
    public function setUsername(?ApiUserProfile_username $value): void {
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

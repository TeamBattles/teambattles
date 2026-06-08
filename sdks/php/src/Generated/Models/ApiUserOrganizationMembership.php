<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe organization affiliation row on a user profile.
*/
class ApiUserOrganizationMembership implements Parsable 
{
    /**
     * @var ApiUserOrganizationMembership_avatarUrl|null $avatarUrl The avatarUrl property
    */
    private ?ApiUserOrganizationMembership_avatarUrl $avatarUrl = null;
    
    /**
     * @var string|null $id Organization ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiUserOrganizationMembership_joinedAt|null $joinedAt The joinedAt property
    */
    private ?ApiUserOrganizationMembership_joinedAt $joinedAt = null;
    
    /**
     * @var string|null $name Organization name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $role The role property
    */
    private ?string $role = null;
    
    /**
     * @var ApiUserOrganizationMembership_slug|null $slug The slug property
    */
    private ?ApiUserOrganizationMembership_slug $slug = null;
    
    /**
     * @var ApiUserOrganizationMembership_tag|null $tag The tag property
    */
    private ?ApiUserOrganizationMembership_tag $tag = null;
    
    /**
     * @var ProfileVisibility|null $visibility Public profile visibility setting.
    */
    private ?ProfileVisibility $visibility = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserOrganizationMembership
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserOrganizationMembership {
        return new ApiUserOrganizationMembership();
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return ApiUserOrganizationMembership_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiUserOrganizationMembership_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiUserOrganizationMembership_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'joinedAt' => fn(ParseNode $n) => $o->setJoinedAt($n->getObjectValue([ApiUserOrganizationMembership_joinedAt::class, 'createFromDiscriminatorValue'])),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'role' => fn(ParseNode $n) => $o->setRole($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getObjectValue([ApiUserOrganizationMembership_slug::class, 'createFromDiscriminatorValue'])),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getObjectValue([ApiUserOrganizationMembership_tag::class, 'createFromDiscriminatorValue'])),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(ProfileVisibility::class)),
        ];
    }

    /**
     * Gets the id property value. Organization ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return ApiUserOrganizationMembership_joinedAt|null
    */
    public function getJoinedAt(): ?ApiUserOrganizationMembership_joinedAt {
        return $this->joinedAt;
    }

    /**
     * Gets the name property value. Organization name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the role property value. The role property
     * @return string|null
    */
    public function getRole(): ?string {
        return $this->role;
    }

    /**
     * Gets the slug property value. The slug property
     * @return ApiUserOrganizationMembership_slug|null
    */
    public function getSlug(): ?ApiUserOrganizationMembership_slug {
        return $this->slug;
    }

    /**
     * Gets the tag property value. The tag property
     * @return ApiUserOrganizationMembership_tag|null
    */
    public function getTag(): ?ApiUserOrganizationMembership_tag {
        return $this->tag;
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
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('joinedAt', $this->getJoinedAt());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('role', $this->getRole());
        $writer->writeObjectValue('slug', $this->getSlug());
        $writer->writeObjectValue('tag', $this->getTag());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param ApiUserOrganizationMembership_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiUserOrganizationMembership_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the id property value. Organization ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param ApiUserOrganizationMembership_joinedAt|null $value Value to set for the joinedAt property.
    */
    public function setJoinedAt(?ApiUserOrganizationMembership_joinedAt $value): void {
        $this->joinedAt = $value;
    }

    /**
     * Sets the name property value. Organization name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the role property value. The role property
     * @param string|null $value Value to set for the role property.
    */
    public function setRole(?string $value): void {
        $this->role = $value;
    }

    /**
     * Sets the slug property value. The slug property
     * @param ApiUserOrganizationMembership_slug|null $value Value to set for the slug property.
    */
    public function setSlug(?ApiUserOrganizationMembership_slug $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param ApiUserOrganizationMembership_tag|null $value Value to set for the tag property.
    */
    public function setTag(?ApiUserOrganizationMembership_tag $value): void {
        $this->tag = $value;
    }

    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param ProfileVisibility|null $value Value to set for the visibility property.
    */
    public function setVisibility(?ProfileVisibility $value): void {
        $this->visibility = $value;
    }

}

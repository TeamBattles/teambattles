<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe team affiliation row on a user profile.
*/
class ApiUserTeamMembership implements Parsable 
{
    /**
     * @var ApiUserTeamMembership_avatarUrl|null $avatarUrl The avatarUrl property
    */
    private ?ApiUserTeamMembership_avatarUrl $avatarUrl = null;
    
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiUserTeamMembership_joinedAt|null $joinedAt The joinedAt property
    */
    private ?ApiUserTeamMembership_joinedAt $joinedAt = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var ApiOrganizationSummary|null $organization The organization property
    */
    private ?ApiOrganizationSummary $organization = null;
    
    /**
     * @var string|null $role The role property
    */
    private ?string $role = null;
    
    /**
     * @var ApiUserTeamMembership_slug|null $slug The slug property
    */
    private ?ApiUserTeamMembership_slug $slug = null;
    
    /**
     * @var ApiUserTeamMembership_tag|null $tag The tag property
    */
    private ?ApiUserTeamMembership_tag $tag = null;
    
    /**
     * @var ProfileVisibility|null $visibility Public profile visibility setting.
    */
    private ?ProfileVisibility $visibility = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiUserTeamMembership
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserTeamMembership {
        return new ApiUserTeamMembership();
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return ApiUserTeamMembership_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiUserTeamMembership_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiUserTeamMembership_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'joinedAt' => fn(ParseNode $n) => $o->setJoinedAt($n->getObjectValue([ApiUserTeamMembership_joinedAt::class, 'createFromDiscriminatorValue'])),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'organization' => fn(ParseNode $n) => $o->setOrganization($n->getObjectValue([ApiOrganizationSummary::class, 'createFromDiscriminatorValue'])),
            'role' => fn(ParseNode $n) => $o->setRole($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getObjectValue([ApiUserTeamMembership_slug::class, 'createFromDiscriminatorValue'])),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getObjectValue([ApiUserTeamMembership_tag::class, 'createFromDiscriminatorValue'])),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(ProfileVisibility::class)),
        ];
    }

    /**
     * Gets the id property value. Team ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return ApiUserTeamMembership_joinedAt|null
    */
    public function getJoinedAt(): ?ApiUserTeamMembership_joinedAt {
        return $this->joinedAt;
    }

    /**
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the organization property value. The organization property
     * @return ApiOrganizationSummary|null
    */
    public function getOrganization(): ?ApiOrganizationSummary {
        return $this->organization;
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
     * @return ApiUserTeamMembership_slug|null
    */
    public function getSlug(): ?ApiUserTeamMembership_slug {
        return $this->slug;
    }

    /**
     * Gets the tag property value. The tag property
     * @return ApiUserTeamMembership_tag|null
    */
    public function getTag(): ?ApiUserTeamMembership_tag {
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
        $writer->writeObjectValue('organization', $this->getOrganization());
        $writer->writeStringValue('role', $this->getRole());
        $writer->writeObjectValue('slug', $this->getSlug());
        $writer->writeObjectValue('tag', $this->getTag());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param ApiUserTeamMembership_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiUserTeamMembership_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the id property value. Team ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param ApiUserTeamMembership_joinedAt|null $value Value to set for the joinedAt property.
    */
    public function setJoinedAt(?ApiUserTeamMembership_joinedAt $value): void {
        $this->joinedAt = $value;
    }

    /**
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the organization property value. The organization property
     * @param ApiOrganizationSummary|null $value Value to set for the organization property.
    */
    public function setOrganization(?ApiOrganizationSummary $value): void {
        $this->organization = $value;
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
     * @param ApiUserTeamMembership_slug|null $value Value to set for the slug property.
    */
    public function setSlug(?ApiUserTeamMembership_slug $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param ApiUserTeamMembership_tag|null $value Value to set for the tag property.
    */
    public function setTag(?ApiUserTeamMembership_tag $value): void {
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

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Small API-safe team summary.
*/
class ApiTeamSummary implements Parsable 
{
    /**
     * @var ApiTeamSummary_avatarUrl|null $avatarUrl The avatarUrl property
    */
    private ?ApiTeamSummary_avatarUrl $avatarUrl = null;
    
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var ApiTeamSummary_slug|null $slug The slug property
    */
    private ?ApiTeamSummary_slug $slug = null;
    
    /**
     * @var ApiTeamSummary_tag|null $tag The tag property
    */
    private ?ApiTeamSummary_tag $tag = null;
    
    /**
     * @var ProfileVisibility|null $visibility Public profile visibility setting.
    */
    private ?ProfileVisibility $visibility = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamSummary
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamSummary {
        return new ApiTeamSummary();
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return ApiTeamSummary_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiTeamSummary_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiTeamSummary_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getObjectValue([ApiTeamSummary_slug::class, 'createFromDiscriminatorValue'])),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getObjectValue([ApiTeamSummary_tag::class, 'createFromDiscriminatorValue'])),
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
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the slug property value. The slug property
     * @return ApiTeamSummary_slug|null
    */
    public function getSlug(): ?ApiTeamSummary_slug {
        return $this->slug;
    }

    /**
     * Gets the tag property value. The tag property
     * @return ApiTeamSummary_tag|null
    */
    public function getTag(): ?ApiTeamSummary_tag {
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
        $writer->writeStringValue('name', $this->getName());
        $writer->writeObjectValue('slug', $this->getSlug());
        $writer->writeObjectValue('tag', $this->getTag());
        $writer->writeEnumValue('visibility', $this->getVisibility());
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param ApiTeamSummary_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiTeamSummary_avatarUrl $value): void {
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
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the slug property value. The slug property
     * @param ApiTeamSummary_slug|null $value Value to set for the slug property.
    */
    public function setSlug(?ApiTeamSummary_slug $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param ApiTeamSummary_tag|null $value Value to set for the tag property.
    */
    public function setTag(?ApiTeamSummary_tag $value): void {
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

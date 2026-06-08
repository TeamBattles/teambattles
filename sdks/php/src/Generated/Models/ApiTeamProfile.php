<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe team profile.
*/
class ApiTeamProfile implements Parsable 
{
    /**
     * @var ApiTeamProfile_avatarUrl|null $avatarUrl The avatarUrl property
    */
    private ?ApiTeamProfile_avatarUrl $avatarUrl = null;
    
    /**
     * @var ApiTeamProfile_bannerUrl|null $bannerUrl The bannerUrl property
    */
    private ?ApiTeamProfile_bannerUrl $bannerUrl = null;
    
    /**
     * @var ApiTeamProfile_createdAt|null $createdAt The createdAt property
    */
    private ?ApiTeamProfile_createdAt $createdAt = null;
    
    /**
     * @var ApiTeamProfile_description|null $description The description property
    */
    private ?ApiTeamProfile_description $description = null;
    
    /**
     * @var int|null $draws The draws property
    */
    private ?int $draws = null;
    
    /**
     * @var float|null $experience The experience property
    */
    private ?float $experience = null;
    
    /**
     * @var ApiTeamProfile_gameId|null $gameId The gameId property
    */
    private ?ApiTeamProfile_gameId $gameId = null;
    
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isMember The isMember property
    */
    private ?bool $isMember = null;
    
    /**
     * @var int|null $losses The losses property
    */
    private ?int $losses = null;
    
    /**
     * @var int|null $matchesPlayed The matchesPlayed property
    */
    private ?int $matchesPlayed = null;
    
    /**
     * @var int|null $memberCount The memberCount property
    */
    private ?int $memberCount = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var ApiTeamProfile_organizationId|null $organizationId The organizationId property
    */
    private ?ApiTeamProfile_organizationId $organizationId = null;
    
    /**
     * @var ApiTeamProfile_slug|null $slug The slug property
    */
    private ?ApiTeamProfile_slug $slug = null;
    
    /**
     * @var ApiTeamProfile_tag|null $tag The tag property
    */
    private ?ApiTeamProfile_tag $tag = null;
    
    /**
     * @var ProfileVisibility|null $visibility Public profile visibility setting.
    */
    private ?ProfileVisibility $visibility = null;
    
    /**
     * @var int|null $wins The wins property
    */
    private ?int $wins = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamProfile
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamProfile {
        return new ApiTeamProfile();
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return ApiTeamProfile_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiTeamProfile_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. The bannerUrl property
     * @return ApiTeamProfile_bannerUrl|null
    */
    public function getBannerUrl(): ?ApiTeamProfile_bannerUrl {
        return $this->bannerUrl;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return ApiTeamProfile_createdAt|null
    */
    public function getCreatedAt(): ?ApiTeamProfile_createdAt {
        return $this->createdAt;
    }

    /**
     * Gets the description property value. The description property
     * @return ApiTeamProfile_description|null
    */
    public function getDescription(): ?ApiTeamProfile_description {
        return $this->description;
    }

    /**
     * Gets the draws property value. The draws property
     * @return int|null
    */
    public function getDraws(): ?int {
        return $this->draws;
    }

    /**
     * Gets the experience property value. The experience property
     * @return float|null
    */
    public function getExperience(): ?float {
        return $this->experience;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiTeamProfile_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([ApiTeamProfile_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiTeamProfile_createdAt::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getObjectValue([ApiTeamProfile_description::class, 'createFromDiscriminatorValue'])),
            'draws' => fn(ParseNode $n) => $o->setDraws($n->getIntegerValue()),
            'experience' => fn(ParseNode $n) => $o->setExperience($n->getFloatValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getObjectValue([ApiTeamProfile_gameId::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isMember' => fn(ParseNode $n) => $o->setIsMember($n->getBooleanValue()),
            'losses' => fn(ParseNode $n) => $o->setLosses($n->getIntegerValue()),
            'matchesPlayed' => fn(ParseNode $n) => $o->setMatchesPlayed($n->getIntegerValue()),
            'memberCount' => fn(ParseNode $n) => $o->setMemberCount($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'organizationId' => fn(ParseNode $n) => $o->setOrganizationId($n->getObjectValue([ApiTeamProfile_organizationId::class, 'createFromDiscriminatorValue'])),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getObjectValue([ApiTeamProfile_slug::class, 'createFromDiscriminatorValue'])),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getObjectValue([ApiTeamProfile_tag::class, 'createFromDiscriminatorValue'])),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(ProfileVisibility::class)),
            'wins' => fn(ParseNode $n) => $o->setWins($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the gameId property value. The gameId property
     * @return ApiTeamProfile_gameId|null
    */
    public function getGameId(): ?ApiTeamProfile_gameId {
        return $this->gameId;
    }

    /**
     * Gets the id property value. Team ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isMember property value. The isMember property
     * @return bool|null
    */
    public function getIsMember(): ?bool {
        return $this->isMember;
    }

    /**
     * Gets the losses property value. The losses property
     * @return int|null
    */
    public function getLosses(): ?int {
        return $this->losses;
    }

    /**
     * Gets the matchesPlayed property value. The matchesPlayed property
     * @return int|null
    */
    public function getMatchesPlayed(): ?int {
        return $this->matchesPlayed;
    }

    /**
     * Gets the memberCount property value. The memberCount property
     * @return int|null
    */
    public function getMemberCount(): ?int {
        return $this->memberCount;
    }

    /**
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the organizationId property value. The organizationId property
     * @return ApiTeamProfile_organizationId|null
    */
    public function getOrganizationId(): ?ApiTeamProfile_organizationId {
        return $this->organizationId;
    }

    /**
     * Gets the slug property value. The slug property
     * @return ApiTeamProfile_slug|null
    */
    public function getSlug(): ?ApiTeamProfile_slug {
        return $this->slug;
    }

    /**
     * Gets the tag property value. The tag property
     * @return ApiTeamProfile_tag|null
    */
    public function getTag(): ?ApiTeamProfile_tag {
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
     * Gets the wins property value. The wins property
     * @return int|null
    */
    public function getWins(): ?int {
        return $this->wins;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('description', $this->getDescription());
        $writer->writeIntegerValue('draws', $this->getDraws());
        $writer->writeFloatValue('experience', $this->getExperience());
        $writer->writeObjectValue('gameId', $this->getGameId());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isMember', $this->getIsMember());
        $writer->writeIntegerValue('losses', $this->getLosses());
        $writer->writeIntegerValue('matchesPlayed', $this->getMatchesPlayed());
        $writer->writeIntegerValue('memberCount', $this->getMemberCount());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeObjectValue('organizationId', $this->getOrganizationId());
        $writer->writeObjectValue('slug', $this->getSlug());
        $writer->writeObjectValue('tag', $this->getTag());
        $writer->writeEnumValue('visibility', $this->getVisibility());
        $writer->writeIntegerValue('wins', $this->getWins());
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param ApiTeamProfile_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiTeamProfile_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. The bannerUrl property
     * @param ApiTeamProfile_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?ApiTeamProfile_bannerUrl $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param ApiTeamProfile_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ApiTeamProfile_createdAt $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the description property value. The description property
     * @param ApiTeamProfile_description|null $value Value to set for the description property.
    */
    public function setDescription(?ApiTeamProfile_description $value): void {
        $this->description = $value;
    }

    /**
     * Sets the draws property value. The draws property
     * @param int|null $value Value to set for the draws property.
    */
    public function setDraws(?int $value): void {
        $this->draws = $value;
    }

    /**
     * Sets the experience property value. The experience property
     * @param float|null $value Value to set for the experience property.
    */
    public function setExperience(?float $value): void {
        $this->experience = $value;
    }

    /**
     * Sets the gameId property value. The gameId property
     * @param ApiTeamProfile_gameId|null $value Value to set for the gameId property.
    */
    public function setGameId(?ApiTeamProfile_gameId $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the id property value. Team ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isMember property value. The isMember property
     * @param bool|null $value Value to set for the isMember property.
    */
    public function setIsMember(?bool $value): void {
        $this->isMember = $value;
    }

    /**
     * Sets the losses property value. The losses property
     * @param int|null $value Value to set for the losses property.
    */
    public function setLosses(?int $value): void {
        $this->losses = $value;
    }

    /**
     * Sets the matchesPlayed property value. The matchesPlayed property
     * @param int|null $value Value to set for the matchesPlayed property.
    */
    public function setMatchesPlayed(?int $value): void {
        $this->matchesPlayed = $value;
    }

    /**
     * Sets the memberCount property value. The memberCount property
     * @param int|null $value Value to set for the memberCount property.
    */
    public function setMemberCount(?int $value): void {
        $this->memberCount = $value;
    }

    /**
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the organizationId property value. The organizationId property
     * @param ApiTeamProfile_organizationId|null $value Value to set for the organizationId property.
    */
    public function setOrganizationId(?ApiTeamProfile_organizationId $value): void {
        $this->organizationId = $value;
    }

    /**
     * Sets the slug property value. The slug property
     * @param ApiTeamProfile_slug|null $value Value to set for the slug property.
    */
    public function setSlug(?ApiTeamProfile_slug $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param ApiTeamProfile_tag|null $value Value to set for the tag property.
    */
    public function setTag(?ApiTeamProfile_tag $value): void {
        $this->tag = $value;
    }

    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param ProfileVisibility|null $value Value to set for the visibility property.
    */
    public function setVisibility(?ProfileVisibility $value): void {
        $this->visibility = $value;
    }

    /**
     * Sets the wins property value. The wins property
     * @param int|null $value Value to set for the wins property.
    */
    public function setWins(?int $value): void {
        $this->wins = $value;
    }

}

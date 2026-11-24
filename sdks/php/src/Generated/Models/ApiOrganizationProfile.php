<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe organization profile.
*/
class ApiOrganizationProfile implements Parsable 
{
    /**
     * @var string|null $avatarUrl The avatarUrl property
    */
    private ?string $avatarUrl = null;
    
    /**
     * @var string|null $bannerUrl The bannerUrl property
    */
    private ?string $bannerUrl = null;
    
    /**
     * @var ApiOrganizationProfile_createdAt|null $createdAt The createdAt property
    */
    private ?ApiOrganizationProfile_createdAt $createdAt = null;
    
    /**
     * @var string|null $description The description property
    */
    private ?string $description = null;
    
    /**
     * @var int|null $draws The draws property
    */
    private ?int $draws = null;
    
    /**
     * @var string|null $id Organization ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isMember The isMember property
    */
    private ?bool $isMember = null;
    
    /**
     * @var bool|null $isVerified The isVerified property
    */
    private ?bool $isVerified = null;
    
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
     * @var string|null $name Organization name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $slug The slug property
    */
    private ?string $slug = null;
    
    /**
     * @var string|null $tag The tag property
    */
    private ?string $tag = null;
    
    /**
     * @var int|null $teamCount The teamCount property
    */
    private ?int $teamCount = null;
    
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
     * @return ApiOrganizationProfile
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOrganizationProfile {
        return new ApiOrganizationProfile();
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return string|null
    */
    public function getAvatarUrl(): ?string {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. The bannerUrl property
     * @return string|null
    */
    public function getBannerUrl(): ?string {
        return $this->bannerUrl;
    }

    /**
     * Gets the createdAt property value. The createdAt property
     * @return ApiOrganizationProfile_createdAt|null
    */
    public function getCreatedAt(): ?ApiOrganizationProfile_createdAt {
        return $this->createdAt;
    }

    /**
     * Gets the description property value. The description property
     * @return string|null
    */
    public function getDescription(): ?string {
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
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getStringValue()),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getStringValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([ApiOrganizationProfile_createdAt::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'draws' => fn(ParseNode $n) => $o->setDraws($n->getIntegerValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isMember' => fn(ParseNode $n) => $o->setIsMember($n->getBooleanValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'losses' => fn(ParseNode $n) => $o->setLosses($n->getIntegerValue()),
            'matchesPlayed' => fn(ParseNode $n) => $o->setMatchesPlayed($n->getIntegerValue()),
            'memberCount' => fn(ParseNode $n) => $o->setMemberCount($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
            'teamCount' => fn(ParseNode $n) => $o->setTeamCount($n->getIntegerValue()),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(ProfileVisibility::class)),
            'wins' => fn(ParseNode $n) => $o->setWins($n->getIntegerValue()),
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
     * Gets the isMember property value. The isMember property
     * @return bool|null
    */
    public function getIsMember(): ?bool {
        return $this->isMember;
    }

    /**
     * Gets the isVerified property value. The isVerified property
     * @return bool|null
    */
    public function getIsVerified(): ?bool {
        return $this->isVerified;
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
     * Gets the name property value. Organization name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the slug property value. The slug property
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the tag property value. The tag property
     * @return string|null
    */
    public function getTag(): ?string {
        return $this->tag;
    }

    /**
     * Gets the teamCount property value. The teamCount property
     * @return int|null
    */
    public function getTeamCount(): ?int {
        return $this->teamCount;
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
        $writer->writeStringValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeStringValue('bannerUrl', $this->getBannerUrl());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeIntegerValue('draws', $this->getDraws());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isMember', $this->getIsMember());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeIntegerValue('losses', $this->getLosses());
        $writer->writeIntegerValue('matchesPlayed', $this->getMatchesPlayed());
        $writer->writeIntegerValue('memberCount', $this->getMemberCount());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeStringValue('tag', $this->getTag());
        $writer->writeIntegerValue('teamCount', $this->getTeamCount());
        $writer->writeEnumValue('visibility', $this->getVisibility());
        $writer->writeIntegerValue('wins', $this->getWins());
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param string|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?string $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. The bannerUrl property
     * @param string|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?string $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the createdAt property value. The createdAt property
     * @param ApiOrganizationProfile_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?ApiOrganizationProfile_createdAt $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the description property value. The description property
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
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
     * Sets the id property value. Organization ID.
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
     * Sets the isVerified property value. The isVerified property
     * @param bool|null $value Value to set for the isVerified property.
    */
    public function setIsVerified(?bool $value): void {
        $this->isVerified = $value;
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
     * Sets the name property value. Organization name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the slug property value. The slug property
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

    /**
     * Sets the teamCount property value. The teamCount property
     * @param int|null $value Value to set for the teamCount property.
    */
    public function setTeamCount(?int $value): void {
        $this->teamCount = $value;
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

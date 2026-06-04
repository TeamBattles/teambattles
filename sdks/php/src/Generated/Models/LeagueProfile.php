<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Public profile for a single league.
*/
class LeagueProfile implements Parsable 
{
    /**
     * @var array<LeagueProfile_activeSeasons>|null $activeSeasons Currently active seasons.
    */
    private ?array $activeSeasons = null;
    
    /**
     * @var LeagueProfile_avatarUrl|null $avatarUrl League avatar image URL.
    */
    private ?LeagueProfile_avatarUrl $avatarUrl = null;
    
    /**
     * @var LeagueProfile_bannerUrl|null $bannerUrl League banner image URL.
    */
    private ?LeagueProfile_bannerUrl $bannerUrl = null;
    
    /**
     * @var float|null $createdAt Creation timestamp (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $description League description.
    */
    private ?string $description = null;
    
    /**
     * @var array<LeagueProfile_games>|null $games Games associated with the league.
    */
    private ?array $games = null;
    
    /**
     * @var string|null $id League ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isFeatured Whether the league is featured.
    */
    private ?bool $isFeatured = null;
    
    /**
     * @var bool|null $isVerified Whether the league is verified.
    */
    private ?bool $isVerified = null;
    
    /**
     * @var string|null $name League display name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $slug URL-friendly league identifier.
    */
    private ?string $slug = null;
    
    /**
     * @var int|null $staffCount Number of staff members.
    */
    private ?int $staffCount = null;
    
    /**
     * @var string|null $status League status (e.g. active, inactive).
    */
    private ?string $status = null;
    
    /**
     * @var int|null $teamCount Number of teams in the league.
    */
    private ?int $teamCount = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueProfile
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueProfile {
        return new LeagueProfile();
    }

    /**
     * Gets the activeSeasons property value. Currently active seasons.
     * @return array<LeagueProfile_activeSeasons>|null
    */
    public function getActiveSeasons(): ?array {
        return $this->activeSeasons;
    }

    /**
     * Gets the avatarUrl property value. League avatar image URL.
     * @return LeagueProfile_avatarUrl|null
    */
    public function getAvatarUrl(): ?LeagueProfile_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. League banner image URL.
     * @return LeagueProfile_bannerUrl|null
    */
    public function getBannerUrl(): ?LeagueProfile_bannerUrl {
        return $this->bannerUrl;
    }

    /**
     * Gets the createdAt property value. Creation timestamp (epoch milliseconds).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * Gets the description property value. League description.
     * @return string|null
    */
    public function getDescription(): ?string {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'activeSeasons' => fn(ParseNode $n) => $o->setActiveSeasons($n->getCollectionOfObjectValues([LeagueProfile_activeSeasons::class, 'createFromDiscriminatorValue'])),
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([LeagueProfile_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([LeagueProfile_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'games' => fn(ParseNode $n) => $o->setGames($n->getCollectionOfObjectValues([LeagueProfile_games::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isFeatured' => fn(ParseNode $n) => $o->setIsFeatured($n->getBooleanValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'staffCount' => fn(ParseNode $n) => $o->setStaffCount($n->getIntegerValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'teamCount' => fn(ParseNode $n) => $o->setTeamCount($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the games property value. Games associated with the league.
     * @return array<LeagueProfile_games>|null
    */
    public function getGames(): ?array {
        return $this->games;
    }

    /**
     * Gets the id property value. League ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isFeatured property value. Whether the league is featured.
     * @return bool|null
    */
    public function getIsFeatured(): ?bool {
        return $this->isFeatured;
    }

    /**
     * Gets the isVerified property value. Whether the league is verified.
     * @return bool|null
    */
    public function getIsVerified(): ?bool {
        return $this->isVerified;
    }

    /**
     * Gets the name property value. League display name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the slug property value. URL-friendly league identifier.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the staffCount property value. Number of staff members.
     * @return int|null
    */
    public function getStaffCount(): ?int {
        return $this->staffCount;
    }

    /**
     * Gets the status property value. League status (e.g. active, inactive).
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
    }

    /**
     * Gets the teamCount property value. Number of teams in the league.
     * @return int|null
    */
    public function getTeamCount(): ?int {
        return $this->teamCount;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('activeSeasons', $this->getActiveSeasons());
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeCollectionOfObjectValues('games', $this->getGames());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isFeatured', $this->getIsFeatured());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeIntegerValue('staffCount', $this->getStaffCount());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeIntegerValue('teamCount', $this->getTeamCount());
    }

    /**
     * Sets the activeSeasons property value. Currently active seasons.
     * @param array<LeagueProfile_activeSeasons>|null $value Value to set for the activeSeasons property.
    */
    public function setActiveSeasons(?array $value): void {
        $this->activeSeasons = $value;
    }

    /**
     * Sets the avatarUrl property value. League avatar image URL.
     * @param LeagueProfile_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?LeagueProfile_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. League banner image URL.
     * @param LeagueProfile_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?LeagueProfile_bannerUrl $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the createdAt property value. Creation timestamp (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the description property value. League description.
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the games property value. Games associated with the league.
     * @param array<LeagueProfile_games>|null $value Value to set for the games property.
    */
    public function setGames(?array $value): void {
        $this->games = $value;
    }

    /**
     * Sets the id property value. League ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isFeatured property value. Whether the league is featured.
     * @param bool|null $value Value to set for the isFeatured property.
    */
    public function setIsFeatured(?bool $value): void {
        $this->isFeatured = $value;
    }

    /**
     * Sets the isVerified property value. Whether the league is verified.
     * @param bool|null $value Value to set for the isVerified property.
    */
    public function setIsVerified(?bool $value): void {
        $this->isVerified = $value;
    }

    /**
     * Sets the name property value. League display name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the slug property value. URL-friendly league identifier.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the staffCount property value. Number of staff members.
     * @param int|null $value Value to set for the staffCount property.
    */
    public function setStaffCount(?int $value): void {
        $this->staffCount = $value;
    }

    /**
     * Sets the status property value. League status (e.g. active, inactive).
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamCount property value. Number of teams in the league.
     * @param int|null $value Value to set for the teamCount property.
    */
    public function setTeamCount(?int $value): void {
        $this->teamCount = $value;
    }

}

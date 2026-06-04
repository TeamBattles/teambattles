<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Summary view of a league for discovery results.
*/
class LeagueSummary implements Parsable 
{
    /**
     * @var LeagueSummary_avatarUrl|null $avatarUrl League avatar image URL.
    */
    private ?LeagueSummary_avatarUrl $avatarUrl = null;
    
    /**
     * @var LeagueSummary_bannerUrl|null $bannerUrl League banner image URL.
    */
    private ?LeagueSummary_bannerUrl $bannerUrl = null;
    
    /**
     * @var float|null $createdAt Creation timestamp (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $description League description.
    */
    private ?string $description = null;
    
    /**
     * @var array<LeagueSummary_games>|null $games Games associated with the league.
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
     * @var LeagueSummary_seasonStatus|null $seasonStatus Aggregate season state across the league's games.
    */
    private ?LeagueSummary_seasonStatus $seasonStatus = null;
    
    /**
     * @var string|null $slug URL-friendly league identifier.
    */
    private ?string $slug = null;
    
    /**
     * @var string|null $status League status.
    */
    private ?string $status = null;
    
    /**
     * @var int|null $teamCount Number of teams in the league.
    */
    private ?int $teamCount = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSummary
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSummary {
        return new LeagueSummary();
    }

    /**
     * Gets the avatarUrl property value. League avatar image URL.
     * @return LeagueSummary_avatarUrl|null
    */
    public function getAvatarUrl(): ?LeagueSummary_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the bannerUrl property value. League banner image URL.
     * @return LeagueSummary_bannerUrl|null
    */
    public function getBannerUrl(): ?LeagueSummary_bannerUrl {
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
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([LeagueSummary_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([LeagueSummary_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'games' => fn(ParseNode $n) => $o->setGames($n->getCollectionOfObjectValues([LeagueSummary_games::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isFeatured' => fn(ParseNode $n) => $o->setIsFeatured($n->getBooleanValue()),
            'isVerified' => fn(ParseNode $n) => $o->setIsVerified($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'seasonStatus' => fn(ParseNode $n) => $o->setSeasonStatus($n->getEnumValue(LeagueSummary_seasonStatus::class)),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'teamCount' => fn(ParseNode $n) => $o->setTeamCount($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the games property value. Games associated with the league.
     * @return array<LeagueSummary_games>|null
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
     * Gets the seasonStatus property value. Aggregate season state across the league's games.
     * @return LeagueSummary_seasonStatus|null
    */
    public function getSeasonStatus(): ?LeagueSummary_seasonStatus {
        return $this->seasonStatus;
    }

    /**
     * Gets the slug property value. URL-friendly league identifier.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the status property value. League status.
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
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeCollectionOfObjectValues('games', $this->getGames());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isFeatured', $this->getIsFeatured());
        $writer->writeBooleanValue('isVerified', $this->getIsVerified());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeEnumValue('seasonStatus', $this->getSeasonStatus());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeIntegerValue('teamCount', $this->getTeamCount());
    }

    /**
     * Sets the avatarUrl property value. League avatar image URL.
     * @param LeagueSummary_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?LeagueSummary_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the bannerUrl property value. League banner image URL.
     * @param LeagueSummary_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?LeagueSummary_bannerUrl $value): void {
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
     * @param array<LeagueSummary_games>|null $value Value to set for the games property.
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
     * Sets the seasonStatus property value. Aggregate season state across the league's games.
     * @param LeagueSummary_seasonStatus|null $value Value to set for the seasonStatus property.
    */
    public function setSeasonStatus(?LeagueSummary_seasonStatus $value): void {
        $this->seasonStatus = $value;
    }

    /**
     * Sets the slug property value. URL-friendly league identifier.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the status property value. League status.
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

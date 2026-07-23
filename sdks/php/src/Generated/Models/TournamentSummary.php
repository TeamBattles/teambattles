<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Summary view of a tournament for discovery.
*/
class TournamentSummary implements Parsable 
{
    /**
     * @var TournamentSummary_bannerUrl|null $bannerUrl Banner image URL.
    */
    private ?TournamentSummary_bannerUrl $bannerUrl = null;
    
    /**
     * @var string|null $description Short tournament description.
    */
    private ?string $description = null;
    
    /**
     * @var TournamentFormat|null $format Bracket format of a tournament.
    */
    private ?TournamentFormat $format = null;
    
    /**
     * @var string|null $id Tournament ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isFeatured Whether the featured placement is live at request time.
    */
    private ?bool $isFeatured = null;
    
    /**
     * @var TournamentSummary_logoUrl|null $logoUrl Logo image URL.
    */
    private ?TournamentSummary_logoUrl $logoUrl = null;
    
    /**
     * @var int|null $maxParticipants Participant cap.
    */
    private ?int $maxParticipants = null;
    
    /**
     * @var string|null $name Tournament display name.
    */
    private ?string $name = null;
    
    /**
     * @var int|null $participantCount Current number of participants.
    */
    private ?int $participantCount = null;
    
    /**
     * @var string|null $prizeCurrency ISO currency code of the pool.
    */
    private ?string $prizeCurrency = null;
    
    /**
     * @var float|null $prizePool Total prize pool.
    */
    private ?float $prizePool = null;
    
    /**
     * @var string|null $slug URL-friendly tournament identifier.
    */
    private ?string $slug = null;
    
    /**
     * @var float|null $startsAt Scheduled start (epoch milliseconds).
    */
    private ?float $startsAt = null;
    
    /**
     * @var TournamentStatus|null $status Lifecycle status of a tournament.
    */
    private ?TournamentStatus $status = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSummary
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSummary {
        return new TournamentSummary();
    }

    /**
     * Gets the bannerUrl property value. Banner image URL.
     * @return TournamentSummary_bannerUrl|null
    */
    public function getBannerUrl(): ?TournamentSummary_bannerUrl {
        return $this->bannerUrl;
    }

    /**
     * Gets the description property value. Short tournament description.
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
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([TournamentSummary_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'format' => fn(ParseNode $n) => $o->setFormat($n->getEnumValue(TournamentFormat::class)),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isFeatured' => fn(ParseNode $n) => $o->setIsFeatured($n->getBooleanValue()),
            'logoUrl' => fn(ParseNode $n) => $o->setLogoUrl($n->getObjectValue([TournamentSummary_logoUrl::class, 'createFromDiscriminatorValue'])),
            'maxParticipants' => fn(ParseNode $n) => $o->setMaxParticipants($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'participantCount' => fn(ParseNode $n) => $o->setParticipantCount($n->getIntegerValue()),
            'prizeCurrency' => fn(ParseNode $n) => $o->setPrizeCurrency($n->getStringValue()),
            'prizePool' => fn(ParseNode $n) => $o->setPrizePool($n->getFloatValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'startsAt' => fn(ParseNode $n) => $o->setStartsAt($n->getFloatValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentStatus::class)),
        ];
    }

    /**
     * Gets the format property value. Bracket format of a tournament.
     * @return TournamentFormat|null
    */
    public function getFormat(): ?TournamentFormat {
        return $this->format;
    }

    /**
     * Gets the id property value. Tournament ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isFeatured property value. Whether the featured placement is live at request time.
     * @return bool|null
    */
    public function getIsFeatured(): ?bool {
        return $this->isFeatured;
    }

    /**
     * Gets the logoUrl property value. Logo image URL.
     * @return TournamentSummary_logoUrl|null
    */
    public function getLogoUrl(): ?TournamentSummary_logoUrl {
        return $this->logoUrl;
    }

    /**
     * Gets the maxParticipants property value. Participant cap.
     * @return int|null
    */
    public function getMaxParticipants(): ?int {
        return $this->maxParticipants;
    }

    /**
     * Gets the name property value. Tournament display name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the participantCount property value. Current number of participants.
     * @return int|null
    */
    public function getParticipantCount(): ?int {
        return $this->participantCount;
    }

    /**
     * Gets the prizeCurrency property value. ISO currency code of the pool.
     * @return string|null
    */
    public function getPrizeCurrency(): ?string {
        return $this->prizeCurrency;
    }

    /**
     * Gets the prizePool property value. Total prize pool.
     * @return float|null
    */
    public function getPrizePool(): ?float {
        return $this->prizePool;
    }

    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the startsAt property value. Scheduled start (epoch milliseconds).
     * @return float|null
    */
    public function getStartsAt(): ?float {
        return $this->startsAt;
    }

    /**
     * Gets the status property value. Lifecycle status of a tournament.
     * @return TournamentStatus|null
    */
    public function getStatus(): ?TournamentStatus {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeEnumValue('format', $this->getFormat());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isFeatured', $this->getIsFeatured());
        $writer->writeObjectValue('logoUrl', $this->getLogoUrl());
        $writer->writeIntegerValue('maxParticipants', $this->getMaxParticipants());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeIntegerValue('participantCount', $this->getParticipantCount());
        $writer->writeStringValue('prizeCurrency', $this->getPrizeCurrency());
        $writer->writeFloatValue('prizePool', $this->getPrizePool());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeFloatValue('startsAt', $this->getStartsAt());
        $writer->writeEnumValue('status', $this->getStatus());
    }

    /**
     * Sets the bannerUrl property value. Banner image URL.
     * @param TournamentSummary_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?TournamentSummary_bannerUrl $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the description property value. Short tournament description.
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the format property value. Bracket format of a tournament.
     * @param TournamentFormat|null $value Value to set for the format property.
    */
    public function setFormat(?TournamentFormat $value): void {
        $this->format = $value;
    }

    /**
     * Sets the id property value. Tournament ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isFeatured property value. Whether the featured placement is live at request time.
     * @param bool|null $value Value to set for the isFeatured property.
    */
    public function setIsFeatured(?bool $value): void {
        $this->isFeatured = $value;
    }

    /**
     * Sets the logoUrl property value. Logo image URL.
     * @param TournamentSummary_logoUrl|null $value Value to set for the logoUrl property.
    */
    public function setLogoUrl(?TournamentSummary_logoUrl $value): void {
        $this->logoUrl = $value;
    }

    /**
     * Sets the maxParticipants property value. Participant cap.
     * @param int|null $value Value to set for the maxParticipants property.
    */
    public function setMaxParticipants(?int $value): void {
        $this->maxParticipants = $value;
    }

    /**
     * Sets the name property value. Tournament display name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the participantCount property value. Current number of participants.
     * @param int|null $value Value to set for the participantCount property.
    */
    public function setParticipantCount(?int $value): void {
        $this->participantCount = $value;
    }

    /**
     * Sets the prizeCurrency property value. ISO currency code of the pool.
     * @param string|null $value Value to set for the prizeCurrency property.
    */
    public function setPrizeCurrency(?string $value): void {
        $this->prizeCurrency = $value;
    }

    /**
     * Sets the prizePool property value. Total prize pool.
     * @param float|null $value Value to set for the prizePool property.
    */
    public function setPrizePool(?float $value): void {
        $this->prizePool = $value;
    }

    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the startsAt property value. Scheduled start (epoch milliseconds).
     * @param float|null $value Value to set for the startsAt property.
    */
    public function setStartsAt(?float $value): void {
        $this->startsAt = $value;
    }

    /**
     * Sets the status property value. Lifecycle status of a tournament.
     * @param TournamentStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentStatus $value): void {
        $this->status = $value;
    }

}

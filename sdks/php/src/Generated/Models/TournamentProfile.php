<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
*/
class TournamentProfile implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $approvalStatus Platform review state, independent of `status`.
    */
    private ?string $approvalStatus = null;
    
    /**
     * @var TournamentProfile_bannerUrl|null $bannerUrl Banner image URL.
    */
    private ?TournamentProfile_bannerUrl $bannerUrl = null;
    
    /**
     * @var TournamentFormat|null $format Bracket format of a tournament.
    */
    private ?TournamentFormat $format = null;
    
    /**
     * @var string|null $id Tournament ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isPubliclyListed Whether the tournament appears in discovery.
    */
    private ?bool $isPubliclyListed = null;
    
    /**
     * @var TournamentProfile_logoUrl|null $logoUrl Logo image URL.
    */
    private ?TournamentProfile_logoUrl $logoUrl = null;
    
    /**
     * @var int|null $maxParticipants Participant cap.
    */
    private ?int $maxParticipants = null;
    
    /**
     * @var string|null $name Tournament display name.
    */
    private ?string $name = null;
    
    /**
     * @var bool|null $needsAttention Whether the tournament is non-terminal AND awaiting organizer action on approval.
    */
    private ?bool $needsAttention = null;
    
    /**
     * @var int|null $participantCount Current number of participants.
    */
    private ?int $participantCount = null;
    
    /**
     * @var string|null $slug URL-friendly tournament identifier.
    */
    private ?string $slug = null;
    
    /**
     * @var TournamentStatus|null $status Lifecycle status of a tournament.
    */
    private ?TournamentStatus $status = null;
    
    /**
     * @var int|null $teamSize Players per participating team.
    */
    private ?int $teamSize = null;
    
    /**
     * @var TournamentProfile_viewerManagement|null $viewerManagement The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
    */
    private ?TournamentProfile_viewerManagement $viewerManagement = null;
    
    /**
     * @var string|null $visibility PUBLIC or UNLISTED.
    */
    private ?string $visibility = null;
    
    /**
     * Instantiates a new TournamentProfile and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentProfile
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentProfile {
        return new TournamentProfile();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the approvalStatus property value. Platform review state, independent of `status`.
     * @return string|null
    */
    public function getApprovalStatus(): ?string {
        return $this->approvalStatus;
    }

    /**
     * Gets the bannerUrl property value. Banner image URL.
     * @return TournamentProfile_bannerUrl|null
    */
    public function getBannerUrl(): ?TournamentProfile_bannerUrl {
        return $this->bannerUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getStringValue()),
            'bannerUrl' => fn(ParseNode $n) => $o->setBannerUrl($n->getObjectValue([TournamentProfile_bannerUrl::class, 'createFromDiscriminatorValue'])),
            'format' => fn(ParseNode $n) => $o->setFormat($n->getEnumValue(TournamentFormat::class)),
            '_id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isPubliclyListed' => fn(ParseNode $n) => $o->setIsPubliclyListed($n->getBooleanValue()),
            'logoUrl' => fn(ParseNode $n) => $o->setLogoUrl($n->getObjectValue([TournamentProfile_logoUrl::class, 'createFromDiscriminatorValue'])),
            'maxParticipants' => fn(ParseNode $n) => $o->setMaxParticipants($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'needsAttention' => fn(ParseNode $n) => $o->setNeedsAttention($n->getBooleanValue()),
            'participantCount' => fn(ParseNode $n) => $o->setParticipantCount($n->getIntegerValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentStatus::class)),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getIntegerValue()),
            'viewerManagement' => fn(ParseNode $n) => $o->setViewerManagement($n->getObjectValue([TournamentProfile_viewerManagement::class, 'createFromDiscriminatorValue'])),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getStringValue()),
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
     * Gets the _id property value. Tournament ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isPubliclyListed property value. Whether the tournament appears in discovery.
     * @return bool|null
    */
    public function getIsPubliclyListed(): ?bool {
        return $this->isPubliclyListed;
    }

    /**
     * Gets the logoUrl property value. Logo image URL.
     * @return TournamentProfile_logoUrl|null
    */
    public function getLogoUrl(): ?TournamentProfile_logoUrl {
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
     * Gets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
     * @return bool|null
    */
    public function getNeedsAttention(): ?bool {
        return $this->needsAttention;
    }

    /**
     * Gets the participantCount property value. Current number of participants.
     * @return int|null
    */
    public function getParticipantCount(): ?int {
        return $this->participantCount;
    }

    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the status property value. Lifecycle status of a tournament.
     * @return TournamentStatus|null
    */
    public function getStatus(): ?TournamentStatus {
        return $this->status;
    }

    /**
     * Gets the teamSize property value. Players per participating team.
     * @return int|null
    */
    public function getTeamSize(): ?int {
        return $this->teamSize;
    }

    /**
     * Gets the viewerManagement property value. The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
     * @return TournamentProfile_viewerManagement|null
    */
    public function getViewerManagement(): ?TournamentProfile_viewerManagement {
        return $this->viewerManagement;
    }

    /**
     * Gets the visibility property value. PUBLIC or UNLISTED.
     * @return string|null
    */
    public function getVisibility(): ?string {
        return $this->visibility;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('approvalStatus', $this->getApprovalStatus());
        $writer->writeObjectValue('bannerUrl', $this->getBannerUrl());
        $writer->writeEnumValue('format', $this->getFormat());
        $writer->writeStringValue('_id', $this->getId());
        $writer->writeBooleanValue('isPubliclyListed', $this->getIsPubliclyListed());
        $writer->writeObjectValue('logoUrl', $this->getLogoUrl());
        $writer->writeIntegerValue('maxParticipants', $this->getMaxParticipants());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeBooleanValue('needsAttention', $this->getNeedsAttention());
        $writer->writeIntegerValue('participantCount', $this->getParticipantCount());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeIntegerValue('teamSize', $this->getTeamSize());
        $writer->writeObjectValue('viewerManagement', $this->getViewerManagement());
        $writer->writeStringValue('visibility', $this->getVisibility());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the approvalStatus property value. Platform review state, independent of `status`.
     * @param string|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?string $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the bannerUrl property value. Banner image URL.
     * @param TournamentProfile_bannerUrl|null $value Value to set for the bannerUrl property.
    */
    public function setBannerUrl(?TournamentProfile_bannerUrl $value): void {
        $this->bannerUrl = $value;
    }

    /**
     * Sets the format property value. Bracket format of a tournament.
     * @param TournamentFormat|null $value Value to set for the format property.
    */
    public function setFormat(?TournamentFormat $value): void {
        $this->format = $value;
    }

    /**
     * Sets the _id property value. Tournament ID.
     * @param string|null $value Value to set for the _id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isPubliclyListed property value. Whether the tournament appears in discovery.
     * @param bool|null $value Value to set for the isPubliclyListed property.
    */
    public function setIsPubliclyListed(?bool $value): void {
        $this->isPubliclyListed = $value;
    }

    /**
     * Sets the logoUrl property value. Logo image URL.
     * @param TournamentProfile_logoUrl|null $value Value to set for the logoUrl property.
    */
    public function setLogoUrl(?TournamentProfile_logoUrl $value): void {
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
     * Sets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
     * @param bool|null $value Value to set for the needsAttention property.
    */
    public function setNeedsAttention(?bool $value): void {
        $this->needsAttention = $value;
    }

    /**
     * Sets the participantCount property value. Current number of participants.
     * @param int|null $value Value to set for the participantCount property.
    */
    public function setParticipantCount(?int $value): void {
        $this->participantCount = $value;
    }

    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the status property value. Lifecycle status of a tournament.
     * @param TournamentStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentStatus $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamSize property value. Players per participating team.
     * @param int|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?int $value): void {
        $this->teamSize = $value;
    }

    /**
     * Sets the viewerManagement property value. The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
     * @param TournamentProfile_viewerManagement|null $value Value to set for the viewerManagement property.
    */
    public function setViewerManagement(?TournamentProfile_viewerManagement $value): void {
        $this->viewerManagement = $value;
    }

    /**
     * Sets the visibility property value. PUBLIC or UNLISTED.
     * @param string|null $value Value to set for the visibility property.
    */
    public function setVisibility(?string $value): void {
        $this->visibility = $value;
    }

}

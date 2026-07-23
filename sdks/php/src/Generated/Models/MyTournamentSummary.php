<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A tournament the API key owner can manage.
*/
class MyTournamentSummary implements Parsable 
{
    /**
     * @var string|null $approvalStatus Platform review state, independent of `status`.
    */
    private ?string $approvalStatus = null;
    
    /**
     * @var string|null $hostType user, org, or league.
    */
    private ?string $hostType = null;
    
    /**
     * @var string|null $id Tournament ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isAdmin Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
    */
    private ?bool $isAdmin = null;
    
    /**
     * @var int|null $maxParticipants Participant cap.
    */
    private ?int $maxParticipants = null;
    
    /**
     * @var string|null $name Tournament display name.
    */
    private ?string $name = null;
    
    /**
     * @var bool|null $needsAttention Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
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
     * @var float|null $startsAt Scheduled start (epoch milliseconds).
    */
    private ?float $startsAt = null;
    
    /**
     * @var TournamentStatus|null $status Lifecycle status of a tournament.
    */
    private ?TournamentStatus $status = null;
    
    /**
     * @var float|null $updatedAt Last update (epoch milliseconds).
    */
    private ?float $updatedAt = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentSummary
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentSummary {
        return new MyTournamentSummary();
    }

    /**
     * Gets the approvalStatus property value. Platform review state, independent of `status`.
     * @return string|null
    */
    public function getApprovalStatus(): ?string {
        return $this->approvalStatus;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getStringValue()),
            'hostType' => fn(ParseNode $n) => $o->setHostType($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isAdmin' => fn(ParseNode $n) => $o->setIsAdmin($n->getBooleanValue()),
            'maxParticipants' => fn(ParseNode $n) => $o->setMaxParticipants($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'needsAttention' => fn(ParseNode $n) => $o->setNeedsAttention($n->getBooleanValue()),
            'participantCount' => fn(ParseNode $n) => $o->setParticipantCount($n->getIntegerValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'startsAt' => fn(ParseNode $n) => $o->setStartsAt($n->getFloatValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentStatus::class)),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getFloatValue()),
        ];
    }

    /**
     * Gets the hostType property value. user, org, or league.
     * @return string|null
    */
    public function getHostType(): ?string {
        return $this->hostType;
    }

    /**
     * Gets the id property value. Tournament ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
     * @return bool|null
    */
    public function getIsAdmin(): ?bool {
        return $this->isAdmin;
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
     * Gets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
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
     * Gets the updatedAt property value. Last update (epoch milliseconds).
     * @return float|null
    */
    public function getUpdatedAt(): ?float {
        return $this->updatedAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('approvalStatus', $this->getApprovalStatus());
        $writer->writeStringValue('hostType', $this->getHostType());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isAdmin', $this->getIsAdmin());
        $writer->writeIntegerValue('maxParticipants', $this->getMaxParticipants());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeBooleanValue('needsAttention', $this->getNeedsAttention());
        $writer->writeIntegerValue('participantCount', $this->getParticipantCount());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeFloatValue('startsAt', $this->getStartsAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeFloatValue('updatedAt', $this->getUpdatedAt());
    }

    /**
     * Sets the approvalStatus property value. Platform review state, independent of `status`.
     * @param string|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?string $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the hostType property value. user, org, or league.
     * @param string|null $value Value to set for the hostType property.
    */
    public function setHostType(?string $value): void {
        $this->hostType = $value;
    }

    /**
     * Sets the id property value. Tournament ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isAdmin property value. Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
     * @param bool|null $value Value to set for the isAdmin property.
    */
    public function setIsAdmin(?bool $value): void {
        $this->isAdmin = $value;
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
     * Sets the needsAttention property value. Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
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

    /**
     * Sets the updatedAt property value. Last update (epoch milliseconds).
     * @param float|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?float $value): void {
        $this->updatedAt = $value;
    }

}

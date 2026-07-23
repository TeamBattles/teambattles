<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A team invite issued by the organizer.
*/
class TournamentInvite implements Parsable 
{
    /**
     * @var float|null $createdAt Invite time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $id Invite ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $invitedByUserId Organizer who sent the invite.
    */
    private ?string $invitedByUserId = null;
    
    /**
     * @var float|null $respondedAt Response time (epoch milliseconds). Absent while PENDING.
    */
    private ?float $respondedAt = null;
    
    /**
     * @var TournamentInviteStatus|null $status State of a tournament team invite.
    */
    private ?TournamentInviteStatus $status = null;
    
    /**
     * @var TournamentInvite_teamAvatarUrl|null $teamAvatarUrl Invited team's avatar URL.
    */
    private ?TournamentInvite_teamAvatarUrl $teamAvatarUrl = null;
    
    /**
     * @var string|null $teamId Invited team's ID.
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $teamName Invited team's display name.
    */
    private ?string $teamName = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentInvite
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentInvite {
        return new TournamentInvite();
    }

    /**
     * Gets the createdAt property value. Invite time (epoch milliseconds).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'invitedByUserId' => fn(ParseNode $n) => $o->setInvitedByUserId($n->getStringValue()),
            'respondedAt' => fn(ParseNode $n) => $o->setRespondedAt($n->getFloatValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentInviteStatus::class)),
            'teamAvatarUrl' => fn(ParseNode $n) => $o->setTeamAvatarUrl($n->getObjectValue([TournamentInvite_teamAvatarUrl::class, 'createFromDiscriminatorValue'])),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamName' => fn(ParseNode $n) => $o->setTeamName($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Invite ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the invitedByUserId property value. Organizer who sent the invite.
     * @return string|null
    */
    public function getInvitedByUserId(): ?string {
        return $this->invitedByUserId;
    }

    /**
     * Gets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
     * @return float|null
    */
    public function getRespondedAt(): ?float {
        return $this->respondedAt;
    }

    /**
     * Gets the status property value. State of a tournament team invite.
     * @return TournamentInviteStatus|null
    */
    public function getStatus(): ?TournamentInviteStatus {
        return $this->status;
    }

    /**
     * Gets the teamAvatarUrl property value. Invited team's avatar URL.
     * @return TournamentInvite_teamAvatarUrl|null
    */
    public function getTeamAvatarUrl(): ?TournamentInvite_teamAvatarUrl {
        return $this->teamAvatarUrl;
    }

    /**
     * Gets the teamId property value. Invited team's ID.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the teamName property value. Invited team's display name.
     * @return string|null
    */
    public function getTeamName(): ?string {
        return $this->teamName;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('invitedByUserId', $this->getInvitedByUserId());
        $writer->writeFloatValue('respondedAt', $this->getRespondedAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeObjectValue('teamAvatarUrl', $this->getTeamAvatarUrl());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('teamName', $this->getTeamName());
    }

    /**
     * Sets the createdAt property value. Invite time (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. Invite ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the invitedByUserId property value. Organizer who sent the invite.
     * @param string|null $value Value to set for the invitedByUserId property.
    */
    public function setInvitedByUserId(?string $value): void {
        $this->invitedByUserId = $value;
    }

    /**
     * Sets the respondedAt property value. Response time (epoch milliseconds). Absent while PENDING.
     * @param float|null $value Value to set for the respondedAt property.
    */
    public function setRespondedAt(?float $value): void {
        $this->respondedAt = $value;
    }

    /**
     * Sets the status property value. State of a tournament team invite.
     * @param TournamentInviteStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentInviteStatus $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamAvatarUrl property value. Invited team's avatar URL.
     * @param TournamentInvite_teamAvatarUrl|null $value Value to set for the teamAvatarUrl property.
    */
    public function setTeamAvatarUrl(?TournamentInvite_teamAvatarUrl $value): void {
        $this->teamAvatarUrl = $value;
    }

    /**
     * Sets the teamId property value. Invited team's ID.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the teamName property value. Invited team's display name.
     * @param string|null $value Value to set for the teamName property.
    */
    public function setTeamName(?string $value): void {
        $this->teamName = $value;
    }

}

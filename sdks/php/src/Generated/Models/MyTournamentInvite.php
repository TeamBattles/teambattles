<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * An organizer invite addressed to a team the caller may act for. Only invites for ACTABLE teams appear - an invite to a team the caller merely belongs to is the captain's to answer.
*/
class MyTournamentInvite implements Parsable 
{
    /**
     * @var float|null $createdAt Invite time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $invitedByUserId Organizer who sent the invite.
    */
    private ?string $invitedByUserId = null;
    
    /**
     * @var string|null $inviteId Invite ID. Required by the invite-response endpoint.
    */
    private ?string $inviteId = null;
    
    /**
     * @var float|null $respondedAt Response time (epoch milliseconds). Absent while PENDING.
    */
    private ?float $respondedAt = null;
    
    /**
     * @var TournamentInviteStatus|null $status State of a tournament team invite.
    */
    private ?TournamentInviteStatus $status = null;
    
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
     * @return MyTournamentInvite
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentInvite {
        return new MyTournamentInvite();
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
            'invitedByUserId' => fn(ParseNode $n) => $o->setInvitedByUserId($n->getStringValue()),
            'inviteId' => fn(ParseNode $n) => $o->setInviteId($n->getStringValue()),
            'respondedAt' => fn(ParseNode $n) => $o->setRespondedAt($n->getFloatValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentInviteStatus::class)),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamName' => fn(ParseNode $n) => $o->setTeamName($n->getStringValue()),
        ];
    }

    /**
     * Gets the invitedByUserId property value. Organizer who sent the invite.
     * @return string|null
    */
    public function getInvitedByUserId(): ?string {
        return $this->invitedByUserId;
    }

    /**
     * Gets the inviteId property value. Invite ID. Required by the invite-response endpoint.
     * @return string|null
    */
    public function getInviteId(): ?string {
        return $this->inviteId;
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
        $writer->writeStringValue('invitedByUserId', $this->getInvitedByUserId());
        $writer->writeStringValue('inviteId', $this->getInviteId());
        $writer->writeFloatValue('respondedAt', $this->getRespondedAt());
        $writer->writeEnumValue('status', $this->getStatus());
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
     * Sets the invitedByUserId property value. Organizer who sent the invite.
     * @param string|null $value Value to set for the invitedByUserId property.
    */
    public function setInvitedByUserId(?string $value): void {
        $this->invitedByUserId = $value;
    }

    /**
     * Sets the inviteId property value. Invite ID. Required by the invite-response endpoint.
     * @param string|null $value Value to set for the inviteId property.
    */
    public function setInviteId(?string $value): void {
        $this->inviteId = $value;
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

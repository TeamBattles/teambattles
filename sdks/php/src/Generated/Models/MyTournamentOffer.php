<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A free-agent offer addressed to the caller, in every state.
*/
class MyTournamentOffer implements Parsable 
{
    /**
     * @var float|null $createdAt Offer time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $message Optional note from the offering team.
    */
    private ?string $message = null;
    
    /**
     * @var string|null $offerId Offer ID. Required by the offer-respond and offer-revoke endpoints.
    */
    private ?string $offerId = null;
    
    /**
     * @var TournamentParticipantStatus|null $offeringParticipantStatus The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
    */
    private ?TournamentParticipantStatus $offeringParticipantStatus = null;
    
    /**
     * @var string|null $participantId Offering team's participant ID.
    */
    private ?string $participantId = null;
    
    /**
     * @var TournamentFreeAgentOfferStatus|null $status State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
    */
    private ?TournamentFreeAgentOfferStatus $status = null;
    
    /**
     * @var string|null $teamAvatarUrl Offering team's avatar URL.
    */
    private ?string $teamAvatarUrl = null;
    
    /**
     * @var string|null $teamId Offering team's ID.
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $teamName Offering team's display name.
    */
    private ?string $teamName = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentOffer
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentOffer {
        return new MyTournamentOffer();
    }

    /**
     * Gets the createdAt property value. Offer time (epoch milliseconds).
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
            'message' => fn(ParseNode $n) => $o->setMessage($n->getStringValue()),
            'offerId' => fn(ParseNode $n) => $o->setOfferId($n->getStringValue()),
            'offeringParticipantStatus' => fn(ParseNode $n) => $o->setOfferingParticipantStatus($n->getEnumValue(TournamentParticipantStatus::class)),
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentFreeAgentOfferStatus::class)),
            'teamAvatarUrl' => fn(ParseNode $n) => $o->setTeamAvatarUrl($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamName' => fn(ParseNode $n) => $o->setTeamName($n->getStringValue()),
        ];
    }

    /**
     * Gets the message property value. Optional note from the offering team.
     * @return string|null
    */
    public function getMessage(): ?string {
        return $this->message;
    }

    /**
     * Gets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
     * @return string|null
    */
    public function getOfferId(): ?string {
        return $this->offerId;
    }

    /**
     * Gets the offeringParticipantStatus property value. The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
     * @return TournamentParticipantStatus|null
    */
    public function getOfferingParticipantStatus(): ?TournamentParticipantStatus {
        return $this->offeringParticipantStatus;
    }

    /**
     * Gets the participantId property value. Offering team's participant ID.
     * @return string|null
    */
    public function getParticipantId(): ?string {
        return $this->participantId;
    }

    /**
     * Gets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
     * @return TournamentFreeAgentOfferStatus|null
    */
    public function getStatus(): ?TournamentFreeAgentOfferStatus {
        return $this->status;
    }

    /**
     * Gets the teamAvatarUrl property value. Offering team's avatar URL.
     * @return string|null
    */
    public function getTeamAvatarUrl(): ?string {
        return $this->teamAvatarUrl;
    }

    /**
     * Gets the teamId property value. Offering team's ID.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the teamName property value. Offering team's display name.
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
        $writer->writeStringValue('message', $this->getMessage());
        $writer->writeStringValue('offerId', $this->getOfferId());
        $writer->writeEnumValue('offeringParticipantStatus', $this->getOfferingParticipantStatus());
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('teamAvatarUrl', $this->getTeamAvatarUrl());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('teamName', $this->getTeamName());
    }

    /**
     * Sets the createdAt property value. Offer time (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the message property value. Optional note from the offering team.
     * @param string|null $value Value to set for the message property.
    */
    public function setMessage(?string $value): void {
        $this->message = $value;
    }

    /**
     * Sets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
     * @param string|null $value Value to set for the offerId property.
    */
    public function setOfferId(?string $value): void {
        $this->offerId = $value;
    }

    /**
     * Sets the offeringParticipantStatus property value. The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
     * @param TournamentParticipantStatus|null $value Value to set for the offeringParticipantStatus property.
    */
    public function setOfferingParticipantStatus(?TournamentParticipantStatus $value): void {
        $this->offeringParticipantStatus = $value;
    }

    /**
     * Sets the participantId property value. Offering team's participant ID.
     * @param string|null $value Value to set for the participantId property.
    */
    public function setParticipantId(?string $value): void {
        $this->participantId = $value;
    }

    /**
     * Sets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
     * @param TournamentFreeAgentOfferStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentFreeAgentOfferStatus $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamAvatarUrl property value. Offering team's avatar URL.
     * @param string|null $value Value to set for the teamAvatarUrl property.
    */
    public function setTeamAvatarUrl(?string $value): void {
        $this->teamAvatarUrl = $value;
    }

    /**
     * Sets the teamId property value. Offering team's ID.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the teamName property value. Offering team's display name.
     * @param string|null $value Value to set for the teamName property.
    */
    public function setTeamName(?string $value): void {
        $this->teamName = $value;
    }

}

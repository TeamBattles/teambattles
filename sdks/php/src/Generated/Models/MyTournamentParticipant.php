<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One of the caller's teams entered in this tournament.
*/
class MyTournamentParticipant implements Parsable 
{
    /**
     * @var bool|null $canManage Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
    */
    private ?bool $canManage = null;
    
    /**
     * @var float|null $checkedInAt Check-in time (epoch milliseconds). Absent until the team checks in.
    */
    private ?float $checkedInAt = null;
    
    /**
     * @var int|null $finalPlacement Placement persisted at finalization. Present only once the tournament ends.
    */
    private ?int $finalPlacement = null;
    
    /**
     * @var string|null $participantId Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
    */
    private ?string $participantId = null;
    
    /**
     * @var float|null $registeredAt Entry time (epoch milliseconds).
    */
    private ?float $registeredAt = null;
    
    /**
     * @var int|null $seed Assigned seed, once seeding has run.
    */
    private ?int $seed = null;
    
    /**
     * @var TournamentParticipantStatus|null $status State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
    */
    private ?TournamentParticipantStatus $status = null;
    
    /**
     * @var string|null $teamAvatarUrl Team avatar URL.
    */
    private ?string $teamAvatarUrl = null;
    
    /**
     * @var string|null $teamId Team ID.
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $teamName Team display name.
    */
    private ?string $teamName = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentParticipant
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentParticipant {
        return new MyTournamentParticipant();
    }

    /**
     * Gets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
     * @return bool|null
    */
    public function getCanManage(): ?bool {
        return $this->canManage;
    }

    /**
     * Gets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
     * @return float|null
    */
    public function getCheckedInAt(): ?float {
        return $this->checkedInAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'canManage' => fn(ParseNode $n) => $o->setCanManage($n->getBooleanValue()),
            'checkedInAt' => fn(ParseNode $n) => $o->setCheckedInAt($n->getFloatValue()),
            'finalPlacement' => fn(ParseNode $n) => $o->setFinalPlacement($n->getIntegerValue()),
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
            'registeredAt' => fn(ParseNode $n) => $o->setRegisteredAt($n->getFloatValue()),
            'seed' => fn(ParseNode $n) => $o->setSeed($n->getIntegerValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentParticipantStatus::class)),
            'teamAvatarUrl' => fn(ParseNode $n) => $o->setTeamAvatarUrl($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamName' => fn(ParseNode $n) => $o->setTeamName($n->getStringValue()),
        ];
    }

    /**
     * Gets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
     * @return int|null
    */
    public function getFinalPlacement(): ?int {
        return $this->finalPlacement;
    }

    /**
     * Gets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
     * @return string|null
    */
    public function getParticipantId(): ?string {
        return $this->participantId;
    }

    /**
     * Gets the registeredAt property value. Entry time (epoch milliseconds).
     * @return float|null
    */
    public function getRegisteredAt(): ?float {
        return $this->registeredAt;
    }

    /**
     * Gets the seed property value. Assigned seed, once seeding has run.
     * @return int|null
    */
    public function getSeed(): ?int {
        return $this->seed;
    }

    /**
     * Gets the status property value. State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
     * @return TournamentParticipantStatus|null
    */
    public function getStatus(): ?TournamentParticipantStatus {
        return $this->status;
    }

    /**
     * Gets the teamAvatarUrl property value. Team avatar URL.
     * @return string|null
    */
    public function getTeamAvatarUrl(): ?string {
        return $this->teamAvatarUrl;
    }

    /**
     * Gets the teamId property value. Team ID.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the teamName property value. Team display name.
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
        $writer->writeBooleanValue('canManage', $this->getCanManage());
        $writer->writeFloatValue('checkedInAt', $this->getCheckedInAt());
        $writer->writeIntegerValue('finalPlacement', $this->getFinalPlacement());
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeFloatValue('registeredAt', $this->getRegisteredAt());
        $writer->writeIntegerValue('seed', $this->getSeed());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeStringValue('teamAvatarUrl', $this->getTeamAvatarUrl());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('teamName', $this->getTeamName());
    }

    /**
     * Sets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
     * @param bool|null $value Value to set for the canManage property.
    */
    public function setCanManage(?bool $value): void {
        $this->canManage = $value;
    }

    /**
     * Sets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
     * @param float|null $value Value to set for the checkedInAt property.
    */
    public function setCheckedInAt(?float $value): void {
        $this->checkedInAt = $value;
    }

    /**
     * Sets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
     * @param int|null $value Value to set for the finalPlacement property.
    */
    public function setFinalPlacement(?int $value): void {
        $this->finalPlacement = $value;
    }

    /**
     * Sets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
     * @param string|null $value Value to set for the participantId property.
    */
    public function setParticipantId(?string $value): void {
        $this->participantId = $value;
    }

    /**
     * Sets the registeredAt property value. Entry time (epoch milliseconds).
     * @param float|null $value Value to set for the registeredAt property.
    */
    public function setRegisteredAt(?float $value): void {
        $this->registeredAt = $value;
    }

    /**
     * Sets the seed property value. Assigned seed, once seeding has run.
     * @param int|null $value Value to set for the seed property.
    */
    public function setSeed(?int $value): void {
        $this->seed = $value;
    }

    /**
     * Sets the status property value. State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
     * @param TournamentParticipantStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentParticipantStatus $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamAvatarUrl property value. Team avatar URL.
     * @param string|null $value Value to set for the teamAvatarUrl property.
    */
    public function setTeamAvatarUrl(?string $value): void {
        $this->teamAvatarUrl = $value;
    }

    /**
     * Sets the teamId property value. Team ID.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the teamName property value. Team display name.
     * @param string|null $value Value to set for the teamName property.
    */
    public function setTeamName(?string $value): void {
        $this->teamName = $value;
    }

}

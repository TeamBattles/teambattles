<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A team entered in a tournament.
*/
class TournamentParticipant implements Parsable 
{
    /**
     * @var float|null $checkedInAt Check-in timestamp (epoch milliseconds).
    */
    private ?float $checkedInAt = null;
    
    /**
     * @var int|null $finalPlacement Placement persisted at finalization. Present only once the tournament ends.
    */
    private ?int $finalPlacement = null;
    
    /**
     * @var string|null $id Participant ID.
    */
    private ?string $id = null;
    
    /**
     * @var array<TournamentRosterMember>|null $roster Tournament roster.
    */
    private ?array $roster = null;
    
    /**
     * @var int|null $seed Assigned seed, if seeding has run.
    */
    private ?int $seed = null;
    
    /**
     * @var string|null $status PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
    */
    private ?string $status = null;
    
    /**
     * @var TournamentParticipant_teamAvatarUrl|null $teamAvatarUrl Team avatar URL.
    */
    private ?TournamentParticipant_teamAvatarUrl $teamAvatarUrl = null;
    
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
     * @return TournamentParticipant
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentParticipant {
        return new TournamentParticipant();
    }

    /**
     * Gets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
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
            'checkedInAt' => fn(ParseNode $n) => $o->setCheckedInAt($n->getFloatValue()),
            'finalPlacement' => fn(ParseNode $n) => $o->setFinalPlacement($n->getIntegerValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'roster' => fn(ParseNode $n) => $o->setRoster($n->getCollectionOfObjectValues([TournamentRosterMember::class, 'createFromDiscriminatorValue'])),
            'seed' => fn(ParseNode $n) => $o->setSeed($n->getIntegerValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'teamAvatarUrl' => fn(ParseNode $n) => $o->setTeamAvatarUrl($n->getObjectValue([TournamentParticipant_teamAvatarUrl::class, 'createFromDiscriminatorValue'])),
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
     * Gets the id property value. Participant ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the roster property value. Tournament roster.
     * @return array<TournamentRosterMember>|null
    */
    public function getRoster(): ?array {
        return $this->roster;
    }

    /**
     * Gets the seed property value. Assigned seed, if seeding has run.
     * @return int|null
    */
    public function getSeed(): ?int {
        return $this->seed;
    }

    /**
     * Gets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
    }

    /**
     * Gets the teamAvatarUrl property value. Team avatar URL.
     * @return TournamentParticipant_teamAvatarUrl|null
    */
    public function getTeamAvatarUrl(): ?TournamentParticipant_teamAvatarUrl {
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
        $writer->writeFloatValue('checkedInAt', $this->getCheckedInAt());
        $writer->writeIntegerValue('finalPlacement', $this->getFinalPlacement());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeCollectionOfObjectValues('roster', $this->getRoster());
        $writer->writeIntegerValue('seed', $this->getSeed());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeObjectValue('teamAvatarUrl', $this->getTeamAvatarUrl());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('teamName', $this->getTeamName());
    }

    /**
     * Sets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
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
     * Sets the id property value. Participant ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the roster property value. Tournament roster.
     * @param array<TournamentRosterMember>|null $value Value to set for the roster property.
    */
    public function setRoster(?array $value): void {
        $this->roster = $value;
    }

    /**
     * Sets the seed property value. Assigned seed, if seeding has run.
     * @param int|null $value Value to set for the seed property.
    */
    public function setSeed(?int $value): void {
        $this->seed = $value;
    }

    /**
     * Sets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
    }

    /**
     * Sets the teamAvatarUrl property value. Team avatar URL.
     * @param TournamentParticipant_teamAvatarUrl|null $value Value to set for the teamAvatarUrl property.
    */
    public function setTeamAvatarUrl(?TournamentParticipant_teamAvatarUrl $value): void {
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

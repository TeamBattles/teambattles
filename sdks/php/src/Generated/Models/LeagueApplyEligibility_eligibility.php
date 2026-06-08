<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API key owner's apply-to-join eligibility.
*/
class LeagueApplyEligibility_eligibility implements Parsable 
{
    /**
     * @var array<LeagueApplyEligibility_eligibility_eligibleTeams>|null $eligibleTeams The eligibleTeams property
    */
    private ?array $eligibleTeams = null;
    
    /**
     * @var bool|null $hasApprovedTeamHere The hasApprovedTeamHere property
    */
    private ?bool $hasApprovedTeamHere = null;
    
    /**
     * @var bool|null $isAuthed The isAuthed property
    */
    private ?bool $isAuthed = null;
    
    /**
     * @var array<LeagueApplyEligibility_eligibility_pendingTeams>|null $pendingTeams The pendingTeams property
    */
    private ?array $pendingTeams = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueApplyEligibility_eligibility
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueApplyEligibility_eligibility {
        return new LeagueApplyEligibility_eligibility();
    }

    /**
     * Gets the eligibleTeams property value. The eligibleTeams property
     * @return array<LeagueApplyEligibility_eligibility_eligibleTeams>|null
    */
    public function getEligibleTeams(): ?array {
        return $this->eligibleTeams;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'eligibleTeams' => fn(ParseNode $n) => $o->setEligibleTeams($n->getCollectionOfObjectValues([LeagueApplyEligibility_eligibility_eligibleTeams::class, 'createFromDiscriminatorValue'])),
            'hasApprovedTeamHere' => fn(ParseNode $n) => $o->setHasApprovedTeamHere($n->getBooleanValue()),
            'isAuthed' => fn(ParseNode $n) => $o->setIsAuthed($n->getBooleanValue()),
            'pendingTeams' => fn(ParseNode $n) => $o->setPendingTeams($n->getCollectionOfObjectValues([LeagueApplyEligibility_eligibility_pendingTeams::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
     * @return bool|null
    */
    public function getHasApprovedTeamHere(): ?bool {
        return $this->hasApprovedTeamHere;
    }

    /**
     * Gets the isAuthed property value. The isAuthed property
     * @return bool|null
    */
    public function getIsAuthed(): ?bool {
        return $this->isAuthed;
    }

    /**
     * Gets the pendingTeams property value. The pendingTeams property
     * @return array<LeagueApplyEligibility_eligibility_pendingTeams>|null
    */
    public function getPendingTeams(): ?array {
        return $this->pendingTeams;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('eligibleTeams', $this->getEligibleTeams());
        $writer->writeBooleanValue('hasApprovedTeamHere', $this->getHasApprovedTeamHere());
        $writer->writeBooleanValue('isAuthed', $this->getIsAuthed());
        $writer->writeCollectionOfObjectValues('pendingTeams', $this->getPendingTeams());
    }

    /**
     * Sets the eligibleTeams property value. The eligibleTeams property
     * @param array<LeagueApplyEligibility_eligibility_eligibleTeams>|null $value Value to set for the eligibleTeams property.
    */
    public function setEligibleTeams(?array $value): void {
        $this->eligibleTeams = $value;
    }

    /**
     * Sets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
     * @param bool|null $value Value to set for the hasApprovedTeamHere property.
    */
    public function setHasApprovedTeamHere(?bool $value): void {
        $this->hasApprovedTeamHere = $value;
    }

    /**
     * Sets the isAuthed property value. The isAuthed property
     * @param bool|null $value Value to set for the isAuthed property.
    */
    public function setIsAuthed(?bool $value): void {
        $this->isAuthed = $value;
    }

    /**
     * Sets the pendingTeams property value. The pendingTeams property
     * @param array<LeagueApplyEligibility_eligibility_pendingTeams>|null $value Value to set for the pendingTeams property.
    */
    public function setPendingTeams(?array $value): void {
        $this->pendingTeams = $value;
    }

}

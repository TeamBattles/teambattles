<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe organization aggregate stats.
*/
class ApiOrganizationStats implements Parsable 
{
    /**
     * @var int|null $losses The losses property
    */
    private ?int $losses = null;
    
    /**
     * @var int|null $matchesPlayed The matchesPlayed property
    */
    private ?int $matchesPlayed = null;
    
    /**
     * @var int|null $members The members property
    */
    private ?int $members = null;
    
    /**
     * @var string|null $organizationId The organizationId property
    */
    private ?string $organizationId = null;
    
    /**
     * @var int|null $teams The teams property
    */
    private ?int $teams = null;
    
    /**
     * @var float|null $winRate The winRate property
    */
    private ?float $winRate = null;
    
    /**
     * @var int|null $wins The wins property
    */
    private ?int $wins = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiOrganizationStats
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiOrganizationStats {
        return new ApiOrganizationStats();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'losses' => fn(ParseNode $n) => $o->setLosses($n->getIntegerValue()),
            'matchesPlayed' => fn(ParseNode $n) => $o->setMatchesPlayed($n->getIntegerValue()),
            'members' => fn(ParseNode $n) => $o->setMembers($n->getIntegerValue()),
            'organizationId' => fn(ParseNode $n) => $o->setOrganizationId($n->getStringValue()),
            'teams' => fn(ParseNode $n) => $o->setTeams($n->getIntegerValue()),
            'winRate' => fn(ParseNode $n) => $o->setWinRate($n->getFloatValue()),
            'wins' => fn(ParseNode $n) => $o->setWins($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the losses property value. The losses property
     * @return int|null
    */
    public function getLosses(): ?int {
        return $this->losses;
    }

    /**
     * Gets the matchesPlayed property value. The matchesPlayed property
     * @return int|null
    */
    public function getMatchesPlayed(): ?int {
        return $this->matchesPlayed;
    }

    /**
     * Gets the members property value. The members property
     * @return int|null
    */
    public function getMembers(): ?int {
        return $this->members;
    }

    /**
     * Gets the organizationId property value. The organizationId property
     * @return string|null
    */
    public function getOrganizationId(): ?string {
        return $this->organizationId;
    }

    /**
     * Gets the teams property value. The teams property
     * @return int|null
    */
    public function getTeams(): ?int {
        return $this->teams;
    }

    /**
     * Gets the winRate property value. The winRate property
     * @return float|null
    */
    public function getWinRate(): ?float {
        return $this->winRate;
    }

    /**
     * Gets the wins property value. The wins property
     * @return int|null
    */
    public function getWins(): ?int {
        return $this->wins;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('losses', $this->getLosses());
        $writer->writeIntegerValue('matchesPlayed', $this->getMatchesPlayed());
        $writer->writeIntegerValue('members', $this->getMembers());
        $writer->writeStringValue('organizationId', $this->getOrganizationId());
        $writer->writeIntegerValue('teams', $this->getTeams());
        $writer->writeFloatValue('winRate', $this->getWinRate());
        $writer->writeIntegerValue('wins', $this->getWins());
    }

    /**
     * Sets the losses property value. The losses property
     * @param int|null $value Value to set for the losses property.
    */
    public function setLosses(?int $value): void {
        $this->losses = $value;
    }

    /**
     * Sets the matchesPlayed property value. The matchesPlayed property
     * @param int|null $value Value to set for the matchesPlayed property.
    */
    public function setMatchesPlayed(?int $value): void {
        $this->matchesPlayed = $value;
    }

    /**
     * Sets the members property value. The members property
     * @param int|null $value Value to set for the members property.
    */
    public function setMembers(?int $value): void {
        $this->members = $value;
    }

    /**
     * Sets the organizationId property value. The organizationId property
     * @param string|null $value Value to set for the organizationId property.
    */
    public function setOrganizationId(?string $value): void {
        $this->organizationId = $value;
    }

    /**
     * Sets the teams property value. The teams property
     * @param int|null $value Value to set for the teams property.
    */
    public function setTeams(?int $value): void {
        $this->teams = $value;
    }

    /**
     * Sets the winRate property value. The winRate property
     * @param float|null $value Value to set for the winRate property.
    */
    public function setWinRate(?float $value): void {
        $this->winRate = $value;
    }

    /**
     * Sets the wins property value. The wins property
     * @param int|null $value Value to set for the wins property.
    */
    public function setWins(?int $value): void {
        $this->wins = $value;
    }

}

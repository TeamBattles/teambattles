<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class OrganizationLeaderboardEntry_stats implements Parsable 
{
    /**
     * @var float|null $experience The experience property
    */
    private ?float $experience = null;
    
    /**
     * @var int|null $losses The losses property
    */
    private ?int $losses = null;
    
    /**
     * @var int|null $matchesPlayed The matchesPlayed property
    */
    private ?int $matchesPlayed = null;
    
    /**
     * @var int|null $teamCount The teamCount property
    */
    private ?int $teamCount = null;
    
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
     * @return OrganizationLeaderboardEntry_stats
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationLeaderboardEntry_stats {
        return new OrganizationLeaderboardEntry_stats();
    }

    /**
     * Gets the experience property value. The experience property
     * @return float|null
    */
    public function getExperience(): ?float {
        return $this->experience;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'experience' => fn(ParseNode $n) => $o->setExperience($n->getFloatValue()),
            'losses' => fn(ParseNode $n) => $o->setLosses($n->getIntegerValue()),
            'matchesPlayed' => fn(ParseNode $n) => $o->setMatchesPlayed($n->getIntegerValue()),
            'teamCount' => fn(ParseNode $n) => $o->setTeamCount($n->getIntegerValue()),
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
     * Gets the teamCount property value. The teamCount property
     * @return int|null
    */
    public function getTeamCount(): ?int {
        return $this->teamCount;
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
        $writer->writeFloatValue('experience', $this->getExperience());
        $writer->writeIntegerValue('losses', $this->getLosses());
        $writer->writeIntegerValue('matchesPlayed', $this->getMatchesPlayed());
        $writer->writeIntegerValue('teamCount', $this->getTeamCount());
        $writer->writeFloatValue('winRate', $this->getWinRate());
        $writer->writeIntegerValue('wins', $this->getWins());
    }

    /**
     * Sets the experience property value. The experience property
     * @param float|null $value Value to set for the experience property.
    */
    public function setExperience(?float $value): void {
        $this->experience = $value;
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
     * Sets the teamCount property value. The teamCount property
     * @param int|null $value Value to set for the teamCount property.
    */
    public function setTeamCount(?int $value): void {
        $this->teamCount = $value;
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

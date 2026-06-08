<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe aggregate user stats.
*/
class ApiUserStats implements Parsable 
{
    /**
     * @var int|null $bestStreak The bestStreak property
    */
    private ?int $bestStreak = null;
    
    /**
     * @var int|null $currentStreak The currentStreak property
    */
    private ?int $currentStreak = null;
    
    /**
     * @var int|null $draws The draws property
    */
    private ?int $draws = null;
    
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
     * @var string|null $userId User ID these stats belong to.
    */
    private ?string $userId = null;
    
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
     * @return ApiUserStats
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiUserStats {
        return new ApiUserStats();
    }

    /**
     * Gets the bestStreak property value. The bestStreak property
     * @return int|null
    */
    public function getBestStreak(): ?int {
        return $this->bestStreak;
    }

    /**
     * Gets the currentStreak property value. The currentStreak property
     * @return int|null
    */
    public function getCurrentStreak(): ?int {
        return $this->currentStreak;
    }

    /**
     * Gets the draws property value. The draws property
     * @return int|null
    */
    public function getDraws(): ?int {
        return $this->draws;
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
            'bestStreak' => fn(ParseNode $n) => $o->setBestStreak($n->getIntegerValue()),
            'currentStreak' => fn(ParseNode $n) => $o->setCurrentStreak($n->getIntegerValue()),
            'draws' => fn(ParseNode $n) => $o->setDraws($n->getIntegerValue()),
            'experience' => fn(ParseNode $n) => $o->setExperience($n->getFloatValue()),
            'losses' => fn(ParseNode $n) => $o->setLosses($n->getIntegerValue()),
            'matchesPlayed' => fn(ParseNode $n) => $o->setMatchesPlayed($n->getIntegerValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
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
     * Gets the userId property value. User ID these stats belong to.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
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
        $writer->writeIntegerValue('bestStreak', $this->getBestStreak());
        $writer->writeIntegerValue('currentStreak', $this->getCurrentStreak());
        $writer->writeIntegerValue('draws', $this->getDraws());
        $writer->writeFloatValue('experience', $this->getExperience());
        $writer->writeIntegerValue('losses', $this->getLosses());
        $writer->writeIntegerValue('matchesPlayed', $this->getMatchesPlayed());
        $writer->writeStringValue('userId', $this->getUserId());
        $writer->writeFloatValue('winRate', $this->getWinRate());
        $writer->writeIntegerValue('wins', $this->getWins());
    }

    /**
     * Sets the bestStreak property value. The bestStreak property
     * @param int|null $value Value to set for the bestStreak property.
    */
    public function setBestStreak(?int $value): void {
        $this->bestStreak = $value;
    }

    /**
     * Sets the currentStreak property value. The currentStreak property
     * @param int|null $value Value to set for the currentStreak property.
    */
    public function setCurrentStreak(?int $value): void {
        $this->currentStreak = $value;
    }

    /**
     * Sets the draws property value. The draws property
     * @param int|null $value Value to set for the draws property.
    */
    public function setDraws(?int $value): void {
        $this->draws = $value;
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
     * Sets the userId property value. User ID these stats belong to.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
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

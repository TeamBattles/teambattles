<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Team leaderboard row.
*/
class TeamLeaderboardEntry implements Parsable 
{
    /**
     * @var TeamLeaderboardEntry_gameSlug|null $gameSlug The gameSlug property
    */
    private ?TeamLeaderboardEntry_gameSlug $gameSlug = null;
    
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var int|null $rank The rank property
    */
    private ?int $rank = null;
    
    /**
     * @var LeaderboardStats|null $stats Aggregate stats used for leaderboard ranking.
    */
    private ?LeaderboardStats $stats = null;
    
    /**
     * @var ApiTeamSummary|null $team Small API-safe team summary.
    */
    private ?ApiTeamSummary $team = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TeamLeaderboardEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TeamLeaderboardEntry {
        return new TeamLeaderboardEntry();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getObjectValue([TeamLeaderboardEntry_gameSlug::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'rank' => fn(ParseNode $n) => $o->setRank($n->getIntegerValue()),
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([LeaderboardStats::class, 'createFromDiscriminatorValue'])),
            'team' => fn(ParseNode $n) => $o->setTeam($n->getObjectValue([ApiTeamSummary::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return TeamLeaderboardEntry_gameSlug|null
    */
    public function getGameSlug(): ?TeamLeaderboardEntry_gameSlug {
        return $this->gameSlug;
    }

    /**
     * Gets the id property value. Team ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the rank property value. The rank property
     * @return int|null
    */
    public function getRank(): ?int {
        return $this->rank;
    }

    /**
     * Gets the stats property value. Aggregate stats used for leaderboard ranking.
     * @return LeaderboardStats|null
    */
    public function getStats(): ?LeaderboardStats {
        return $this->stats;
    }

    /**
     * Gets the team property value. Small API-safe team summary.
     * @return ApiTeamSummary|null
    */
    public function getTeam(): ?ApiTeamSummary {
        return $this->team;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('gameSlug', $this->getGameSlug());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeIntegerValue('rank', $this->getRank());
        $writer->writeObjectValue('stats', $this->getStats());
        $writer->writeObjectValue('team', $this->getTeam());
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param TeamLeaderboardEntry_gameSlug|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?TeamLeaderboardEntry_gameSlug $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the id property value. Team ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the rank property value. The rank property
     * @param int|null $value Value to set for the rank property.
    */
    public function setRank(?int $value): void {
        $this->rank = $value;
    }

    /**
     * Sets the stats property value. Aggregate stats used for leaderboard ranking.
     * @param LeaderboardStats|null $value Value to set for the stats property.
    */
    public function setStats(?LeaderboardStats $value): void {
        $this->stats = $value;
    }

    /**
     * Sets the team property value. Small API-safe team summary.
     * @param ApiTeamSummary|null $value Value to set for the team property.
    */
    public function setTeam(?ApiTeamSummary $value): void {
        $this->team = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Team leaderboard response.
*/
class TeamLeaderboardResponse implements Parsable 
{
    /**
     * @var TeamLeaderboardResponse_gameSlug|null $gameSlug The gameSlug property
    */
    private ?TeamLeaderboardResponse_gameSlug $gameSlug = null;
    
    /**
     * @var LeaderboardSortBy|null $sortBy Supported leaderboard sort field.
    */
    private ?LeaderboardSortBy $sortBy = null;
    
    /**
     * @var array<TeamLeaderboardEntry>|null $teams The teams property
    */
    private ?array $teams = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TeamLeaderboardResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TeamLeaderboardResponse {
        return new TeamLeaderboardResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getObjectValue([TeamLeaderboardResponse_gameSlug::class, 'createFromDiscriminatorValue'])),
            'sortBy' => fn(ParseNode $n) => $o->setSortBy($n->getEnumValue(LeaderboardSortBy::class)),
            'teams' => fn(ParseNode $n) => $o->setTeams($n->getCollectionOfObjectValues([TeamLeaderboardEntry::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return TeamLeaderboardResponse_gameSlug|null
    */
    public function getGameSlug(): ?TeamLeaderboardResponse_gameSlug {
        return $this->gameSlug;
    }

    /**
     * Gets the sortBy property value. Supported leaderboard sort field.
     * @return LeaderboardSortBy|null
    */
    public function getSortBy(): ?LeaderboardSortBy {
        return $this->sortBy;
    }

    /**
     * Gets the teams property value. The teams property
     * @return array<TeamLeaderboardEntry>|null
    */
    public function getTeams(): ?array {
        return $this->teams;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('gameSlug', $this->getGameSlug());
        $writer->writeEnumValue('sortBy', $this->getSortBy());
        $writer->writeCollectionOfObjectValues('teams', $this->getTeams());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param TeamLeaderboardResponse_gameSlug|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?TeamLeaderboardResponse_gameSlug $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param LeaderboardSortBy|null $value Value to set for the sortBy property.
    */
    public function setSortBy(?LeaderboardSortBy $value): void {
        $this->sortBy = $value;
    }

    /**
     * Sets the teams property value. The teams property
     * @param array<TeamLeaderboardEntry>|null $value Value to set for the teams property.
    */
    public function setTeams(?array $value): void {
        $this->teams = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

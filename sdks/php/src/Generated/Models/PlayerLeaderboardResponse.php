<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Player leaderboard response.
*/
class PlayerLeaderboardResponse implements Parsable 
{
    /**
     * @var array<PlayerLeaderboardEntry>|null $players The players property
    */
    private ?array $players = null;
    
    /**
     * @var LeaderboardSortBy|null $sortBy Supported leaderboard sort field.
    */
    private ?LeaderboardSortBy $sortBy = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return PlayerLeaderboardResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): PlayerLeaderboardResponse {
        return new PlayerLeaderboardResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'players' => fn(ParseNode $n) => $o->setPlayers($n->getCollectionOfObjectValues([PlayerLeaderboardEntry::class, 'createFromDiscriminatorValue'])),
            'sortBy' => fn(ParseNode $n) => $o->setSortBy($n->getEnumValue(LeaderboardSortBy::class)),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the players property value. The players property
     * @return array<PlayerLeaderboardEntry>|null
    */
    public function getPlayers(): ?array {
        return $this->players;
    }

    /**
     * Gets the sortBy property value. Supported leaderboard sort field.
     * @return LeaderboardSortBy|null
    */
    public function getSortBy(): ?LeaderboardSortBy {
        return $this->sortBy;
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
        $writer->writeCollectionOfObjectValues('players', $this->getPlayers());
        $writer->writeEnumValue('sortBy', $this->getSortBy());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the players property value. The players property
     * @param array<PlayerLeaderboardEntry>|null $value Value to set for the players property.
    */
    public function setPlayers(?array $value): void {
        $this->players = $value;
    }

    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param LeaderboardSortBy|null $value Value to set for the sortBy property.
    */
    public function setSortBy(?LeaderboardSortBy $value): void {
        $this->sortBy = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

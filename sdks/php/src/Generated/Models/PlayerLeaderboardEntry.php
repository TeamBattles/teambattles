<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Player leaderboard row.
*/
class PlayerLeaderboardEntry implements Parsable 
{
    /**
     * @var string|null $id User ID.
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
     * @var ApiUserProfile|null $user API-safe public user profile.
    */
    private ?ApiUserProfile $user = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return PlayerLeaderboardEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): PlayerLeaderboardEntry {
        return new PlayerLeaderboardEntry();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'rank' => fn(ParseNode $n) => $o->setRank($n->getIntegerValue()),
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([LeaderboardStats::class, 'createFromDiscriminatorValue'])),
            'user' => fn(ParseNode $n) => $o->setUser($n->getObjectValue([ApiUserProfile::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. User ID.
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
     * Gets the user property value. API-safe public user profile.
     * @return ApiUserProfile|null
    */
    public function getUser(): ?ApiUserProfile {
        return $this->user;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeIntegerValue('rank', $this->getRank());
        $writer->writeObjectValue('stats', $this->getStats());
        $writer->writeObjectValue('user', $this->getUser());
    }

    /**
     * Sets the id property value. User ID.
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
     * Sets the user property value. API-safe public user profile.
     * @param ApiUserProfile|null $value Value to set for the user property.
    */
    public function setUser(?ApiUserProfile $value): void {
        $this->user = $value;
    }

}

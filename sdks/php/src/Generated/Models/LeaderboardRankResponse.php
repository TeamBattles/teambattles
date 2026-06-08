<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Leaderboard rank lookup response.
*/
class LeaderboardRankResponse implements Parsable 
{
    /**
     * @var LeaderboardRankResponse_gameSlug|null $gameSlug The gameSlug property
    */
    private ?LeaderboardRankResponse_gameSlug $gameSlug = null;
    
    /**
     * @var string|null $id Resolved entity ID.
    */
    private ?string $id = null;
    
    /**
     * @var LeaderboardRankResponse_rank|null $rank The rank property
    */
    private ?LeaderboardRankResponse_rank $rank = null;
    
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
     * @return LeaderboardRankResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaderboardRankResponse {
        return new LeaderboardRankResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getObjectValue([LeaderboardRankResponse_gameSlug::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'rank' => fn(ParseNode $n) => $o->setRank($n->getObjectValue([LeaderboardRankResponse_rank::class, 'createFromDiscriminatorValue'])),
            'sortBy' => fn(ParseNode $n) => $o->setSortBy($n->getEnumValue(LeaderboardSortBy::class)),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return LeaderboardRankResponse_gameSlug|null
    */
    public function getGameSlug(): ?LeaderboardRankResponse_gameSlug {
        return $this->gameSlug;
    }

    /**
     * Gets the id property value. Resolved entity ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the rank property value. The rank property
     * @return LeaderboardRankResponse_rank|null
    */
    public function getRank(): ?LeaderboardRankResponse_rank {
        return $this->rank;
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
        $writer->writeObjectValue('gameSlug', $this->getGameSlug());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('rank', $this->getRank());
        $writer->writeEnumValue('sortBy', $this->getSortBy());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param LeaderboardRankResponse_gameSlug|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?LeaderboardRankResponse_gameSlug $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the id property value. Resolved entity ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the rank property value. The rank property
     * @param LeaderboardRankResponse_rank|null $value Value to set for the rank property.
    */
    public function setRank(?LeaderboardRankResponse_rank $value): void {
        $this->rank = $value;
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

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Organization leaderboard response.
*/
class OrganizationLeaderboardResponse implements Parsable 
{
    /**
     * @var OrganizationLeaderboardResponse_gameSlug|null $gameSlug The gameSlug property
    */
    private ?OrganizationLeaderboardResponse_gameSlug $gameSlug = null;
    
    /**
     * @var array<OrganizationLeaderboardEntry>|null $organizations The organizations property
    */
    private ?array $organizations = null;
    
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
     * @return OrganizationLeaderboardResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationLeaderboardResponse {
        return new OrganizationLeaderboardResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getObjectValue([OrganizationLeaderboardResponse_gameSlug::class, 'createFromDiscriminatorValue'])),
            'organizations' => fn(ParseNode $n) => $o->setOrganizations($n->getCollectionOfObjectValues([OrganizationLeaderboardEntry::class, 'createFromDiscriminatorValue'])),
            'sortBy' => fn(ParseNode $n) => $o->setSortBy($n->getEnumValue(LeaderboardSortBy::class)),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return OrganizationLeaderboardResponse_gameSlug|null
    */
    public function getGameSlug(): ?OrganizationLeaderboardResponse_gameSlug {
        return $this->gameSlug;
    }

    /**
     * Gets the organizations property value. The organizations property
     * @return array<OrganizationLeaderboardEntry>|null
    */
    public function getOrganizations(): ?array {
        return $this->organizations;
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
        $writer->writeCollectionOfObjectValues('organizations', $this->getOrganizations());
        $writer->writeEnumValue('sortBy', $this->getSortBy());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param OrganizationLeaderboardResponse_gameSlug|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?OrganizationLeaderboardResponse_gameSlug $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the organizations property value. The organizations property
     * @param array<OrganizationLeaderboardEntry>|null $value Value to set for the organizations property.
    */
    public function setOrganizations(?array $value): void {
        $this->organizations = $value;
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

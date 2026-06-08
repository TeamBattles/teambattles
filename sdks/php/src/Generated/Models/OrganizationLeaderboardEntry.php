<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Organization leaderboard row.
*/
class OrganizationLeaderboardEntry implements Parsable 
{
    /**
     * @var OrganizationLeaderboardEntry_gameSlug|null $gameSlug The gameSlug property
    */
    private ?OrganizationLeaderboardEntry_gameSlug $gameSlug = null;
    
    /**
     * @var string|null $id Organization ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiOrganizationSummary|null $organization Small API-safe organization summary.
    */
    private ?ApiOrganizationSummary $organization = null;
    
    /**
     * @var int|null $rank The rank property
    */
    private ?int $rank = null;
    
    /**
     * @var OrganizationLeaderboardEntry_stats|null $stats The stats property
    */
    private ?OrganizationLeaderboardEntry_stats $stats = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return OrganizationLeaderboardEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationLeaderboardEntry {
        return new OrganizationLeaderboardEntry();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'gameSlug' => fn(ParseNode $n) => $o->setGameSlug($n->getObjectValue([OrganizationLeaderboardEntry_gameSlug::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'organization' => fn(ParseNode $n) => $o->setOrganization($n->getObjectValue([ApiOrganizationSummary::class, 'createFromDiscriminatorValue'])),
            'rank' => fn(ParseNode $n) => $o->setRank($n->getIntegerValue()),
            'stats' => fn(ParseNode $n) => $o->setStats($n->getObjectValue([OrganizationLeaderboardEntry_stats::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return OrganizationLeaderboardEntry_gameSlug|null
    */
    public function getGameSlug(): ?OrganizationLeaderboardEntry_gameSlug {
        return $this->gameSlug;
    }

    /**
     * Gets the id property value. Organization ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the organization property value. Small API-safe organization summary.
     * @return ApiOrganizationSummary|null
    */
    public function getOrganization(): ?ApiOrganizationSummary {
        return $this->organization;
    }

    /**
     * Gets the rank property value. The rank property
     * @return int|null
    */
    public function getRank(): ?int {
        return $this->rank;
    }

    /**
     * Gets the stats property value. The stats property
     * @return OrganizationLeaderboardEntry_stats|null
    */
    public function getStats(): ?OrganizationLeaderboardEntry_stats {
        return $this->stats;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('gameSlug', $this->getGameSlug());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('organization', $this->getOrganization());
        $writer->writeIntegerValue('rank', $this->getRank());
        $writer->writeObjectValue('stats', $this->getStats());
    }

    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param OrganizationLeaderboardEntry_gameSlug|null $value Value to set for the gameSlug property.
    */
    public function setGameSlug(?OrganizationLeaderboardEntry_gameSlug $value): void {
        $this->gameSlug = $value;
    }

    /**
     * Sets the id property value. Organization ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the organization property value. Small API-safe organization summary.
     * @param ApiOrganizationSummary|null $value Value to set for the organization property.
    */
    public function setOrganization(?ApiOrganizationSummary $value): void {
        $this->organization = $value;
    }

    /**
     * Sets the rank property value. The rank property
     * @param int|null $value Value to set for the rank property.
    */
    public function setRank(?int $value): void {
        $this->rank = $value;
    }

    /**
     * Sets the stats property value. The stats property
     * @param OrganizationLeaderboardEntry_stats|null $value Value to set for the stats property.
    */
    public function setStats(?OrganizationLeaderboardEntry_stats $value): void {
        $this->stats = $value;
    }

}

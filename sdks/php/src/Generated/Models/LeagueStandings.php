<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League standings for a season.
*/
class LeagueStandings implements Parsable 
{
    /**
     * @var int|null $count Number of teams returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueStandings_standings>|null $standings Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
    */
    private ?array $standings = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueStandings
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueStandings {
        return new LeagueStandings();
    }

    /**
     * Gets the count property value. Number of teams returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'standings' => fn(ParseNode $n) => $o->setStandings($n->getCollectionOfObjectValues([LeagueStandings_standings::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     * @return array<LeagueStandings_standings>|null
    */
    public function getStandings(): ?array {
        return $this->standings;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('standings', $this->getStandings());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of teams returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     * @param array<LeagueStandings_standings>|null $value Value to set for the standings property.
    */
    public function setStandings(?array $value): void {
        $this->standings = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

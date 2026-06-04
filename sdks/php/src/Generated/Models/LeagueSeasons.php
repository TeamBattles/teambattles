<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Seasons for a league.
*/
class LeagueSeasons implements Parsable 
{
    /**
     * @var int|null $count Number of seasons returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueSeasons_seasons>|null $seasons Season documents for the league.
    */
    private ?array $seasons = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSeasons
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSeasons {
        return new LeagueSeasons();
    }

    /**
     * Gets the count property value. Number of seasons returned.
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
            'seasons' => fn(ParseNode $n) => $o->setSeasons($n->getCollectionOfObjectValues([LeagueSeasons_seasons::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the seasons property value. Season documents for the league.
     * @return array<LeagueSeasons_seasons>|null
    */
    public function getSeasons(): ?array {
        return $this->seasons;
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
        $writer->writeCollectionOfObjectValues('seasons', $this->getSeasons());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of seasons returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the seasons property value. Season documents for the league.
     * @param array<LeagueSeasons_seasons>|null $value Value to set for the seasons property.
    */
    public function setSeasons(?array $value): void {
        $this->seasons = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

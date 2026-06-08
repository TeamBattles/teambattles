<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Season selector options.
*/
class LeagueSeasonOptions implements Parsable 
{
    /**
     * @var LeagueSeasonOptions_defaultSeasonId|null $defaultSeasonId Recommended default option.
    */
    private ?LeagueSeasonOptions_defaultSeasonId $defaultSeasonId = null;
    
    /**
     * @var array<LeagueSeasonOptions_seasons>|null $seasons Season selector options for a league game.
    */
    private ?array $seasons = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSeasonOptions
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSeasonOptions {
        return new LeagueSeasonOptions();
    }

    /**
     * Gets the defaultSeasonId property value. Recommended default option.
     * @return LeagueSeasonOptions_defaultSeasonId|null
    */
    public function getDefaultSeasonId(): ?LeagueSeasonOptions_defaultSeasonId {
        return $this->defaultSeasonId;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'defaultSeasonId' => fn(ParseNode $n) => $o->setDefaultSeasonId($n->getObjectValue([LeagueSeasonOptions_defaultSeasonId::class, 'createFromDiscriminatorValue'])),
            'seasons' => fn(ParseNode $n) => $o->setSeasons($n->getCollectionOfObjectValues([LeagueSeasonOptions_seasons::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the seasons property value. Season selector options for a league game.
     * @return array<LeagueSeasonOptions_seasons>|null
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
        $writer->writeObjectValue('defaultSeasonId', $this->getDefaultSeasonId());
        $writer->writeCollectionOfObjectValues('seasons', $this->getSeasons());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the defaultSeasonId property value. Recommended default option.
     * @param LeagueSeasonOptions_defaultSeasonId|null $value Value to set for the defaultSeasonId property.
    */
    public function setDefaultSeasonId(?LeagueSeasonOptions_defaultSeasonId $value): void {
        $this->defaultSeasonId = $value;
    }

    /**
     * Sets the seasons property value. Season selector options for a league game.
     * @param array<LeagueSeasonOptions_seasons>|null $value Value to set for the seasons property.
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

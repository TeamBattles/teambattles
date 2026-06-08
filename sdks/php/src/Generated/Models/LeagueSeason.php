<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Single league season response.
*/
class LeagueSeason implements Parsable 
{
    /**
     * @var LeagueSeason_season|null $season The requested league season.
    */
    private ?LeagueSeason_season $season = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSeason
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSeason {
        return new LeagueSeason();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'season' => fn(ParseNode $n) => $o->setSeason($n->getObjectValue([LeagueSeason_season::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the season property value. The requested league season.
     * @return LeagueSeason_season|null
    */
    public function getSeason(): ?LeagueSeason_season {
        return $this->season;
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
        $writer->writeObjectValue('season', $this->getSeason());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the season property value. The requested league season.
     * @param LeagueSeason_season|null $value Value to set for the season property.
    */
    public function setSeason(?LeagueSeason_season $value): void {
        $this->season = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

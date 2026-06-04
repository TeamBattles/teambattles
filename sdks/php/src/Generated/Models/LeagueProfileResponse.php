<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League profile response envelope.
*/
class LeagueProfileResponse implements Parsable 
{
    /**
     * @var LeagueProfile|null $league Public profile for a single league.
    */
    private ?LeagueProfile $league = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueProfileResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueProfileResponse {
        return new LeagueProfileResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'league' => fn(ParseNode $n) => $o->setLeague($n->getObjectValue([LeagueProfile::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the league property value. Public profile for a single league.
     * @return LeagueProfile|null
    */
    public function getLeague(): ?LeagueProfile {
        return $this->league;
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
        $writer->writeObjectValue('league', $this->getLeague());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the league property value. Public profile for a single league.
     * @param LeagueProfile|null $value Value to set for the league property.
    */
    public function setLeague(?LeagueProfile $value): void {
        $this->league = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

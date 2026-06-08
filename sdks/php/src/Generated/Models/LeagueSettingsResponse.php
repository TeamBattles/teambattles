<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Full league settings visible to league admins.
*/
class LeagueSettingsResponse implements Parsable 
{
    /**
     * @var LeagueSettingsResponse_league|null $league The league property
    */
    private ?LeagueSettingsResponse_league $league = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSettingsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSettingsResponse {
        return new LeagueSettingsResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'league' => fn(ParseNode $n) => $o->setLeague($n->getObjectValue([LeagueSettingsResponse_league::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the league property value. The league property
     * @return LeagueSettingsResponse_league|null
    */
    public function getLeague(): ?LeagueSettingsResponse_league {
        return $this->league;
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
        $writer->writeObjectValue('league', $this->getLeague());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the league property value. The league property
     * @param LeagueSettingsResponse_league|null $value Value to set for the league property.
    */
    public function setLeague(?LeagueSettingsResponse_league $value): void {
        $this->league = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

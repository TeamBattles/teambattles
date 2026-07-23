<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Tournament profile response envelope.
*/
class TournamentProfileResponse implements Parsable 
{
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * @var TournamentProfile|null $tournament Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
    */
    private ?TournamentProfile $tournament = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentProfileResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentProfileResponse {
        return new TournamentProfileResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'tournament' => fn(ParseNode $n) => $o->setTournament($n->getObjectValue([TournamentProfile::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
     * @return TournamentProfile|null
    */
    public function getTournament(): ?TournamentProfile {
        return $this->tournament;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeObjectValue('tournament', $this->getTournament());
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
     * @param TournamentProfile|null $value Value to set for the tournament property.
    */
    public function setTournament(?TournamentProfile $value): void {
        $this->tournament = $value;
    }

}

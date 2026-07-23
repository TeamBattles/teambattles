<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The participant row created (or reused) by an entry or application.
*/
class TournamentTeamEntryResponse implements Parsable 
{
    /**
     * @var string|null $participantId The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
    */
    private ?string $participantId = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentTeamEntryResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentTeamEntryResponse {
        return new TournamentTeamEntryResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the participantId property value. The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
     * @return string|null
    */
    public function getParticipantId(): ?string {
        return $this->participantId;
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
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the participantId property value. The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
     * @param string|null $value Value to set for the participantId property.
    */
    public function setParticipantId(?string $value): void {
        $this->participantId = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

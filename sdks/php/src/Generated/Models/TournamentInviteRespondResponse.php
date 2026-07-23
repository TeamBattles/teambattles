<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Outcome of accepting or declining a tournament invite.
*/
class TournamentInviteRespondResponse implements Parsable 
{
    /**
     * @var bool|null $accepted Echoes the request's accept flag once the response has been recorded.
    */
    private ?bool $accepted = null;
    
    /**
     * @var string|null $participantId The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
    */
    private ?string $participantId = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentInviteRespondResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentInviteRespondResponse {
        return new TournamentInviteRespondResponse();
    }

    /**
     * Gets the accepted property value. Echoes the request's accept flag once the response has been recorded.
     * @return bool|null
    */
    public function getAccepted(): ?bool {
        return $this->accepted;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'accepted' => fn(ParseNode $n) => $o->setAccepted($n->getBooleanValue()),
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
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
        $writer->writeBooleanValue('accepted', $this->getAccepted());
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the accepted property value. Echoes the request's accept flag once the response has been recorded.
     * @param bool|null $value Value to set for the accepted property.
    */
    public function setAccepted(?bool $value): void {
        $this->accepted = $value;
    }

    /**
     * Sets the participantId property value. The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
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

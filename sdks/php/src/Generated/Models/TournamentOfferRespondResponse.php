<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Outcome of accepting or declining a free-agent pickup offer.
*/
class TournamentOfferRespondResponse implements Parsable 
{
    /**
     * @var bool|null $accepted Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
    */
    private ?bool $accepted = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentOfferRespondResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentOfferRespondResponse {
        return new TournamentOfferRespondResponse();
    }

    /**
     * Gets the accepted property value. Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
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
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
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
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('accepted', $this->getAccepted());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the accepted property value. Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
     * @param bool|null $value Value to set for the accepted property.
    */
    public function setAccepted(?bool $value): void {
        $this->accepted = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

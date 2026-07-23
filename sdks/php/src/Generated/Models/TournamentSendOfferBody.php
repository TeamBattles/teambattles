<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Free-agent pickup offer payload.
*/
class TournamentSendOfferBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $message Optional message delivered to the free agent alongside the offer.
    */
    private ?string $message = null;
    
    /**
     * @var string|null $participantId Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
    */
    private ?string $participantId = null;
    
    /**
     * Instantiates a new TournamentSendOfferBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSendOfferBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSendOfferBody {
        return new TournamentSendOfferBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'message' => fn(ParseNode $n) => $o->setMessage($n->getStringValue()),
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
        ];
    }

    /**
     * Gets the message property value. Optional message delivered to the free agent alongside the offer.
     * @return string|null
    */
    public function getMessage(): ?string {
        return $this->message;
    }

    /**
     * Gets the participantId property value. Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
     * @return string|null
    */
    public function getParticipantId(): ?string {
        return $this->participantId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('message', $this->getMessage());
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the message property value. Optional message delivered to the free agent alongside the offer.
     * @param string|null $value Value to set for the message property.
    */
    public function setMessage(?string $value): void {
        $this->message = $value;
    }

    /**
     * Sets the participantId property value. Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
     * @param string|null $value Value to set for the participantId property.
    */
    public function setParticipantId(?string $value): void {
        $this->participantId = $value;
    }

}

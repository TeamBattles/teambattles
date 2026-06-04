<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of a successful match status transition.
*/
class GameStatusUpdateResponse implements Parsable 
{
    /**
     * @var string|null $matchId ID of the updated match.
    */
    private ?string $matchId = null;
    
    /**
     * @var string|null $newStatus Match status after the transition.
    */
    private ?string $newStatus = null;
    
    /**
     * @var string|null $previousStatus Match status before the transition.
    */
    private ?string $previousStatus = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp Server response time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameStatusUpdateResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameStatusUpdateResponse {
        return new GameStatusUpdateResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'matchId' => fn(ParseNode $n) => $o->setMatchId($n->getStringValue()),
            'newStatus' => fn(ParseNode $n) => $o->setNewStatus($n->getStringValue()),
            'previousStatus' => fn(ParseNode $n) => $o->setPreviousStatus($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the matchId property value. ID of the updated match.
     * @return string|null
    */
    public function getMatchId(): ?string {
        return $this->matchId;
    }

    /**
     * Gets the newStatus property value. Match status after the transition.
     * @return string|null
    */
    public function getNewStatus(): ?string {
        return $this->newStatus;
    }

    /**
     * Gets the previousStatus property value. Match status before the transition.
     * @return string|null
    */
    public function getPreviousStatus(): ?string {
        return $this->previousStatus;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
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
        $writer->writeStringValue('matchId', $this->getMatchId());
        $writer->writeStringValue('newStatus', $this->getNewStatus());
        $writer->writeStringValue('previousStatus', $this->getPreviousStatus());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the matchId property value. ID of the updated match.
     * @param string|null $value Value to set for the matchId property.
    */
    public function setMatchId(?string $value): void {
        $this->matchId = $value;
    }

    /**
     * Sets the newStatus property value. Match status after the transition.
     * @param string|null $value Value to set for the newStatus property.
    */
    public function setNewStatus(?string $value): void {
        $this->newStatus = $value;
    }

    /**
     * Sets the previousStatus property value. Match status before the transition.
     * @param string|null $value Value to set for the previousStatus property.
    */
    public function setPreviousStatus(?string $value): void {
        $this->previousStatus = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The caller's own free-agent pool row.
*/
class MyTournamentFreeAgent implements Parsable 
{
    /**
     * @var float|null $createdAt Pool join time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $freeAgentId Free-agent row ID.
    */
    private ?string $freeAgentId = null;
    
    /**
     * @var string|null $note Free-text note the caller supplied.
    */
    private ?string $note = null;
    
    /**
     * @var string|null $pickedUpByParticipantId Participant who picked the caller up. Present only when PICKED_UP.
    */
    private ?string $pickedUpByParticipantId = null;
    
    /**
     * @var TournamentFreeAgentStatus|null $status State of the caller's free-agent pool row.
    */
    private ?TournamentFreeAgentStatus $status = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentFreeAgent
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentFreeAgent {
        return new MyTournamentFreeAgent();
    }

    /**
     * Gets the createdAt property value. Pool join time (epoch milliseconds).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'freeAgentId' => fn(ParseNode $n) => $o->setFreeAgentId($n->getStringValue()),
            'note' => fn(ParseNode $n) => $o->setNote($n->getStringValue()),
            'pickedUpByParticipantId' => fn(ParseNode $n) => $o->setPickedUpByParticipantId($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(TournamentFreeAgentStatus::class)),
        ];
    }

    /**
     * Gets the freeAgentId property value. Free-agent row ID.
     * @return string|null
    */
    public function getFreeAgentId(): ?string {
        return $this->freeAgentId;
    }

    /**
     * Gets the note property value. Free-text note the caller supplied.
     * @return string|null
    */
    public function getNote(): ?string {
        return $this->note;
    }

    /**
     * Gets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
     * @return string|null
    */
    public function getPickedUpByParticipantId(): ?string {
        return $this->pickedUpByParticipantId;
    }

    /**
     * Gets the status property value. State of the caller's free-agent pool row.
     * @return TournamentFreeAgentStatus|null
    */
    public function getStatus(): ?TournamentFreeAgentStatus {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('freeAgentId', $this->getFreeAgentId());
        $writer->writeStringValue('note', $this->getNote());
        $writer->writeStringValue('pickedUpByParticipantId', $this->getPickedUpByParticipantId());
        $writer->writeEnumValue('status', $this->getStatus());
    }

    /**
     * Sets the createdAt property value. Pool join time (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the freeAgentId property value. Free-agent row ID.
     * @param string|null $value Value to set for the freeAgentId property.
    */
    public function setFreeAgentId(?string $value): void {
        $this->freeAgentId = $value;
    }

    /**
     * Sets the note property value. Free-text note the caller supplied.
     * @param string|null $value Value to set for the note property.
    */
    public function setNote(?string $value): void {
        $this->note = $value;
    }

    /**
     * Sets the pickedUpByParticipantId property value. Participant who picked the caller up. Present only when PICKED_UP.
     * @param string|null $value Value to set for the pickedUpByParticipantId property.
    */
    public function setPickedUpByParticipantId(?string $value): void {
        $this->pickedUpByParticipantId = $value;
    }

    /**
     * Sets the status property value. State of the caller's free-agent pool row.
     * @param TournamentFreeAgentStatus|null $value Value to set for the status property.
    */
    public function setStatus(?TournamentFreeAgentStatus $value): void {
        $this->status = $value;
    }

}

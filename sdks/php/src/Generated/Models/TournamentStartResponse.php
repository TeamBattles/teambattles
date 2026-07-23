<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Acknowledgement that a tournament was started. Matches follow asynchronously.
*/
class TournamentStartResponse implements Parsable 
{
    /**
     * @var bool|null $accepted The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
    */
    private ?bool $accepted = null;
    
    /**
     * @var string|null $matchGeneration Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
    */
    private ?string $matchGeneration = null;
    
    /**
     * @var int|null $nodeCount Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
    */
    private ?int $nodeCount = null;
    
    /**
     * @var string|null $status The lifecycle status this call set.
    */
    private ?string $status = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentStartResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentStartResponse {
        return new TournamentStartResponse();
    }

    /**
     * Gets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
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
            'matchGeneration' => fn(ParseNode $n) => $o->setMatchGeneration($n->getStringValue()),
            'nodeCount' => fn(ParseNode $n) => $o->setNodeCount($n->getIntegerValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
     * @return string|null
    */
    public function getMatchGeneration(): ?string {
        return $this->matchGeneration;
    }

    /**
     * Gets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
     * @return int|null
    */
    public function getNodeCount(): ?int {
        return $this->nodeCount;
    }

    /**
     * Gets the status property value. The lifecycle status this call set.
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
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
        $writer->writeBooleanValue('accepted', $this->getAccepted());
        $writer->writeStringValue('matchGeneration', $this->getMatchGeneration());
        $writer->writeIntegerValue('nodeCount', $this->getNodeCount());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the accepted property value. The tournament was started and the bracket structure persisted. It does NOT mean matches exist yet.
     * @param bool|null $value Value to set for the accepted property.
    */
    public function setAccepted(?bool $value): void {
        $this->accepted = $value;
    }

    /**
     * Sets the matchGeneration property value. Always `pending`. Match generation runs asynchronously after this response and can partially fail, so there is no success value to report here.
     * @param string|null $value Value to set for the matchGeneration property.
    */
    public function setMatchGeneration(?string $value): void {
        $this->matchGeneration = $value;
    }

    /**
     * Sets the nodeCount property value. Size of the generated BRACKET STRUCTURE (nodes), not a count of playable matches and not a count of matches that will be generated. Do not use it as a completion target.
     * @param int|null $value Value to set for the nodeCount property.
    */
    public function setNodeCount(?int $value): void {
        $this->nodeCount = $value;
    }

    /**
     * Sets the status property value. The lifecycle status this call set.
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

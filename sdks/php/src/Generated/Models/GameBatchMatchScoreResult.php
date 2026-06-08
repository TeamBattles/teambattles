<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Outcome for a single (match, map) item in a multi-match batch.
*/
class GameBatchMatchScoreResult implements Parsable 
{
    /**
     * @var string|null $error Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
    */
    private ?string $error = null;
    
    /**
     * @var int|null $mapIndex Index of the map this result refers to.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var string|null $matchId Match ID this result refers to.
    */
    private ?string $matchId = null;
    
    /**
     * @var string|null $status Per-item outcome: "confirmed" on success, "failed" otherwise.
    */
    private ?string $status = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameBatchMatchScoreResult
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameBatchMatchScoreResult {
        return new GameBatchMatchScoreResult();
    }

    /**
     * Gets the error property value. Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
     * @return string|null
    */
    public function getError(): ?string {
        return $this->error;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'error' => fn(ParseNode $n) => $o->setError($n->getStringValue()),
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'matchId' => fn(ParseNode $n) => $o->setMatchId($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
        ];
    }

    /**
     * Gets the mapIndex property value. Index of the map this result refers to.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the matchId property value. Match ID this result refers to.
     * @return string|null
    */
    public function getMatchId(): ?string {
        return $this->matchId;
    }

    /**
     * Gets the status property value. Per-item outcome: "confirmed" on success, "failed" otherwise.
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('error', $this->getError());
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeStringValue('matchId', $this->getMatchId());
        $writer->writeStringValue('status', $this->getStatus());
    }

    /**
     * Sets the error property value. Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
     * @param string|null $value Value to set for the error property.
    */
    public function setError(?string $value): void {
        $this->error = $value;
    }

    /**
     * Sets the mapIndex property value. Index of the map this result refers to.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the matchId property value. Match ID this result refers to.
     * @param string|null $value Value to set for the matchId property.
    */
    public function setMatchId(?string $value): void {
        $this->matchId = $value;
    }

    /**
     * Sets the status property value. Per-item outcome: "confirmed" on success, "failed" otherwise.
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
    }

}

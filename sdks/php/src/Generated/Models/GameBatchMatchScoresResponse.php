<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of a multi-match batch map-score submission. Always returned with HTTP 200; inspect per-item status.
*/
class GameBatchMatchScoresResponse implements Parsable 
{
    /**
     * @var int|null $count Number of items that were confirmed.
    */
    private ?int $count = null;
    
    /**
     * @var array<GameBatchMatchScoreResult>|null $submitted Per-item results, in submission order.
    */
    private ?array $submitted = null;
    
    /**
     * @var bool|null $success True only when every submitted item was confirmed.
    */
    private ?bool $success = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameBatchMatchScoresResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameBatchMatchScoresResponse {
        return new GameBatchMatchScoresResponse();
    }

    /**
     * Gets the count property value. Number of items that were confirmed.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'submitted' => fn(ParseNode $n) => $o->setSubmitted($n->getCollectionOfObjectValues([GameBatchMatchScoreResult::class, 'createFromDiscriminatorValue'])),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the submitted property value. Per-item results, in submission order.
     * @return array<GameBatchMatchScoreResult>|null
    */
    public function getSubmitted(): ?array {
        return $this->submitted;
    }

    /**
     * Gets the success property value. True only when every submitted item was confirmed.
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('submitted', $this->getSubmitted());
        $writer->writeBooleanValue('success', $this->getSuccess());
    }

    /**
     * Sets the count property value. Number of items that were confirmed.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the submitted property value. Per-item results, in submission order.
     * @param array<GameBatchMatchScoreResult>|null $value Value to set for the submitted property.
    */
    public function setSubmitted(?array $value): void {
        $this->submitted = $value;
    }

    /**
     * Sets the success property value. True only when every submitted item was confirmed.
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

}

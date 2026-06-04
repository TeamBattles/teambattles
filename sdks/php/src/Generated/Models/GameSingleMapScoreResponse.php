<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of submitting a single map score.
*/
class GameSingleMapScoreResponse implements Parsable 
{
    /**
     * @var int|null $mapIndex Index of the map that was scored.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var string|null $scoreStatus Confirmation state, always "CONFIRMED" on success.
    */
    private ?string $scoreStatus = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameSingleMapScoreResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameSingleMapScoreResponse {
        return new GameSingleMapScoreResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'scoreStatus' => fn(ParseNode $n) => $o->setScoreStatus($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the mapIndex property value. Index of the map that was scored.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the scoreStatus property value. Confirmation state, always "CONFIRMED" on success.
     * @return string|null
    */
    public function getScoreStatus(): ?string {
        return $this->scoreStatus;
    }

    /**
     * Gets the success property value. The success property
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
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeStringValue('scoreStatus', $this->getScoreStatus());
        $writer->writeBooleanValue('success', $this->getSuccess());
    }

    /**
     * Sets the mapIndex property value. Index of the map that was scored.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the scoreStatus property value. Confirmation state, always "CONFIRMED" on success.
     * @param string|null $value Value to set for the scoreStatus property.
    */
    public function setScoreStatus(?string $value): void {
        $this->scoreStatus = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

}

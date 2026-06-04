<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of a successful player-stats update.
*/
class GamePlayerStatsResponse implements Parsable 
{
    /**
     * @var string|null $action Operation performed, always "updated" on success.
    */
    private ?string $action = null;
    
    /**
     * @var int|null $mapIndex Index of the map whose stats were updated.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GamePlayerStatsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GamePlayerStatsResponse {
        return new GamePlayerStatsResponse();
    }

    /**
     * Gets the action property value. Operation performed, always "updated" on success.
     * @return string|null
    */
    public function getAction(): ?string {
        return $this->action;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'action' => fn(ParseNode $n) => $o->setAction($n->getStringValue()),
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the mapIndex property value. Index of the map whose stats were updated.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
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
        $writer->writeStringValue('action', $this->getAction());
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeBooleanValue('success', $this->getSuccess());
    }

    /**
     * Sets the action property value. Operation performed, always "updated" on success.
     * @param string|null $value Value to set for the action property.
    */
    public function setAction(?string $value): void {
        $this->action = $value;
    }

    /**
     * Sets the mapIndex property value. Index of the map whose stats were updated.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One placement -> points row.
*/
class TournamentPlacementPointsEntry implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $placement Final placement, 1 = champion.
    */
    private ?int $placement = null;
    
    /**
     * @var float|null $points League points awarded, 0-1000.
    */
    private ?float $points = null;
    
    /**
     * Instantiates a new TournamentPlacementPointsEntry and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentPlacementPointsEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentPlacementPointsEntry {
        return new TournamentPlacementPointsEntry();
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
            'placement' => fn(ParseNode $n) => $o->setPlacement($n->getIntegerValue()),
            'points' => fn(ParseNode $n) => $o->setPoints($n->getFloatValue()),
        ];
    }

    /**
     * Gets the placement property value. Final placement, 1 = champion.
     * @return int|null
    */
    public function getPlacement(): ?int {
        return $this->placement;
    }

    /**
     * Gets the points property value. League points awarded, 0-1000.
     * @return float|null
    */
    public function getPoints(): ?float {
        return $this->points;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('placement', $this->getPlacement());
        $writer->writeFloatValue('points', $this->getPoints());
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
     * Sets the placement property value. Final placement, 1 = champion.
     * @param int|null $value Value to set for the placement property.
    */
    public function setPlacement(?int $value): void {
        $this->placement = $value;
    }

    /**
     * Sets the points property value. League points awarded, 0-1000.
     * @param float|null $value Value to set for the points property.
    */
    public function setPoints(?float $value): void {
        $this->points = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class MapScores_seriesScore implements Parsable 
{
    /**
     * @var int|null $creatorMapWins The creatorMapWins property
    */
    private ?int $creatorMapWins = null;
    
    /**
     * @var int|null $opponentMapWins The opponentMapWins property
    */
    private ?int $opponentMapWins = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MapScores_seriesScore
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MapScores_seriesScore {
        return new MapScores_seriesScore();
    }

    /**
     * Gets the creatorMapWins property value. The creatorMapWins property
     * @return int|null
    */
    public function getCreatorMapWins(): ?int {
        return $this->creatorMapWins;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'creatorMapWins' => fn(ParseNode $n) => $o->setCreatorMapWins($n->getIntegerValue()),
            'opponentMapWins' => fn(ParseNode $n) => $o->setOpponentMapWins($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the opponentMapWins property value. The opponentMapWins property
     * @return int|null
    */
    public function getOpponentMapWins(): ?int {
        return $this->opponentMapWins;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('creatorMapWins', $this->getCreatorMapWins());
        $writer->writeIntegerValue('opponentMapWins', $this->getOpponentMapWins());
    }

    /**
     * Sets the creatorMapWins property value. The creatorMapWins property
     * @param int|null $value Value to set for the creatorMapWins property.
    */
    public function setCreatorMapWins(?int $value): void {
        $this->creatorMapWins = $value;
    }

    /**
     * Sets the opponentMapWins property value. The opponentMapWins property
     * @param int|null $value Value to set for the opponentMapWins property.
    */
    public function setOpponentMapWins(?int $value): void {
        $this->opponentMapWins = $value;
    }

}

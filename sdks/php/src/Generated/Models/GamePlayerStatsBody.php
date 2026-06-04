<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Request body for submitting or updating player stats for an existing map score.
*/
class GamePlayerStatsBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $mapIndex Zero-based index of the map whose stats are being updated.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var GamePlayerStatsBody_playerStats|null $playerStats Per-player stats keyed by user ID. The map score must already exist.
    */
    private ?GamePlayerStatsBody_playerStats $playerStats = null;
    
    /**
     * Instantiates a new GamePlayerStatsBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GamePlayerStatsBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GamePlayerStatsBody {
        return new GamePlayerStatsBody();
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
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'playerStats' => fn(ParseNode $n) => $o->setPlayerStats($n->getObjectValue([GamePlayerStatsBody_playerStats::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the mapIndex property value. Zero-based index of the map whose stats are being updated.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
     * @return GamePlayerStatsBody_playerStats|null
    */
    public function getPlayerStats(): ?GamePlayerStatsBody_playerStats {
        return $this->playerStats;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeObjectValue('playerStats', $this->getPlayerStats());
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
     * Sets the mapIndex property value. Zero-based index of the map whose stats are being updated.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the playerStats property value. Per-player stats keyed by user ID. The map score must already exist.
     * @param GamePlayerStatsBody_playerStats|null $value Value to set for the playerStats property.
    */
    public function setPlayerStats(?GamePlayerStatsBody_playerStats $value): void {
        $this->playerStats = $value;
    }

}

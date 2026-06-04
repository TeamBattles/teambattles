<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * All map scores for a match with a series summary.
*/
class MapScores implements Parsable 
{
    /**
     * @var array<MapScoreItem>|null $scores The scores property
    */
    private ?array $scores = null;
    
    /**
     * @var MapScores_seriesScore|null $seriesScore The seriesScore property
    */
    private ?MapScores_seriesScore $seriesScore = null;
    
    /**
     * @var string|null $timestamp Response timestamp (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MapScores
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MapScores {
        return new MapScores();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'scores' => fn(ParseNode $n) => $o->setScores($n->getCollectionOfObjectValues([MapScoreItem::class, 'createFromDiscriminatorValue'])),
            'seriesScore' => fn(ParseNode $n) => $o->setSeriesScore($n->getObjectValue([MapScores_seriesScore::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the scores property value. The scores property
     * @return array<MapScoreItem>|null
    */
    public function getScores(): ?array {
        return $this->scores;
    }

    /**
     * Gets the seriesScore property value. The seriesScore property
     * @return MapScores_seriesScore|null
    */
    public function getSeriesScore(): ?MapScores_seriesScore {
        return $this->seriesScore;
    }

    /**
     * Gets the timestamp property value. Response timestamp (ISO 8601).
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
        $writer->writeCollectionOfObjectValues('scores', $this->getScores());
        $writer->writeObjectValue('seriesScore', $this->getSeriesScore());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the scores property value. The scores property
     * @param array<MapScoreItem>|null $value Value to set for the scores property.
    */
    public function setScores(?array $value): void {
        $this->scores = $value;
    }

    /**
     * Sets the seriesScore property value. The seriesScore property
     * @param MapScores_seriesScore|null $value Value to set for the seriesScore property.
    */
    public function setSeriesScore(?MapScores_seriesScore $value): void {
        $this->seriesScore = $value;
    }

    /**
     * Sets the timestamp property value. Response timestamp (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

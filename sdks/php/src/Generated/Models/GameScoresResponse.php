<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * All map scores for a match plus the aggregate series tally.
*/
class GameScoresResponse implements Parsable 
{
    /**
     * @var array<GameScore>|null $scores All recorded map scores for the match.
    */
    private ?array $scores = null;
    
    /**
     * @var GameSeriesScore|null $seriesScore Aggregate map-win tally across the series.
    */
    private ?GameSeriesScore $seriesScore = null;
    
    /**
     * @var string|null $timestamp Server response time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameScoresResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameScoresResponse {
        return new GameScoresResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'scores' => fn(ParseNode $n) => $o->setScores($n->getCollectionOfObjectValues([GameScore::class, 'createFromDiscriminatorValue'])),
            'seriesScore' => fn(ParseNode $n) => $o->setSeriesScore($n->getObjectValue([GameSeriesScore::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the scores property value. All recorded map scores for the match.
     * @return array<GameScore>|null
    */
    public function getScores(): ?array {
        return $this->scores;
    }

    /**
     * Gets the seriesScore property value. Aggregate map-win tally across the series.
     * @return GameSeriesScore|null
    */
    public function getSeriesScore(): ?GameSeriesScore {
        return $this->seriesScore;
    }

    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
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
     * Sets the scores property value. All recorded map scores for the match.
     * @param array<GameScore>|null $value Value to set for the scores property.
    */
    public function setScores(?array $value): void {
        $this->scores = $value;
    }

    /**
     * Sets the seriesScore property value. Aggregate map-win tally across the series.
     * @param GameSeriesScore|null $value Value to set for the seriesScore property.
    */
    public function setSeriesScore(?GameSeriesScore $value): void {
        $this->seriesScore = $value;
    }

    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
*/
class TournamentFormatConfig implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var TournamentFormatConfig_bestOfLadder|null $bestOfLadder Best-of ladder. Both fields are required when formatConfig is sent.
    */
    private ?TournamentFormatConfig_bestOfLadder $bestOfLadder = null;
    
    /**
     * @var TournamentFormatConfig_grandFinalAdvantage|null $grandFinalAdvantage The grandFinalAdvantage property
    */
    private ?TournamentFormatConfig_grandFinalAdvantage $grandFinalAdvantage = null;
    
    /**
     * @var TournamentFormatConfig_roundRobinPasses|null $roundRobinPasses Round-robin only. 1 = single pass, 2 = double pass.
    */
    private ?TournamentFormatConfig_roundRobinPasses $roundRobinPasses = null;
    
    /**
     * @var int|null $swissRoundCount Swiss only. Number of rounds to play.
    */
    private ?int $swissRoundCount = null;
    
    /**
     * Instantiates a new TournamentFormatConfig and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFormatConfig
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFormatConfig {
        return new TournamentFormatConfig();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
     * @return TournamentFormatConfig_bestOfLadder|null
    */
    public function getBestOfLadder(): ?TournamentFormatConfig_bestOfLadder {
        return $this->bestOfLadder;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'bestOfLadder' => fn(ParseNode $n) => $o->setBestOfLadder($n->getObjectValue([TournamentFormatConfig_bestOfLadder::class, 'createFromDiscriminatorValue'])),
            'grandFinalAdvantage' => fn(ParseNode $n) => $o->setGrandFinalAdvantage($n->getObjectValue([TournamentFormatConfig_grandFinalAdvantage::class, 'createFromDiscriminatorValue'])),
            'roundRobinPasses' => fn(ParseNode $n) => $o->setRoundRobinPasses($n->getObjectValue([TournamentFormatConfig_roundRobinPasses::class, 'createFromDiscriminatorValue'])),
            'swissRoundCount' => fn(ParseNode $n) => $o->setSwissRoundCount($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the grandFinalAdvantage property value. The grandFinalAdvantage property
     * @return TournamentFormatConfig_grandFinalAdvantage|null
    */
    public function getGrandFinalAdvantage(): ?TournamentFormatConfig_grandFinalAdvantage {
        return $this->grandFinalAdvantage;
    }

    /**
     * Gets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
     * @return TournamentFormatConfig_roundRobinPasses|null
    */
    public function getRoundRobinPasses(): ?TournamentFormatConfig_roundRobinPasses {
        return $this->roundRobinPasses;
    }

    /**
     * Gets the swissRoundCount property value. Swiss only. Number of rounds to play.
     * @return int|null
    */
    public function getSwissRoundCount(): ?int {
        return $this->swissRoundCount;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('bestOfLadder', $this->getBestOfLadder());
        $writer->writeObjectValue('grandFinalAdvantage', $this->getGrandFinalAdvantage());
        $writer->writeObjectValue('roundRobinPasses', $this->getRoundRobinPasses());
        $writer->writeIntegerValue('swissRoundCount', $this->getSwissRoundCount());
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
     * Sets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
     * @param TournamentFormatConfig_bestOfLadder|null $value Value to set for the bestOfLadder property.
    */
    public function setBestOfLadder(?TournamentFormatConfig_bestOfLadder $value): void {
        $this->bestOfLadder = $value;
    }

    /**
     * Sets the grandFinalAdvantage property value. The grandFinalAdvantage property
     * @param TournamentFormatConfig_grandFinalAdvantage|null $value Value to set for the grandFinalAdvantage property.
    */
    public function setGrandFinalAdvantage(?TournamentFormatConfig_grandFinalAdvantage $value): void {
        $this->grandFinalAdvantage = $value;
    }

    /**
     * Sets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
     * @param TournamentFormatConfig_roundRobinPasses|null $value Value to set for the roundRobinPasses property.
    */
    public function setRoundRobinPasses(?TournamentFormatConfig_roundRobinPasses $value): void {
        $this->roundRobinPasses = $value;
    }

    /**
     * Sets the swissRoundCount property value. Swiss only. Number of rounds to play.
     * @param int|null $value Value to set for the swissRoundCount property.
    */
    public function setSwissRoundCount(?int $value): void {
        $this->swissRoundCount = $value;
    }

}

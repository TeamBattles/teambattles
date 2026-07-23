<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Best-of ladder. Both fields are required when formatConfig is sent.
*/
class TournamentFormatConfig_bestOfLadder implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $escapedDefault Default best-of for every round.
    */
    private ?int $escapedDefault = null;
    
    /**
     * @var TournamentFormatConfig_bestOfLadder_overrides|null $overrides Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
    */
    private ?TournamentFormatConfig_bestOfLadder_overrides $overrides = null;
    
    /**
     * Instantiates a new TournamentFormatConfig_bestOfLadder and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFormatConfig_bestOfLadder
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFormatConfig_bestOfLadder {
        return new TournamentFormatConfig_bestOfLadder();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the default property value. Default best-of for every round.
     * @return int|null
    */
    public function getEscapedDefault(): ?int {
        return $this->escapedDefault;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'default' => fn(ParseNode $n) => $o->setEscapedDefault($n->getIntegerValue()),
            'overrides' => fn(ParseNode $n) => $o->setOverrides($n->getObjectValue([TournamentFormatConfig_bestOfLadder_overrides::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
     * @return TournamentFormatConfig_bestOfLadder_overrides|null
    */
    public function getOverrides(): ?TournamentFormatConfig_bestOfLadder_overrides {
        return $this->overrides;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('default', $this->getEscapedDefault());
        $writer->writeObjectValue('overrides', $this->getOverrides());
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
     * Sets the default property value. Default best-of for every round.
     * @param int|null $value Value to set for the default property.
    */
    public function setEscapedDefault(?int $value): void {
        $this->escapedDefault = $value;
    }

    /**
     * Sets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
     * @param TournamentFormatConfig_bestOfLadder_overrides|null $value Value to set for the overrides property.
    */
    public function setOverrides(?TournamentFormatConfig_bestOfLadder_overrides $value): void {
        $this->overrides = $value;
    }

}

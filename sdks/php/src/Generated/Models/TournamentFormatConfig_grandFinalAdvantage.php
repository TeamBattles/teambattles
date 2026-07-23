<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class TournamentFormatConfig_grandFinalAdvantage implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var TournamentFormatConfig_grandFinalAdvantage_type|null $type The type property
    */
    private ?TournamentFormatConfig_grandFinalAdvantage_type $type = null;
    
    /**
     * @var int|null $winHeadstart Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
    */
    private ?int $winHeadstart = null;
    
    /**
     * Instantiates a new TournamentFormatConfig_grandFinalAdvantage and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFormatConfig_grandFinalAdvantage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFormatConfig_grandFinalAdvantage {
        return new TournamentFormatConfig_grandFinalAdvantage();
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
            'type' => fn(ParseNode $n) => $o->setType($n->getEnumValue(TournamentFormatConfig_grandFinalAdvantage_type::class)),
            'winHeadstart' => fn(ParseNode $n) => $o->setWinHeadstart($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the type property value. The type property
     * @return TournamentFormatConfig_grandFinalAdvantage_type|null
    */
    public function getType(): ?TournamentFormatConfig_grandFinalAdvantage_type {
        return $this->type;
    }

    /**
     * Gets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
     * @return int|null
    */
    public function getWinHeadstart(): ?int {
        return $this->winHeadstart;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('type', $this->getType());
        $writer->writeIntegerValue('winHeadstart', $this->getWinHeadstart());
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
     * Sets the type property value. The type property
     * @param TournamentFormatConfig_grandFinalAdvantage_type|null $value Value to set for the type property.
    */
    public function setType(?TournamentFormatConfig_grandFinalAdvantage_type $value): void {
        $this->type = $value;
    }

    /**
     * Sets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
     * @param int|null $value Value to set for the winHeadstart property.
    */
    public function setWinHeadstart(?int $value): void {
        $this->winHeadstart = $value;
    }

}

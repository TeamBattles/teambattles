<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
*/
class TournamentGrandFinalAdvantage implements Parsable 
{
    /**
     * @var TournamentGrandFinalAdvantage_type|null $type Which advantage the winners-bracket champion carries into the grand final.
    */
    private ?TournamentGrandFinalAdvantage_type $type = null;
    
    /**
     * @var float|null $winHeadstart Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
    */
    private ?float $winHeadstart = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentGrandFinalAdvantage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentGrandFinalAdvantage {
        return new TournamentGrandFinalAdvantage();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'type' => fn(ParseNode $n) => $o->setType($n->getEnumValue(TournamentGrandFinalAdvantage_type::class)),
            'winHeadstart' => fn(ParseNode $n) => $o->setWinHeadstart($n->getFloatValue()),
        ];
    }

    /**
     * Gets the type property value. Which advantage the winners-bracket champion carries into the grand final.
     * @return TournamentGrandFinalAdvantage_type|null
    */
    public function getType(): ?TournamentGrandFinalAdvantage_type {
        return $this->type;
    }

    /**
     * Gets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
     * @return float|null
    */
    public function getWinHeadstart(): ?float {
        return $this->winHeadstart;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('type', $this->getType());
        $writer->writeFloatValue('winHeadstart', $this->getWinHeadstart());
    }

    /**
     * Sets the type property value. Which advantage the winners-bracket champion carries into the grand final.
     * @param TournamentGrandFinalAdvantage_type|null $value Value to set for the type property.
    */
    public function setType(?TournamentGrandFinalAdvantage_type $value): void {
        $this->type = $value;
    }

    /**
     * Sets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
     * @param float|null $value Value to set for the winHeadstart property.
    */
    public function setWinHeadstart(?float $value): void {
        $this->winHeadstart = $value;
    }

}

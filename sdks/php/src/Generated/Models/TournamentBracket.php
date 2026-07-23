<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Rounds, nodes, and participant display data.
*/
class TournamentBracket implements Parsable 
{
    /**
     * @var TournamentBracket_display|null $display Participant ID -> { name, avatarUrl, seed } display map.
    */
    private ?TournamentBracket_display $display = null;
    
    /**
     * @var array<string>|null $disqualified Participant IDs currently disqualified.
    */
    private ?array $disqualified = null;
    
    /**
     * @var TournamentGrandFinalAdvantage|null $grandFinalAdvantage Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
    */
    private ?TournamentGrandFinalAdvantage $grandFinalAdvantage = null;
    
    /**
     * @var array<TournamentBracket_nodes>|null $nodes Bracket node documents (slots, results, and links).
    */
    private ?array $nodes = null;
    
    /**
     * @var array<TournamentBracket_rounds>|null $rounds Round documents, ordered by round number ascending.
    */
    private ?array $rounds = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentBracket
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentBracket {
        return new TournamentBracket();
    }

    /**
     * Gets the display property value. Participant ID -> { name, avatarUrl, seed } display map.
     * @return TournamentBracket_display|null
    */
    public function getDisplay(): ?TournamentBracket_display {
        return $this->display;
    }

    /**
     * Gets the disqualified property value. Participant IDs currently disqualified.
     * @return array<string>|null
    */
    public function getDisqualified(): ?array {
        return $this->disqualified;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'display' => fn(ParseNode $n) => $o->setDisplay($n->getObjectValue([TournamentBracket_display::class, 'createFromDiscriminatorValue'])),
            'disqualified' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setDisqualified($val);
            },
            'grandFinalAdvantage' => fn(ParseNode $n) => $o->setGrandFinalAdvantage($n->getObjectValue([TournamentGrandFinalAdvantage::class, 'createFromDiscriminatorValue'])),
            'nodes' => fn(ParseNode $n) => $o->setNodes($n->getCollectionOfObjectValues([TournamentBracket_nodes::class, 'createFromDiscriminatorValue'])),
            'rounds' => fn(ParseNode $n) => $o->setRounds($n->getCollectionOfObjectValues([TournamentBracket_rounds::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
     * @return TournamentGrandFinalAdvantage|null
    */
    public function getGrandFinalAdvantage(): ?TournamentGrandFinalAdvantage {
        return $this->grandFinalAdvantage;
    }

    /**
     * Gets the nodes property value. Bracket node documents (slots, results, and links).
     * @return array<TournamentBracket_nodes>|null
    */
    public function getNodes(): ?array {
        return $this->nodes;
    }

    /**
     * Gets the rounds property value. Round documents, ordered by round number ascending.
     * @return array<TournamentBracket_rounds>|null
    */
    public function getRounds(): ?array {
        return $this->rounds;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('display', $this->getDisplay());
        $writer->writeCollectionOfPrimitiveValues('disqualified', $this->getDisqualified());
        $writer->writeObjectValue('grandFinalAdvantage', $this->getGrandFinalAdvantage());
        $writer->writeCollectionOfObjectValues('nodes', $this->getNodes());
        $writer->writeCollectionOfObjectValues('rounds', $this->getRounds());
    }

    /**
     * Sets the display property value. Participant ID -> { name, avatarUrl, seed } display map.
     * @param TournamentBracket_display|null $value Value to set for the display property.
    */
    public function setDisplay(?TournamentBracket_display $value): void {
        $this->display = $value;
    }

    /**
     * Sets the disqualified property value. Participant IDs currently disqualified.
     * @param array<string>|null $value Value to set for the disqualified property.
    */
    public function setDisqualified(?array $value): void {
        $this->disqualified = $value;
    }

    /**
     * Sets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
     * @param TournamentGrandFinalAdvantage|null $value Value to set for the grandFinalAdvantage property.
    */
    public function setGrandFinalAdvantage(?TournamentGrandFinalAdvantage $value): void {
        $this->grandFinalAdvantage = $value;
    }

    /**
     * Sets the nodes property value. Bracket node documents (slots, results, and links).
     * @param array<TournamentBracket_nodes>|null $value Value to set for the nodes property.
    */
    public function setNodes(?array $value): void {
        $this->nodes = $value;
    }

    /**
     * Sets the rounds property value. Round documents, ordered by round number ascending.
     * @param array<TournamentBracket_rounds>|null $value Value to set for the rounds property.
    */
    public function setRounds(?array $value): void {
        $this->rounds = $value;
    }

}

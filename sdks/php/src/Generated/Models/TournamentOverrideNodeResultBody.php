<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Bracket node result override payload.
*/
class TournamentOverrideNodeResultBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $score1 Score for the node's first entrant.
    */
    private ?int $score1 = null;
    
    /**
     * @var int|null $score2 Score for the node's second entrant.
    */
    private ?int $score2 = null;
    
    /**
     * Instantiates a new TournamentOverrideNodeResultBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentOverrideNodeResultBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentOverrideNodeResultBody {
        return new TournamentOverrideNodeResultBody();
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
            'score1' => fn(ParseNode $n) => $o->setScore1($n->getIntegerValue()),
            'score2' => fn(ParseNode $n) => $o->setScore2($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the score1 property value. Score for the node's first entrant.
     * @return int|null
    */
    public function getScore1(): ?int {
        return $this->score1;
    }

    /**
     * Gets the score2 property value. Score for the node's second entrant.
     * @return int|null
    */
    public function getScore2(): ?int {
        return $this->score2;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('score1', $this->getScore1());
        $writer->writeIntegerValue('score2', $this->getScore2());
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
     * Sets the score1 property value. Score for the node's first entrant.
     * @param int|null $value Value to set for the score1 property.
    */
    public function setScore1(?int $value): void {
        $this->score1 = $value;
    }

    /**
     * Sets the score2 property value. Score for the node's second entrant.
     * @param int|null $value Value to set for the score2 property.
    */
    public function setScore2(?int $value): void {
        $this->score2 = $value;
    }

}

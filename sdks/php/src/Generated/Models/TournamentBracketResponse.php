<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Tournament bracket response envelope.
*/
class TournamentBracketResponse implements Parsable 
{
    /**
     * @var TournamentBracket|null $bracket Rounds, nodes, and participant display data.
    */
    private ?TournamentBracket $bracket = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentBracketResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentBracketResponse {
        return new TournamentBracketResponse();
    }

    /**
     * Gets the bracket property value. Rounds, nodes, and participant display data.
     * @return TournamentBracket|null
    */
    public function getBracket(): ?TournamentBracket {
        return $this->bracket;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'bracket' => fn(ParseNode $n) => $o->setBracket($n->getObjectValue([TournamentBracket::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeObjectValue('bracket', $this->getBracket());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the bracket property value. Rounds, nodes, and participant display data.
     * @param TournamentBracket|null $value Value to set for the bracket property.
    */
    public function setBracket(?TournamentBracket $value): void {
        $this->bracket = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

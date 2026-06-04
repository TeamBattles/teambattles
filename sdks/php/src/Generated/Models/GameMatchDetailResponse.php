<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Envelope for GET /game/matches/{matchId}: the match plus a response timestamp.
*/
class GameMatchDetailResponse implements Parsable 
{
    /**
     * @var GameMatchDetail|null $match Detailed match payload returned inside the game-developer match-detail response.
    */
    private ?GameMatchDetail $match = null;
    
    /**
     * @var string|null $timestamp Server response time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetailResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetailResponse {
        return new GameMatchDetailResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'match' => fn(ParseNode $n) => $o->setMatch($n->getObjectValue([GameMatchDetail::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the match property value. Detailed match payload returned inside the game-developer match-detail response.
     * @return GameMatchDetail|null
    */
    public function getMatch(): ?GameMatchDetail {
        return $this->match;
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
        $writer->writeObjectValue('match', $this->getMatch());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the match property value. Detailed match payload returned inside the game-developer match-detail response.
     * @param GameMatchDetail|null $value Value to set for the match property.
    */
    public function setMatch(?GameMatchDetail $value): void {
        $this->match = $value;
    }

    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

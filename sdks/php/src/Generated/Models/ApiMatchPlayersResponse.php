<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * SP-2 match player rows response.
*/
class ApiMatchPlayersResponse implements Parsable 
{
    /**
     * @var string|null $matchId The matchId property
    */
    private ?string $matchId = null;
    
    /**
     * @var array<ApiMatchPlayer>|null $players The players property
    */
    private ?array $players = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchPlayersResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchPlayersResponse {
        return new ApiMatchPlayersResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'matchId' => fn(ParseNode $n) => $o->setMatchId($n->getStringValue()),
            'players' => fn(ParseNode $n) => $o->setPlayers($n->getCollectionOfObjectValues([ApiMatchPlayer::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the matchId property value. The matchId property
     * @return string|null
    */
    public function getMatchId(): ?string {
        return $this->matchId;
    }

    /**
     * Gets the players property value. The players property
     * @return array<ApiMatchPlayer>|null
    */
    public function getPlayers(): ?array {
        return $this->players;
    }

    /**
     * Gets the timestamp property value. The timestamp property
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
        $writer->writeStringValue('matchId', $this->getMatchId());
        $writer->writeCollectionOfObjectValues('players', $this->getPlayers());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the matchId property value. The matchId property
     * @param string|null $value Value to set for the matchId property.
    */
    public function setMatchId(?string $value): void {
        $this->matchId = $value;
    }

    /**
     * Sets the players property value. The players property
     * @param array<ApiMatchPlayer>|null $value Value to set for the players property.
    */
    public function setPlayers(?array $value): void {
        $this->players = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

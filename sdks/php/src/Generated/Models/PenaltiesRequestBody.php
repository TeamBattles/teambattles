<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Type, team, game, and limit filters for league penalties and cooldowns.
*/
class PenaltiesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Filter penalties to a specific game id.
    */
    private ?string $gameId = null;
    
    /**
     * @var int|null $limit Maximum number of penalties to return (1-100). Defaults to 50.
    */
    private ?int $limit = null;
    
    /**
     * @var string|null $teamId Filter penalties to a specific team id.
    */
    private ?string $teamId = null;
    
    /**
     * @var PenaltiesRequestBody_type|null $type Which record kinds to return. Defaults to all.
    */
    private ?PenaltiesRequestBody_type $type = null;
    
    /**
     * Instantiates a new PenaltiesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(50);
        $this->setType(new PenaltiesRequestBody_type('all'));
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return PenaltiesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): PenaltiesRequestBody {
        return new PenaltiesRequestBody();
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
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'type' => fn(ParseNode $n) => $o->setType($n->getEnumValue(PenaltiesRequestBody_type::class)),
        ];
    }

    /**
     * Gets the gameId property value. Filter penalties to a specific game id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the teamId property value. Filter penalties to a specific team id.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the type property value. Which record kinds to return. Defaults to all.
     * @return PenaltiesRequestBody_type|null
    */
    public function getType(): ?PenaltiesRequestBody_type {
        return $this->type;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeEnumValue('type', $this->getType());
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
     * Sets the gameId property value. Filter penalties to a specific game id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the limit property value. Maximum number of penalties to return (1-100). Defaults to 50.
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the teamId property value. Filter penalties to a specific team id.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the type property value. Which record kinds to return. Defaults to all.
     * @param PenaltiesRequestBody_type|null $value Value to set for the type property.
    */
    public function setType(?PenaltiesRequestBody_type $value): void {
        $this->type = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Season and game filters for league standings.
*/
class StandingsRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Filter standings to a specific game id.
    */
    private ?string $gameId = null;
    
    /**
     * @var int|null $limit Maximum number of teams to return (1-100). Defaults to 50.
    */
    private ?int $limit = null;
    
    /**
     * @var string|null $seasonId Filter standings to a specific season id.
    */
    private ?string $seasonId = null;
    
    /**
     * Instantiates a new StandingsRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
        $this->setLimit(50);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return StandingsRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): StandingsRequestBody {
        return new StandingsRequestBody();
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
            'seasonId' => fn(ParseNode $n) => $o->setSeasonId($n->getStringValue()),
        ];
    }

    /**
     * Gets the gameId property value. Filter standings to a specific game id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the seasonId property value. Filter standings to a specific season id.
     * @return string|null
    */
    public function getSeasonId(): ?string {
        return $this->seasonId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeStringValue('seasonId', $this->getSeasonId());
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
     * Sets the gameId property value. Filter standings to a specific game id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the seasonId property value. Filter standings to a specific season id.
     * @param string|null $value Value to set for the seasonId property.
    */
    public function setSeasonId(?string $value): void {
        $this->seasonId = $value;
    }

}

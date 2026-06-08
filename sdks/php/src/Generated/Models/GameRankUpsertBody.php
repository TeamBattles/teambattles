<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Upsert the API key owner's rank for one (gameId, mode) slot.
*/
class GameRankUpsertBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var GameRankUpsertBody_gameId|null $gameId Game definition ID to set the rank for (a playable game).
    */
    private ?GameRankUpsertBody_gameId $gameId = null;
    
    /**
     * @var bool|null $isTop250 Whether the player is in the Top 250 ladder.
    */
    private ?bool $isTop250 = null;
    
    /**
     * @var string|null $mode Game mode / playlist the rank applies to (a valid playlist ID).
    */
    private ?string $mode = null;
    
    /**
     * @var int|null $sr Skill rating (integer, 0-100000).
    */
    private ?int $sr = null;
    
    /**
     * @var int|null $top250Rank Top 250 ladder position (1-250); only meaningful when isTop250.
    */
    private ?int $top250Rank = null;
    
    /**
     * @var int|null $winstreak Current win streak count (0-99).
    */
    private ?int $winstreak = null;
    
    /**
     * Instantiates a new GameRankUpsertBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameRankUpsertBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameRankUpsertBody {
        return new GameRankUpsertBody();
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
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getEnumValue(GameRankUpsertBody_gameId::class)),
            'isTop250' => fn(ParseNode $n) => $o->setIsTop250($n->getBooleanValue()),
            'mode' => fn(ParseNode $n) => $o->setMode($n->getStringValue()),
            'sr' => fn(ParseNode $n) => $o->setSr($n->getIntegerValue()),
            'top250Rank' => fn(ParseNode $n) => $o->setTop250Rank($n->getIntegerValue()),
            'winstreak' => fn(ParseNode $n) => $o->setWinstreak($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game definition ID to set the rank for (a playable game).
     * @return GameRankUpsertBody_gameId|null
    */
    public function getGameId(): ?GameRankUpsertBody_gameId {
        return $this->gameId;
    }

    /**
     * Gets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @return bool|null
    */
    public function getIsTop250(): ?bool {
        return $this->isTop250;
    }

    /**
     * Gets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
     * @return string|null
    */
    public function getMode(): ?string {
        return $this->mode;
    }

    /**
     * Gets the sr property value. Skill rating (integer, 0-100000).
     * @return int|null
    */
    public function getSr(): ?int {
        return $this->sr;
    }

    /**
     * Gets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
     * @return int|null
    */
    public function getTop250Rank(): ?int {
        return $this->top250Rank;
    }

    /**
     * Gets the winstreak property value. Current win streak count (0-99).
     * @return int|null
    */
    public function getWinstreak(): ?int {
        return $this->winstreak;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('gameId', $this->getGameId());
        $writer->writeBooleanValue('isTop250', $this->getIsTop250());
        $writer->writeStringValue('mode', $this->getMode());
        $writer->writeIntegerValue('sr', $this->getSr());
        $writer->writeIntegerValue('top250Rank', $this->getTop250Rank());
        $writer->writeIntegerValue('winstreak', $this->getWinstreak());
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
     * Sets the gameId property value. Game definition ID to set the rank for (a playable game).
     * @param GameRankUpsertBody_gameId|null $value Value to set for the gameId property.
    */
    public function setGameId(?GameRankUpsertBody_gameId $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @param bool|null $value Value to set for the isTop250 property.
    */
    public function setIsTop250(?bool $value): void {
        $this->isTop250 = $value;
    }

    /**
     * Sets the mode property value. Game mode / playlist the rank applies to (a valid playlist ID).
     * @param string|null $value Value to set for the mode property.
    */
    public function setMode(?string $value): void {
        $this->mode = $value;
    }

    /**
     * Sets the sr property value. Skill rating (integer, 0-100000).
     * @param int|null $value Value to set for the sr property.
    */
    public function setSr(?int $value): void {
        $this->sr = $value;
    }

    /**
     * Sets the top250Rank property value. Top 250 ladder position (1-250); only meaningful when isTop250.
     * @param int|null $value Value to set for the top250Rank property.
    */
    public function setTop250Rank(?int $value): void {
        $this->top250Rank = $value;
    }

    /**
     * Sets the winstreak property value. Current win streak count (0-99).
     * @param int|null $value Value to set for the winstreak property.
    */
    public function setWinstreak(?int $value): void {
        $this->winstreak = $value;
    }

}

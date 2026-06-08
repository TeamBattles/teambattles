<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe game rank entry for the API key owner.
*/
class ApiGameRank implements Parsable 
{
    /**
     * @var string|null $createdAt When the rank was first recorded.
    */
    private ?string $createdAt = null;
    
    /**
     * @var string|null $gameId Game definition ID this rank belongs to.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $id Game rank row ID.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isTop250 Whether the player is in the Top 250 ladder.
    */
    private ?bool $isTop250 = null;
    
    /**
     * @var string|null $mode Game mode / playlist the rank is tracked for.
    */
    private ?string $mode = null;
    
    /**
     * @var ApiGameRank_source|null $source Origin of the rank: manual entry or an API push.
    */
    private ?ApiGameRank_source $source = null;
    
    /**
     * @var ApiGameRank_sr|null $sr Skill rating, when set.
    */
    private ?ApiGameRank_sr $sr = null;
    
    /**
     * @var ApiGameRank_top250Rank|null $top250Rank Top 250 ladder position (1-250), when applicable.
    */
    private ?ApiGameRank_top250Rank $top250Rank = null;
    
    /**
     * @var string|null $updatedAt When the rank was last updated.
    */
    private ?string $updatedAt = null;
    
    /**
     * @var int|null $winstreak Current win streak count.
    */
    private ?int $winstreak = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameRank
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameRank {
        return new ApiGameRank();
    }

    /**
     * Gets the createdAt property value. When the rank was first recorded.
     * @return string|null
    */
    public function getCreatedAt(): ?string {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getStringValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isTop250' => fn(ParseNode $n) => $o->setIsTop250($n->getBooleanValue()),
            'mode' => fn(ParseNode $n) => $o->setMode($n->getStringValue()),
            'source' => fn(ParseNode $n) => $o->setSource($n->getEnumValue(ApiGameRank_source::class)),
            'sr' => fn(ParseNode $n) => $o->setSr($n->getObjectValue([ApiGameRank_sr::class, 'createFromDiscriminatorValue'])),
            'top250Rank' => fn(ParseNode $n) => $o->setTop250Rank($n->getObjectValue([ApiGameRank_top250Rank::class, 'createFromDiscriminatorValue'])),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getStringValue()),
            'winstreak' => fn(ParseNode $n) => $o->setWinstreak($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game definition ID this rank belongs to.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the id property value. Game rank row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @return bool|null
    */
    public function getIsTop250(): ?bool {
        return $this->isTop250;
    }

    /**
     * Gets the mode property value. Game mode / playlist the rank is tracked for.
     * @return string|null
    */
    public function getMode(): ?string {
        return $this->mode;
    }

    /**
     * Gets the source property value. Origin of the rank: manual entry or an API push.
     * @return ApiGameRank_source|null
    */
    public function getSource(): ?ApiGameRank_source {
        return $this->source;
    }

    /**
     * Gets the sr property value. Skill rating, when set.
     * @return ApiGameRank_sr|null
    */
    public function getSr(): ?ApiGameRank_sr {
        return $this->sr;
    }

    /**
     * Gets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
     * @return ApiGameRank_top250Rank|null
    */
    public function getTop250Rank(): ?ApiGameRank_top250Rank {
        return $this->top250Rank;
    }

    /**
     * Gets the updatedAt property value. When the rank was last updated.
     * @return string|null
    */
    public function getUpdatedAt(): ?string {
        return $this->updatedAt;
    }

    /**
     * Gets the winstreak property value. Current win streak count.
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
        $writer->writeStringValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isTop250', $this->getIsTop250());
        $writer->writeStringValue('mode', $this->getMode());
        $writer->writeEnumValue('source', $this->getSource());
        $writer->writeObjectValue('sr', $this->getSr());
        $writer->writeObjectValue('top250Rank', $this->getTop250Rank());
        $writer->writeStringValue('updatedAt', $this->getUpdatedAt());
        $writer->writeIntegerValue('winstreak', $this->getWinstreak());
    }

    /**
     * Sets the createdAt property value. When the rank was first recorded.
     * @param string|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?string $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the gameId property value. Game definition ID this rank belongs to.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the id property value. Game rank row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @param bool|null $value Value to set for the isTop250 property.
    */
    public function setIsTop250(?bool $value): void {
        $this->isTop250 = $value;
    }

    /**
     * Sets the mode property value. Game mode / playlist the rank is tracked for.
     * @param string|null $value Value to set for the mode property.
    */
    public function setMode(?string $value): void {
        $this->mode = $value;
    }

    /**
     * Sets the source property value. Origin of the rank: manual entry or an API push.
     * @param ApiGameRank_source|null $value Value to set for the source property.
    */
    public function setSource(?ApiGameRank_source $value): void {
        $this->source = $value;
    }

    /**
     * Sets the sr property value. Skill rating, when set.
     * @param ApiGameRank_sr|null $value Value to set for the sr property.
    */
    public function setSr(?ApiGameRank_sr $value): void {
        $this->sr = $value;
    }

    /**
     * Sets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
     * @param ApiGameRank_top250Rank|null $value Value to set for the top250Rank property.
    */
    public function setTop250Rank(?ApiGameRank_top250Rank $value): void {
        $this->top250Rank = $value;
    }

    /**
     * Sets the updatedAt property value. When the rank was last updated.
     * @param string|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?string $value): void {
        $this->updatedAt = $value;
    }

    /**
     * Sets the winstreak property value. Current win streak count.
     * @param int|null $value Value to set for the winstreak property.
    */
    public function setWinstreak(?int $value): void {
        $this->winstreak = $value;
    }

}

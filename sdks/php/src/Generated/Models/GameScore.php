<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A single map score as returned when reading scores.
*/
class GameScore implements Parsable 
{
    /**
     * @var GameScore_confirmedAt|null $confirmedAt When the score was confirmed (ISO 8601).
    */
    private ?GameScore_confirmedAt $confirmedAt = null;
    
    /**
     * @var int|null $creatorTeamScore Score for the creator team.
    */
    private ?int $creatorTeamScore = null;
    
    /**
     * @var string|null $mapId Identifier of the map that was played.
    */
    private ?string $mapId = null;
    
    /**
     * @var int|null $mapIndex Zero-based index of the map within the series.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var int|null $opponentTeamScore Score for the opponent (accepted) team.
    */
    private ?int $opponentTeamScore = null;
    
    /**
     * @var string|null $scoreStatus Confirmation state: "CONFIRMED" or "PENDING".
    */
    private ?string $scoreStatus = null;
    
    /**
     * @var GameScore_submittedAt|null $submittedAt When the score was submitted (ISO 8601).
    */
    private ?GameScore_submittedAt $submittedAt = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameScore
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameScore {
        return new GameScore();
    }

    /**
     * Gets the confirmedAt property value. When the score was confirmed (ISO 8601).
     * @return GameScore_confirmedAt|null
    */
    public function getConfirmedAt(): ?GameScore_confirmedAt {
        return $this->confirmedAt;
    }

    /**
     * Gets the creatorTeamScore property value. Score for the creator team.
     * @return int|null
    */
    public function getCreatorTeamScore(): ?int {
        return $this->creatorTeamScore;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'confirmedAt' => fn(ParseNode $n) => $o->setConfirmedAt($n->getObjectValue([GameScore_confirmedAt::class, 'createFromDiscriminatorValue'])),
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getIntegerValue()),
            'mapId' => fn(ParseNode $n) => $o->setMapId($n->getStringValue()),
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'opponentTeamScore' => fn(ParseNode $n) => $o->setOpponentTeamScore($n->getIntegerValue()),
            'scoreStatus' => fn(ParseNode $n) => $o->setScoreStatus($n->getStringValue()),
            'submittedAt' => fn(ParseNode $n) => $o->setSubmittedAt($n->getObjectValue([GameScore_submittedAt::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the mapId property value. Identifier of the map that was played.
     * @return string|null
    */
    public function getMapId(): ?string {
        return $this->mapId;
    }

    /**
     * Gets the mapIndex property value. Zero-based index of the map within the series.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the opponentTeamScore property value. Score for the opponent (accepted) team.
     * @return int|null
    */
    public function getOpponentTeamScore(): ?int {
        return $this->opponentTeamScore;
    }

    /**
     * Gets the scoreStatus property value. Confirmation state: "CONFIRMED" or "PENDING".
     * @return string|null
    */
    public function getScoreStatus(): ?string {
        return $this->scoreStatus;
    }

    /**
     * Gets the submittedAt property value. When the score was submitted (ISO 8601).
     * @return GameScore_submittedAt|null
    */
    public function getSubmittedAt(): ?GameScore_submittedAt {
        return $this->submittedAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('confirmedAt', $this->getConfirmedAt());
        $writer->writeIntegerValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('mapId', $this->getMapId());
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeIntegerValue('opponentTeamScore', $this->getOpponentTeamScore());
        $writer->writeStringValue('scoreStatus', $this->getScoreStatus());
        $writer->writeObjectValue('submittedAt', $this->getSubmittedAt());
    }

    /**
     * Sets the confirmedAt property value. When the score was confirmed (ISO 8601).
     * @param GameScore_confirmedAt|null $value Value to set for the confirmedAt property.
    */
    public function setConfirmedAt(?GameScore_confirmedAt $value): void {
        $this->confirmedAt = $value;
    }

    /**
     * Sets the creatorTeamScore property value. Score for the creator team.
     * @param int|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?int $value): void {
        $this->creatorTeamScore = $value;
    }

    /**
     * Sets the mapId property value. Identifier of the map that was played.
     * @param string|null $value Value to set for the mapId property.
    */
    public function setMapId(?string $value): void {
        $this->mapId = $value;
    }

    /**
     * Sets the mapIndex property value. Zero-based index of the map within the series.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the opponentTeamScore property value. Score for the opponent (accepted) team.
     * @param int|null $value Value to set for the opponentTeamScore property.
    */
    public function setOpponentTeamScore(?int $value): void {
        $this->opponentTeamScore = $value;
    }

    /**
     * Sets the scoreStatus property value. Confirmation state: "CONFIRMED" or "PENDING".
     * @param string|null $value Value to set for the scoreStatus property.
    */
    public function setScoreStatus(?string $value): void {
        $this->scoreStatus = $value;
    }

    /**
     * Sets the submittedAt property value. When the score was submitted (ISO 8601).
     * @param GameScore_submittedAt|null $value Value to set for the submittedAt property.
    */
    public function setSubmittedAt(?GameScore_submittedAt $value): void {
        $this->submittedAt = $value;
    }

}

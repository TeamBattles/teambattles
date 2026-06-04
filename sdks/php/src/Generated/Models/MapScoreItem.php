<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * A single map's score entry.
*/
class MapScoreItem implements Parsable 
{
    /**
     * @var ScoreConfirmer|null $confirmedBy The confirmedBy property
    */
    private ?ScoreConfirmer $confirmedBy = null;
    
    /**
     * @var MapScoreItem_createdAt|null $createdAt Creation time (ISO 8601).
    */
    private ?MapScoreItem_createdAt $createdAt = null;
    
    /**
     * @var int|null $creatorTeamScore The creatorTeamScore property
    */
    private ?int $creatorTeamScore = null;
    
    /**
     * @var string|null $mapId The mapId property
    */
    private ?string $mapId = null;
    
    /**
     * @var int|null $mapIndex The mapIndex property
    */
    private ?int $mapIndex = null;
    
    /**
     * @var int|null $opponentTeamScore The opponentTeamScore property
    */
    private ?int $opponentTeamScore = null;
    
    /**
     * @var string|null $scoreStatus CONFIRMED or PENDING.
    */
    private ?string $scoreStatus = null;
    
    /**
     * @var array<string>|null $screenshotUrls The screenshotUrls property
    */
    private ?array $screenshotUrls = null;
    
    /**
     * @var ScoreSubmitter|null $submittedBy The submittedBy property
    */
    private ?ScoreSubmitter $submittedBy = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MapScoreItem
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MapScoreItem {
        return new MapScoreItem();
    }

    /**
     * Gets the confirmedBy property value. The confirmedBy property
     * @return ScoreConfirmer|null
    */
    public function getConfirmedBy(): ?ScoreConfirmer {
        return $this->confirmedBy;
    }

    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return MapScoreItem_createdAt|null
    */
    public function getCreatedAt(): ?MapScoreItem_createdAt {
        return $this->createdAt;
    }

    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
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
            'confirmedBy' => fn(ParseNode $n) => $o->setConfirmedBy($n->getObjectValue([ScoreConfirmer::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getObjectValue([MapScoreItem_createdAt::class, 'createFromDiscriminatorValue'])),
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getIntegerValue()),
            'mapId' => fn(ParseNode $n) => $o->setMapId($n->getStringValue()),
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'opponentTeamScore' => fn(ParseNode $n) => $o->setOpponentTeamScore($n->getIntegerValue()),
            'scoreStatus' => fn(ParseNode $n) => $o->setScoreStatus($n->getStringValue()),
            'screenshotUrls' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setScreenshotUrls($val);
            },
            'submittedBy' => fn(ParseNode $n) => $o->setSubmittedBy($n->getObjectValue([ScoreSubmitter::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the mapId property value. The mapId property
     * @return string|null
    */
    public function getMapId(): ?string {
        return $this->mapId;
    }

    /**
     * Gets the mapIndex property value. The mapIndex property
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the opponentTeamScore property value. The opponentTeamScore property
     * @return int|null
    */
    public function getOpponentTeamScore(): ?int {
        return $this->opponentTeamScore;
    }

    /**
     * Gets the scoreStatus property value. CONFIRMED or PENDING.
     * @return string|null
    */
    public function getScoreStatus(): ?string {
        return $this->scoreStatus;
    }

    /**
     * Gets the screenshotUrls property value. The screenshotUrls property
     * @return array<string>|null
    */
    public function getScreenshotUrls(): ?array {
        return $this->screenshotUrls;
    }

    /**
     * Gets the submittedBy property value. The submittedBy property
     * @return ScoreSubmitter|null
    */
    public function getSubmittedBy(): ?ScoreSubmitter {
        return $this->submittedBy;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('confirmedBy', $this->getConfirmedBy());
        $writer->writeObjectValue('createdAt', $this->getCreatedAt());
        $writer->writeIntegerValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('mapId', $this->getMapId());
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeIntegerValue('opponentTeamScore', $this->getOpponentTeamScore());
        $writer->writeStringValue('scoreStatus', $this->getScoreStatus());
        $writer->writeCollectionOfPrimitiveValues('screenshotUrls', $this->getScreenshotUrls());
        $writer->writeObjectValue('submittedBy', $this->getSubmittedBy());
    }

    /**
     * Sets the confirmedBy property value. The confirmedBy property
     * @param ScoreConfirmer|null $value Value to set for the confirmedBy property.
    */
    public function setConfirmedBy(?ScoreConfirmer $value): void {
        $this->confirmedBy = $value;
    }

    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param MapScoreItem_createdAt|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?MapScoreItem_createdAt $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param int|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?int $value): void {
        $this->creatorTeamScore = $value;
    }

    /**
     * Sets the mapId property value. The mapId property
     * @param string|null $value Value to set for the mapId property.
    */
    public function setMapId(?string $value): void {
        $this->mapId = $value;
    }

    /**
     * Sets the mapIndex property value. The mapIndex property
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the opponentTeamScore property value. The opponentTeamScore property
     * @param int|null $value Value to set for the opponentTeamScore property.
    */
    public function setOpponentTeamScore(?int $value): void {
        $this->opponentTeamScore = $value;
    }

    /**
     * Sets the scoreStatus property value. CONFIRMED or PENDING.
     * @param string|null $value Value to set for the scoreStatus property.
    */
    public function setScoreStatus(?string $value): void {
        $this->scoreStatus = $value;
    }

    /**
     * Sets the screenshotUrls property value. The screenshotUrls property
     * @param array<string>|null $value Value to set for the screenshotUrls property.
    */
    public function setScreenshotUrls(?array $value): void {
        $this->screenshotUrls = $value;
    }

    /**
     * Sets the submittedBy property value. The submittedBy property
     * @param ScoreSubmitter|null $value Value to set for the submittedBy property.
    */
    public function setSubmittedBy(?ScoreSubmitter $value): void {
        $this->submittedBy = $value;
    }

}

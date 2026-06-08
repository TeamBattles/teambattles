<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * One map's score within a batch submission.
*/
class GameMapScoreInput implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $creatorTeamScore Score for the creator team (integer, 0-1000).
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
     * @var int|null $opponentTeamScore Score for the opponent (accepted) team (integer, 0-1000).
    */
    private ?int $opponentTeamScore = null;
    
    /**
     * @var GameMapScoreInput_playerStats|null $playerStats Optional per-player stats keyed by user ID.
    */
    private ?GameMapScoreInput_playerStats $playerStats = null;
    
    /**
     * @var array<string>|null $screenshotStorageIds Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
    */
    private ?array $screenshotStorageIds = null;
    
    /**
     * @var array<string>|null $screenshotUrls Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
    */
    private ?array $screenshotUrls = null;
    
    /**
     * Instantiates a new GameMapScoreInput and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMapScoreInput
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMapScoreInput {
        return new GameMapScoreInput();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the creatorTeamScore property value. Score for the creator team (integer, 0-1000).
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
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getIntegerValue()),
            'mapId' => fn(ParseNode $n) => $o->setMapId($n->getStringValue()),
            'mapIndex' => fn(ParseNode $n) => $o->setMapIndex($n->getIntegerValue()),
            'opponentTeamScore' => fn(ParseNode $n) => $o->setOpponentTeamScore($n->getIntegerValue()),
            'playerStats' => fn(ParseNode $n) => $o->setPlayerStats($n->getObjectValue([GameMapScoreInput_playerStats::class, 'createFromDiscriminatorValue'])),
            'screenshotStorageIds' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setScreenshotStorageIds($val);
            },
            'screenshotUrls' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setScreenshotUrls($val);
            },
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
     * Gets the opponentTeamScore property value. Score for the opponent (accepted) team (integer, 0-1000).
     * @return int|null
    */
    public function getOpponentTeamScore(): ?int {
        return $this->opponentTeamScore;
    }

    /**
     * Gets the playerStats property value. Optional per-player stats keyed by user ID.
     * @return GameMapScoreInput_playerStats|null
    */
    public function getPlayerStats(): ?GameMapScoreInput_playerStats {
        return $this->playerStats;
    }

    /**
     * Gets the screenshotStorageIds property value. Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
     * @return array<string>|null
    */
    public function getScreenshotStorageIds(): ?array {
        return $this->screenshotStorageIds;
    }

    /**
     * Gets the screenshotUrls property value. Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
     * @return array<string>|null
    */
    public function getScreenshotUrls(): ?array {
        return $this->screenshotUrls;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('mapId', $this->getMapId());
        $writer->writeIntegerValue('mapIndex', $this->getMapIndex());
        $writer->writeIntegerValue('opponentTeamScore', $this->getOpponentTeamScore());
        $writer->writeObjectValue('playerStats', $this->getPlayerStats());
        $writer->writeCollectionOfPrimitiveValues('screenshotStorageIds', $this->getScreenshotStorageIds());
        $writer->writeCollectionOfPrimitiveValues('screenshotUrls', $this->getScreenshotUrls());
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
     * Sets the creatorTeamScore property value. Score for the creator team (integer, 0-1000).
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
     * Sets the opponentTeamScore property value. Score for the opponent (accepted) team (integer, 0-1000).
     * @param int|null $value Value to set for the opponentTeamScore property.
    */
    public function setOpponentTeamScore(?int $value): void {
        $this->opponentTeamScore = $value;
    }

    /**
     * Sets the playerStats property value. Optional per-player stats keyed by user ID.
     * @param GameMapScoreInput_playerStats|null $value Value to set for the playerStats property.
    */
    public function setPlayerStats(?GameMapScoreInput_playerStats $value): void {
        $this->playerStats = $value;
    }

    /**
     * Sets the screenshotStorageIds property value. Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
     * @param array<string>|null $value Value to set for the screenshotStorageIds property.
    */
    public function setScreenshotStorageIds(?array $value): void {
        $this->screenshotStorageIds = $value;
    }

    /**
     * Sets the screenshotUrls property value. Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
     * @param array<string>|null $value Value to set for the screenshotUrls property.
    */
    public function setScreenshotUrls(?array $value): void {
        $this->screenshotUrls = $value;
    }

}

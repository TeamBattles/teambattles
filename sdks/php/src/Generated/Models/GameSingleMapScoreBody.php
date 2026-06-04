<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Request body for submitting a single map's score (mapIndex comes from the path).
*/
class GameSingleMapScoreBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $creatorTeamScore Score for the creator team (non-negative).
    */
    private ?float $creatorTeamScore = null;
    
    /**
     * @var string|null $mapId Identifier of the map that was played.
    */
    private ?string $mapId = null;
    
    /**
     * @var float|null $opponentTeamScore Score for the opponent (accepted) team (non-negative).
    */
    private ?float $opponentTeamScore = null;
    
    /**
     * @var GameSingleMapScoreBody_playerStats|null $playerStats Optional per-player stats keyed by user ID.
    */
    private ?GameSingleMapScoreBody_playerStats $playerStats = null;
    
    /**
     * @var array<string>|null $screenshotUrls Optional screenshot URLs supporting the reported score.
    */
    private ?array $screenshotUrls = null;
    
    /**
     * Instantiates a new GameSingleMapScoreBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameSingleMapScoreBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameSingleMapScoreBody {
        return new GameSingleMapScoreBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the creatorTeamScore property value. Score for the creator team (non-negative).
     * @return float|null
    */
    public function getCreatorTeamScore(): ?float {
        return $this->creatorTeamScore;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'creatorTeamScore' => fn(ParseNode $n) => $o->setCreatorTeamScore($n->getFloatValue()),
            'mapId' => fn(ParseNode $n) => $o->setMapId($n->getStringValue()),
            'opponentTeamScore' => fn(ParseNode $n) => $o->setOpponentTeamScore($n->getFloatValue()),
            'playerStats' => fn(ParseNode $n) => $o->setPlayerStats($n->getObjectValue([GameSingleMapScoreBody_playerStats::class, 'createFromDiscriminatorValue'])),
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
     * Gets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
     * @return float|null
    */
    public function getOpponentTeamScore(): ?float {
        return $this->opponentTeamScore;
    }

    /**
     * Gets the playerStats property value. Optional per-player stats keyed by user ID.
     * @return GameSingleMapScoreBody_playerStats|null
    */
    public function getPlayerStats(): ?GameSingleMapScoreBody_playerStats {
        return $this->playerStats;
    }

    /**
     * Gets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
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
        $writer->writeFloatValue('creatorTeamScore', $this->getCreatorTeamScore());
        $writer->writeStringValue('mapId', $this->getMapId());
        $writer->writeFloatValue('opponentTeamScore', $this->getOpponentTeamScore());
        $writer->writeObjectValue('playerStats', $this->getPlayerStats());
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
     * Sets the creatorTeamScore property value. Score for the creator team (non-negative).
     * @param float|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?float $value): void {
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
     * Sets the opponentTeamScore property value. Score for the opponent (accepted) team (non-negative).
     * @param float|null $value Value to set for the opponentTeamScore property.
    */
    public function setOpponentTeamScore(?float $value): void {
        $this->opponentTeamScore = $value;
    }

    /**
     * Sets the playerStats property value. Optional per-player stats keyed by user ID.
     * @param GameSingleMapScoreBody_playerStats|null $value Value to set for the playerStats property.
    */
    public function setPlayerStats(?GameSingleMapScoreBody_playerStats $value): void {
        $this->playerStats = $value;
    }

    /**
     * Sets the screenshotUrls property value. Optional screenshot URLs supporting the reported score.
     * @param array<string>|null $value Value to set for the screenshotUrls property.
    */
    public function setScreenshotUrls(?array $value): void {
        $this->screenshotUrls = $value;
    }

}

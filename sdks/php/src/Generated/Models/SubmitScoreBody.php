<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Map score submission payload for a single map.
*/
class SubmitScoreBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $creatorTeamScore Creator team score (integer, 0-1000).
    */
    private ?int $creatorTeamScore = null;
    
    /**
     * @var string|null $mapId Map identifier string (e.g. dust2).
    */
    private ?string $mapId = null;
    
    /**
     * @var int|null $mapIndex Zero-based map index. Must be a non-negative integer.
    */
    private ?int $mapIndex = null;
    
    /**
     * @var int|null $opponentTeamScore Accepted/opponent team score (integer, 0-1000).
    */
    private ?int $opponentTeamScore = null;
    
    /**
     * @var array<string>|null $screenshotStorageIds Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
    */
    private ?array $screenshotStorageIds = null;
    
    /**
     * @var array<string>|null $screenshotUrls Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
    */
    private ?array $screenshotUrls = null;
    
    /**
     * Instantiates a new SubmitScoreBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return SubmitScoreBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): SubmitScoreBody {
        return new SubmitScoreBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the creatorTeamScore property value. Creator team score (integer, 0-1000).
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
     * Gets the mapId property value. Map identifier string (e.g. dust2).
     * @return string|null
    */
    public function getMapId(): ?string {
        return $this->mapId;
    }

    /**
     * Gets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
     * @return int|null
    */
    public function getMapIndex(): ?int {
        return $this->mapIndex;
    }

    /**
     * Gets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
     * @return int|null
    */
    public function getOpponentTeamScore(): ?int {
        return $this->opponentTeamScore;
    }

    /**
     * Gets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     * @return array<string>|null
    */
    public function getScreenshotStorageIds(): ?array {
        return $this->screenshotStorageIds;
    }

    /**
     * Gets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
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
     * Sets the creatorTeamScore property value. Creator team score (integer, 0-1000).
     * @param int|null $value Value to set for the creatorTeamScore property.
    */
    public function setCreatorTeamScore(?int $value): void {
        $this->creatorTeamScore = $value;
    }

    /**
     * Sets the mapId property value. Map identifier string (e.g. dust2).
     * @param string|null $value Value to set for the mapId property.
    */
    public function setMapId(?string $value): void {
        $this->mapId = $value;
    }

    /**
     * Sets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
     * @param int|null $value Value to set for the mapIndex property.
    */
    public function setMapIndex(?int $value): void {
        $this->mapIndex = $value;
    }

    /**
     * Sets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
     * @param int|null $value Value to set for the opponentTeamScore property.
    */
    public function setOpponentTeamScore(?int $value): void {
        $this->opponentTeamScore = $value;
    }

    /**
     * Sets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     * @param array<string>|null $value Value to set for the screenshotStorageIds property.
    */
    public function setScreenshotStorageIds(?array $value): void {
        $this->screenshotStorageIds = $value;
    }

    /**
     * Sets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
     * @param array<string>|null $value Value to set for the screenshotUrls property.
    */
    public function setScreenshotUrls(?array $value): void {
        $this->screenshotUrls = $value;
    }

}

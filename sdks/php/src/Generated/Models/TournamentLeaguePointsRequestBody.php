<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League placement-points configuration.
*/
class TournamentLeaguePointsRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<TournamentPlacementPointsEntry>|null $leaguePointsByPlacement The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
    */
    private ?array $leaguePointsByPlacement = null;
    
    /**
     * @var bool|null $leaguePointsEnabled Whether finishing this tournament awards league points to the league season.
    */
    private ?bool $leaguePointsEnabled = null;
    
    /**
     * Instantiates a new TournamentLeaguePointsRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentLeaguePointsRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentLeaguePointsRequestBody {
        return new TournamentLeaguePointsRequestBody();
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
            'leaguePointsByPlacement' => fn(ParseNode $n) => $o->setLeaguePointsByPlacement($n->getCollectionOfObjectValues([TournamentPlacementPointsEntry::class, 'createFromDiscriminatorValue'])),
            'leaguePointsEnabled' => fn(ParseNode $n) => $o->setLeaguePointsEnabled($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
     * @return array<TournamentPlacementPointsEntry>|null
    */
    public function getLeaguePointsByPlacement(): ?array {
        return $this->leaguePointsByPlacement;
    }

    /**
     * Gets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
     * @return bool|null
    */
    public function getLeaguePointsEnabled(): ?bool {
        return $this->leaguePointsEnabled;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('leaguePointsByPlacement', $this->getLeaguePointsByPlacement());
        $writer->writeBooleanValue('leaguePointsEnabled', $this->getLeaguePointsEnabled());
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
     * Sets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
     * @param array<TournamentPlacementPointsEntry>|null $value Value to set for the leaguePointsByPlacement property.
    */
    public function setLeaguePointsByPlacement(?array $value): void {
        $this->leaguePointsByPlacement = $value;
    }

    /**
     * Sets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
     * @param bool|null $value Value to set for the leaguePointsEnabled property.
    */
    public function setLeaguePointsEnabled(?bool $value): void {
        $this->leaguePointsEnabled = $value;
    }

}

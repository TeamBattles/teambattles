<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The league placement-points configuration now in effect.
*/
class TournamentLeaguePointsResponse implements Parsable 
{
    /**
     * @var bool|null $leaguePointsEnabled The leaguePointsEnabled property
    */
    private ?bool $leaguePointsEnabled = null;
    
    /**
     * @var TournamentLeaguePointsResponse_placementCount|null $placementCount Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
    */
    private ?TournamentLeaguePointsResponse_placementCount $placementCount = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentLeaguePointsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentLeaguePointsResponse {
        return new TournamentLeaguePointsResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'leaguePointsEnabled' => fn(ParseNode $n) => $o->setLeaguePointsEnabled($n->getBooleanValue()),
            'placementCount' => fn(ParseNode $n) => $o->setPlacementCount($n->getObjectValue([TournamentLeaguePointsResponse_placementCount::class, 'createFromDiscriminatorValue'])),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the leaguePointsEnabled property value. The leaguePointsEnabled property
     * @return bool|null
    */
    public function getLeaguePointsEnabled(): ?bool {
        return $this->leaguePointsEnabled;
    }

    /**
     * Gets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
     * @return TournamentLeaguePointsResponse_placementCount|null
    */
    public function getPlacementCount(): ?TournamentLeaguePointsResponse_placementCount {
        return $this->placementCount;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('leaguePointsEnabled', $this->getLeaguePointsEnabled());
        $writer->writeObjectValue('placementCount', $this->getPlacementCount());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the leaguePointsEnabled property value. The leaguePointsEnabled property
     * @param bool|null $value Value to set for the leaguePointsEnabled property.
    */
    public function setLeaguePointsEnabled(?bool $value): void {
        $this->leaguePointsEnabled = $value;
    }

    /**
     * Sets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
     * @param TournamentLeaguePointsResponse_placementCount|null $value Value to set for the placementCount property.
    */
    public function setPlacementCount(?TournamentLeaguePointsResponse_placementCount $value): void {
        $this->placementCount = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, TournamentLeaguePointsResponse_placementCountMember1
*/
class TournamentLeaguePointsResponse_placementCount implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var TournamentLeaguePointsResponse_placementCountMember1|null $tournamentLeaguePointsResponse_placementCountMember1 Composed type representation for type TournamentLeaguePointsResponse_placementCountMember1
    */
    private ?TournamentLeaguePointsResponse_placementCountMember1 $tournamentLeaguePointsResponse_placementCountMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentLeaguePointsResponse_placementCount
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentLeaguePointsResponse_placementCount {
        $result = new TournamentLeaguePointsResponse_placementCount();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setTournamentLeaguePointsResponsePlacementCountMember1(new TournamentLeaguePointsResponse_placementCountMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentLeaguePointsResponsePlacementCountMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentLeaguePointsResponsePlacementCountMember1());
        }
        return [];
    }

    /**
     * Gets the integer property value. Composed type representation for type int
     * @return int|null
    */
    public function getInteger(): ?int {
        return $this->integer;
    }

    /**
     * Gets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type TournamentLeaguePointsResponse_placementCountMember1
     * @return TournamentLeaguePointsResponse_placementCountMember1|null
    */
    public function getTournamentLeaguePointsResponsePlacementCountMember1(): ?TournamentLeaguePointsResponse_placementCountMember1 {
        return $this->tournamentLeaguePointsResponse_placementCountMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentLeaguePointsResponsePlacementCountMember1());
        }
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

    /**
     * Sets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type TournamentLeaguePointsResponse_placementCountMember1
     * @param TournamentLeaguePointsResponse_placementCountMember1|null $value Value to set for the TournamentLeaguePointsResponse_placementCountMember1 property.
    */
    public function setTournamentLeaguePointsResponsePlacementCountMember1(?TournamentLeaguePointsResponse_placementCountMember1 $value): void {
        $this->tournamentLeaguePointsResponse_placementCountMember1 = $value;
    }

}

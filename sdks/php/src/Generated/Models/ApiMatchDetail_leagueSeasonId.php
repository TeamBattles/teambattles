<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchDetail_leagueSeasonIdMember1, string
*/
class ApiMatchDetail_leagueSeasonId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchDetail_leagueSeasonIdMember1|null $apiMatchDetail_leagueSeasonIdMember1 Composed type representation for type ApiMatchDetail_leagueSeasonIdMember1
    */
    private ?ApiMatchDetail_leagueSeasonIdMember1 $apiMatchDetail_leagueSeasonIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail_leagueSeasonId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail_leagueSeasonId {
        $result = new ApiMatchDetail_leagueSeasonId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchDetailLeagueSeasonIdMember1(new ApiMatchDetail_leagueSeasonIdMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type ApiMatchDetail_leagueSeasonIdMember1
     * @return ApiMatchDetail_leagueSeasonIdMember1|null
    */
    public function getApiMatchDetailLeagueSeasonIdMember1(): ?ApiMatchDetail_leagueSeasonIdMember1 {
        return $this->apiMatchDetail_leagueSeasonIdMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchDetailLeagueSeasonIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchDetailLeagueSeasonIdMember1());
        }
        return [];
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getApiMatchDetailLeagueSeasonIdMember1());
        }
    }

    /**
     * Sets the ApiMatchDetail_leagueSeasonIdMember1 property value. Composed type representation for type ApiMatchDetail_leagueSeasonIdMember1
     * @param ApiMatchDetail_leagueSeasonIdMember1|null $value Value to set for the ApiMatchDetail_leagueSeasonIdMember1 property.
    */
    public function setApiMatchDetailLeagueSeasonIdMember1(?ApiMatchDetail_leagueSeasonIdMember1 $value): void {
        $this->apiMatchDetail_leagueSeasonIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

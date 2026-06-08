<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchDetail_leagueIdMember1, string
*/
class ApiMatchDetail_leagueId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchDetail_leagueIdMember1|null $apiMatchDetail_leagueIdMember1 Composed type representation for type ApiMatchDetail_leagueIdMember1
    */
    private ?ApiMatchDetail_leagueIdMember1 $apiMatchDetail_leagueIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchDetail_leagueId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchDetail_leagueId {
        $result = new ApiMatchDetail_leagueId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiMatchDetailLeagueIdMember1(new ApiMatchDetail_leagueIdMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type ApiMatchDetail_leagueIdMember1
     * @return ApiMatchDetail_leagueIdMember1|null
    */
    public function getApiMatchDetailLeagueIdMember1(): ?ApiMatchDetail_leagueIdMember1 {
        return $this->apiMatchDetail_leagueIdMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchDetailLeagueIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchDetailLeagueIdMember1());
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
            $writer->writeObjectValue(null, $this->getApiMatchDetailLeagueIdMember1());
        }
    }

    /**
     * Sets the ApiMatchDetail_leagueIdMember1 property value. Composed type representation for type ApiMatchDetail_leagueIdMember1
     * @param ApiMatchDetail_leagueIdMember1|null $value Value to set for the ApiMatchDetail_leagueIdMember1 property.
    */
    public function setApiMatchDetailLeagueIdMember1(?ApiMatchDetail_leagueIdMember1 $value): void {
        $this->apiMatchDetail_leagueIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

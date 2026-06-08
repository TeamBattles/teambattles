<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiMatchTeam_scoreMember1, int
*/
class ApiMatchTeam_score implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiMatchTeam_scoreMember1|null $apiMatchTeam_scoreMember1 Composed type representation for type ApiMatchTeam_scoreMember1
    */
    private ?ApiMatchTeam_scoreMember1 $apiMatchTeam_scoreMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchTeam_score
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchTeam_score {
        $result = new ApiMatchTeam_score();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setApiMatchTeamScoreMember1(new ApiMatchTeam_scoreMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type ApiMatchTeam_scoreMember1
     * @return ApiMatchTeam_scoreMember1|null
    */
    public function getApiMatchTeamScoreMember1(): ?ApiMatchTeam_scoreMember1 {
        return $this->apiMatchTeam_scoreMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiMatchTeamScoreMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiMatchTeamScoreMember1());
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
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getApiMatchTeamScoreMember1());
        }
    }

    /**
     * Sets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type ApiMatchTeam_scoreMember1
     * @param ApiMatchTeam_scoreMember1|null $value Value to set for the ApiMatchTeam_scoreMember1 property.
    */
    public function setApiMatchTeamScoreMember1(?ApiMatchTeam_scoreMember1 $value): void {
        $this->apiMatchTeam_scoreMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}

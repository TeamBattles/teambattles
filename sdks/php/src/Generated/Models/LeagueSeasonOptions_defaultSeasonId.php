<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes LeagueSeasonOptions_defaultSeasonIdMember1, string
*/
class LeagueSeasonOptions_defaultSeasonId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var LeagueSeasonOptions_defaultSeasonIdMember1|null $leagueSeasonOptions_defaultSeasonIdMember1 Composed type representation for type LeagueSeasonOptions_defaultSeasonIdMember1
    */
    private ?LeagueSeasonOptions_defaultSeasonIdMember1 $leagueSeasonOptions_defaultSeasonIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSeasonOptions_defaultSeasonId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSeasonOptions_defaultSeasonId {
        $result = new LeagueSeasonOptions_defaultSeasonId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setLeagueSeasonOptionsDefaultSeasonIdMember1(new LeagueSeasonOptions_defaultSeasonIdMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getLeagueSeasonOptionsDefaultSeasonIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getLeagueSeasonOptionsDefaultSeasonIdMember1());
        }
        return [];
    }

    /**
     * Gets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type LeagueSeasonOptions_defaultSeasonIdMember1
     * @return LeagueSeasonOptions_defaultSeasonIdMember1|null
    */
    public function getLeagueSeasonOptionsDefaultSeasonIdMember1(): ?LeagueSeasonOptions_defaultSeasonIdMember1 {
        return $this->leagueSeasonOptions_defaultSeasonIdMember1;
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
            $writer->writeObjectValue(null, $this->getLeagueSeasonOptionsDefaultSeasonIdMember1());
        }
    }

    /**
     * Sets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type LeagueSeasonOptions_defaultSeasonIdMember1
     * @param LeagueSeasonOptions_defaultSeasonIdMember1|null $value Value to set for the LeagueSeasonOptions_defaultSeasonIdMember1 property.
    */
    public function setLeagueSeasonOptionsDefaultSeasonIdMember1(?LeagueSeasonOptions_defaultSeasonIdMember1 $value): void {
        $this->leagueSeasonOptions_defaultSeasonIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, TournamentRoundScheduleRequestBody_startsAtMember1
*/
class TournamentRoundScheduleRequestBody_startsAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var TournamentRoundScheduleRequestBody_startsAtMember1|null $tournamentRoundScheduleRequestBody_startsAtMember1 Composed type representation for type TournamentRoundScheduleRequestBody_startsAtMember1
    */
    private ?TournamentRoundScheduleRequestBody_startsAtMember1 $tournamentRoundScheduleRequestBody_startsAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRoundScheduleRequestBody_startsAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRoundScheduleRequestBody_startsAt {
        $result = new TournamentRoundScheduleRequestBody_startsAt();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setTournamentRoundScheduleRequestBodyStartsAtMember1(new TournamentRoundScheduleRequestBody_startsAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentRoundScheduleRequestBodyStartsAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentRoundScheduleRequestBodyStartsAtMember1());
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
     * Gets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleRequestBody_startsAtMember1
     * @return TournamentRoundScheduleRequestBody_startsAtMember1|null
    */
    public function getTournamentRoundScheduleRequestBodyStartsAtMember1(): ?TournamentRoundScheduleRequestBody_startsAtMember1 {
        return $this->tournamentRoundScheduleRequestBody_startsAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentRoundScheduleRequestBodyStartsAtMember1());
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
     * Sets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleRequestBody_startsAtMember1
     * @param TournamentRoundScheduleRequestBody_startsAtMember1|null $value Value to set for the TournamentRoundScheduleRequestBody_startsAtMember1 property.
    */
    public function setTournamentRoundScheduleRequestBodyStartsAtMember1(?TournamentRoundScheduleRequestBody_startsAtMember1 $value): void {
        $this->tournamentRoundScheduleRequestBody_startsAtMember1 = $value;
    }

}

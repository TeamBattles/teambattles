<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, TournamentRoundScheduleResponse_startsAtMember1
*/
class TournamentRoundScheduleResponse_startsAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var TournamentRoundScheduleResponse_startsAtMember1|null $tournamentRoundScheduleResponse_startsAtMember1 Composed type representation for type TournamentRoundScheduleResponse_startsAtMember1
    */
    private ?TournamentRoundScheduleResponse_startsAtMember1 $tournamentRoundScheduleResponse_startsAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRoundScheduleResponse_startsAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRoundScheduleResponse_startsAt {
        $result = new TournamentRoundScheduleResponse_startsAt();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setTournamentRoundScheduleResponseStartsAtMember1(new TournamentRoundScheduleResponse_startsAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentRoundScheduleResponseStartsAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentRoundScheduleResponseStartsAtMember1());
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
     * Gets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleResponse_startsAtMember1
     * @return TournamentRoundScheduleResponse_startsAtMember1|null
    */
    public function getTournamentRoundScheduleResponseStartsAtMember1(): ?TournamentRoundScheduleResponse_startsAtMember1 {
        return $this->tournamentRoundScheduleResponse_startsAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentRoundScheduleResponseStartsAtMember1());
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
     * Sets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleResponse_startsAtMember1
     * @param TournamentRoundScheduleResponse_startsAtMember1|null $value Value to set for the TournamentRoundScheduleResponse_startsAtMember1 property.
    */
    public function setTournamentRoundScheduleResponseStartsAtMember1(?TournamentRoundScheduleResponse_startsAtMember1 $value): void {
        $this->tournamentRoundScheduleResponse_startsAtMember1 = $value;
    }

}

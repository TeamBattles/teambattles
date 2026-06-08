<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, LeaderboardRankResponse_rankMember1
*/
class LeaderboardRankResponse_rank implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var LeaderboardRankResponse_rankMember1|null $leaderboardRankResponse_rankMember1 Composed type representation for type LeaderboardRankResponse_rankMember1
    */
    private ?LeaderboardRankResponse_rankMember1 $leaderboardRankResponse_rankMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeaderboardRankResponse_rank
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeaderboardRankResponse_rank {
        $result = new LeaderboardRankResponse_rank();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setLeaderboardRankResponseRankMember1(new LeaderboardRankResponse_rankMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getLeaderboardRankResponseRankMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getLeaderboardRankResponseRankMember1());
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
     * Gets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type LeaderboardRankResponse_rankMember1
     * @return LeaderboardRankResponse_rankMember1|null
    */
    public function getLeaderboardRankResponseRankMember1(): ?LeaderboardRankResponse_rankMember1 {
        return $this->leaderboardRankResponse_rankMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getLeaderboardRankResponseRankMember1());
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
     * Sets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type LeaderboardRankResponse_rankMember1
     * @param LeaderboardRankResponse_rankMember1|null $value Value to set for the LeaderboardRankResponse_rankMember1 property.
    */
    public function setLeaderboardRankResponseRankMember1(?LeaderboardRankResponse_rankMember1 $value): void {
        $this->leaderboardRankResponse_rankMember1 = $value;
    }

}

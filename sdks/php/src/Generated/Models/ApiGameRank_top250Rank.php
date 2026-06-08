<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameRank_top250RankMember1, int
*/
class ApiGameRank_top250Rank implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameRank_top250RankMember1|null $apiGameRank_top250RankMember1 Composed type representation for type ApiGameRank_top250RankMember1
    */
    private ?ApiGameRank_top250RankMember1 $apiGameRank_top250RankMember1 = null;
    
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameRank_top250Rank
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameRank_top250Rank {
        $result = new ApiGameRank_top250Rank();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setApiGameRankTop250RankMember1(new ApiGameRank_top250RankMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameRank_top250RankMember1 property value. Composed type representation for type ApiGameRank_top250RankMember1
     * @return ApiGameRank_top250RankMember1|null
    */
    public function getApiGameRankTop250RankMember1(): ?ApiGameRank_top250RankMember1 {
        return $this->apiGameRank_top250RankMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameRankTop250RankMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameRankTop250RankMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameRankTop250RankMember1());
        }
    }

    /**
     * Sets the ApiGameRank_top250RankMember1 property value. Composed type representation for type ApiGameRank_top250RankMember1
     * @param ApiGameRank_top250RankMember1|null $value Value to set for the ApiGameRank_top250RankMember1 property.
    */
    public function setApiGameRankTop250RankMember1(?ApiGameRank_top250RankMember1 $value): void {
        $this->apiGameRank_top250RankMember1 = $value;
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

}

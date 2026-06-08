<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameRank_srMember1, float
*/
class ApiGameRank_sr implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameRank_srMember1|null $apiGameRank_srMember1 Composed type representation for type ApiGameRank_srMember1
    */
    private ?ApiGameRank_srMember1 $apiGameRank_srMember1 = null;
    
    /**
     * @var float|null $double Composed type representation for type float
    */
    private ?float $double = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameRank_sr
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameRank_sr {
        $result = new ApiGameRank_sr();
        if ($parseNode->getFloatValue() !== null) {
            $result->setDouble($parseNode->getFloatValue());
        } else {
            $result->setApiGameRankSrMember1(new ApiGameRank_srMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameRank_srMember1 property value. Composed type representation for type ApiGameRank_srMember1
     * @return ApiGameRank_srMember1|null
    */
    public function getApiGameRankSrMember1(): ?ApiGameRank_srMember1 {
        return $this->apiGameRank_srMember1;
    }

    /**
     * Gets the double property value. Composed type representation for type float
     * @return float|null
    */
    public function getDouble(): ?float {
        return $this->double;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiGameRankSrMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameRankSrMember1());
        }
        return [];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getDouble() !== null) {
            $writer->writeFloatValue(null, $this->getDouble());
        } else {
            $writer->writeObjectValue(null, $this->getApiGameRankSrMember1());
        }
    }

    /**
     * Sets the ApiGameRank_srMember1 property value. Composed type representation for type ApiGameRank_srMember1
     * @param ApiGameRank_srMember1|null $value Value to set for the ApiGameRank_srMember1 property.
    */
    public function setApiGameRankSrMember1(?ApiGameRank_srMember1 $value): void {
        $this->apiGameRank_srMember1 = $value;
    }

    /**
     * Sets the double property value. Composed type representation for type float
     * @param float|null $value Value to set for the double property.
    */
    public function setDouble(?float $value): void {
        $this->double = $value;
    }

}

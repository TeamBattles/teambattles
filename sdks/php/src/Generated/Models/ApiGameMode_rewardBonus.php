<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiGameMode_rewardBonusMember1, float
*/
class ApiGameMode_rewardBonus implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiGameMode_rewardBonusMember1|null $apiGameMode_rewardBonusMember1 Composed type representation for type ApiGameMode_rewardBonusMember1
    */
    private ?ApiGameMode_rewardBonusMember1 $apiGameMode_rewardBonusMember1 = null;
    
    /**
     * @var float|null $double Composed type representation for type float
    */
    private ?float $double = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameMode_rewardBonus
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameMode_rewardBonus {
        $result = new ApiGameMode_rewardBonus();
        if ($parseNode->getFloatValue() !== null) {
            $result->setDouble($parseNode->getFloatValue());
        } else {
            $result->setApiGameModeRewardBonusMember1(new ApiGameMode_rewardBonusMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type ApiGameMode_rewardBonusMember1
     * @return ApiGameMode_rewardBonusMember1|null
    */
    public function getApiGameModeRewardBonusMember1(): ?ApiGameMode_rewardBonusMember1 {
        return $this->apiGameMode_rewardBonusMember1;
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
        if ($this->getApiGameModeRewardBonusMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiGameModeRewardBonusMember1());
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
            $writer->writeObjectValue(null, $this->getApiGameModeRewardBonusMember1());
        }
    }

    /**
     * Sets the ApiGameMode_rewardBonusMember1 property value. Composed type representation for type ApiGameMode_rewardBonusMember1
     * @param ApiGameMode_rewardBonusMember1|null $value Value to set for the ApiGameMode_rewardBonusMember1 property.
    */
    public function setApiGameModeRewardBonusMember1(?ApiGameMode_rewardBonusMember1 $value): void {
        $this->apiGameMode_rewardBonusMember1 = $value;
    }

    /**
     * Sets the double property value. Composed type representation for type float
     * @param float|null $value Value to set for the double property.
    */
    public function setDouble(?float $value): void {
        $this->double = $value;
    }

}

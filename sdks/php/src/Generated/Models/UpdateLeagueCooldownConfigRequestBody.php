<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Updates league member cooldown configuration.
*/
class UpdateLeagueCooldownConfigRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $kickCooldownHours The kickCooldownHours property
    */
    private ?float $kickCooldownHours = null;
    
    /**
     * @var float|null $maxCooldownHours The maxCooldownHours property
    */
    private ?float $maxCooldownHours = null;
    
    /**
     * @var float|null $repeatLeaveCooldownMultiplier The repeatLeaveCooldownMultiplier property
    */
    private ?float $repeatLeaveCooldownMultiplier = null;
    
    /**
     * @var bool|null $repeatLeavePenaltyEnabled The repeatLeavePenaltyEnabled property
    */
    private ?bool $repeatLeavePenaltyEnabled = null;
    
    /**
     * @var float|null $selfLeaveCooldownHours The selfLeaveCooldownHours property
    */
    private ?float $selfLeaveCooldownHours = null;
    
    /**
     * Instantiates a new UpdateLeagueCooldownConfigRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLeagueCooldownConfigRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLeagueCooldownConfigRequestBody {
        return new UpdateLeagueCooldownConfigRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'kickCooldownHours' => fn(ParseNode $n) => $o->setKickCooldownHours($n->getFloatValue()),
            'maxCooldownHours' => fn(ParseNode $n) => $o->setMaxCooldownHours($n->getFloatValue()),
            'repeatLeaveCooldownMultiplier' => fn(ParseNode $n) => $o->setRepeatLeaveCooldownMultiplier($n->getFloatValue()),
            'repeatLeavePenaltyEnabled' => fn(ParseNode $n) => $o->setRepeatLeavePenaltyEnabled($n->getBooleanValue()),
            'selfLeaveCooldownHours' => fn(ParseNode $n) => $o->setSelfLeaveCooldownHours($n->getFloatValue()),
        ];
    }

    /**
     * Gets the kickCooldownHours property value. The kickCooldownHours property
     * @return float|null
    */
    public function getKickCooldownHours(): ?float {
        return $this->kickCooldownHours;
    }

    /**
     * Gets the maxCooldownHours property value. The maxCooldownHours property
     * @return float|null
    */
    public function getMaxCooldownHours(): ?float {
        return $this->maxCooldownHours;
    }

    /**
     * Gets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
     * @return float|null
    */
    public function getRepeatLeaveCooldownMultiplier(): ?float {
        return $this->repeatLeaveCooldownMultiplier;
    }

    /**
     * Gets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
     * @return bool|null
    */
    public function getRepeatLeavePenaltyEnabled(): ?bool {
        return $this->repeatLeavePenaltyEnabled;
    }

    /**
     * Gets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
     * @return float|null
    */
    public function getSelfLeaveCooldownHours(): ?float {
        return $this->selfLeaveCooldownHours;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('kickCooldownHours', $this->getKickCooldownHours());
        $writer->writeFloatValue('maxCooldownHours', $this->getMaxCooldownHours());
        $writer->writeFloatValue('repeatLeaveCooldownMultiplier', $this->getRepeatLeaveCooldownMultiplier());
        $writer->writeBooleanValue('repeatLeavePenaltyEnabled', $this->getRepeatLeavePenaltyEnabled());
        $writer->writeFloatValue('selfLeaveCooldownHours', $this->getSelfLeaveCooldownHours());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the kickCooldownHours property value. The kickCooldownHours property
     * @param float|null $value Value to set for the kickCooldownHours property.
    */
    public function setKickCooldownHours(?float $value): void {
        $this->kickCooldownHours = $value;
    }

    /**
     * Sets the maxCooldownHours property value. The maxCooldownHours property
     * @param float|null $value Value to set for the maxCooldownHours property.
    */
    public function setMaxCooldownHours(?float $value): void {
        $this->maxCooldownHours = $value;
    }

    /**
     * Sets the repeatLeaveCooldownMultiplier property value. The repeatLeaveCooldownMultiplier property
     * @param float|null $value Value to set for the repeatLeaveCooldownMultiplier property.
    */
    public function setRepeatLeaveCooldownMultiplier(?float $value): void {
        $this->repeatLeaveCooldownMultiplier = $value;
    }

    /**
     * Sets the repeatLeavePenaltyEnabled property value. The repeatLeavePenaltyEnabled property
     * @param bool|null $value Value to set for the repeatLeavePenaltyEnabled property.
    */
    public function setRepeatLeavePenaltyEnabled(?bool $value): void {
        $this->repeatLeavePenaltyEnabled = $value;
    }

    /**
     * Sets the selfLeaveCooldownHours property value. The selfLeaveCooldownHours property
     * @param float|null $value Value to set for the selfLeaveCooldownHours property.
    */
    public function setSelfLeaveCooldownHours(?float $value): void {
        $this->selfLeaveCooldownHours = $value;
    }

}

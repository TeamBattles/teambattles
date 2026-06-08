<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A single playback stage of a strategy.
*/
class ApiStrategyStage implements Parsable 
{
    /**
     * @var int|null $durationMs Stage playback duration in milliseconds.
    */
    private ?int $durationMs = null;
    
    /**
     * @var string|null $id Stable stage id within the strategy.
    */
    private ?string $id = null;
    
    /**
     * @var ApiStrategyStage_label|null $label Author stage label, when set.
    */
    private ?ApiStrategyStage_label $label = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategyStage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategyStage {
        return new ApiStrategyStage();
    }

    /**
     * Gets the durationMs property value. Stage playback duration in milliseconds.
     * @return int|null
    */
    public function getDurationMs(): ?int {
        return $this->durationMs;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'durationMs' => fn(ParseNode $n) => $o->setDurationMs($n->getIntegerValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'label' => fn(ParseNode $n) => $o->setLabel($n->getObjectValue([ApiStrategyStage_label::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. Stable stage id within the strategy.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the label property value. Author stage label, when set.
     * @return ApiStrategyStage_label|null
    */
    public function getLabel(): ?ApiStrategyStage_label {
        return $this->label;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('durationMs', $this->getDurationMs());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('label', $this->getLabel());
    }

    /**
     * Sets the durationMs property value. Stage playback duration in milliseconds.
     * @param int|null $value Value to set for the durationMs property.
    */
    public function setDurationMs(?int $value): void {
        $this->durationMs = $value;
    }

    /**
     * Sets the id property value. Stable stage id within the strategy.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the label property value. Author stage label, when set.
     * @param ApiStrategyStage_label|null $value Value to set for the label property.
    */
    public function setLabel(?ApiStrategyStage_label $value): void {
        $this->label = $value;
    }

}

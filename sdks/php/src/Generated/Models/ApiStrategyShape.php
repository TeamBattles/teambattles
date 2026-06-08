<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe strategy shape. Hidden working shapes are omitted from responses.
*/
class ApiStrategyShape implements Parsable 
{
    /**
     * @var string|null $id Shape row ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiStrategyShape_layer|null $layer Canvas layer the shape renders on.
    */
    private ?ApiStrategyShape_layer $layer = null;
    
    /**
     * @var string|null $shapeId Stable client-side shape id.
    */
    private ?string $shapeId = null;
    
    /**
     * @var string|null $stageId Stage this shape belongs to.
    */
    private ?string $stageId = null;
    
    /**
     * @var ApiStrategyShape_type|null $type Shape primitive type.
    */
    private ?ApiStrategyShape_type $type = null;
    
    /**
     * @var ApiStrategyShape_updatedAt|null $updatedAt The updatedAt property
    */
    private ?ApiStrategyShape_updatedAt $updatedAt = null;
    
    /**
     * @var float|null $zIndex Stacking order within its layer.
    */
    private ?float $zIndex = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiStrategyShape
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiStrategyShape {
        return new ApiStrategyShape();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'layer' => fn(ParseNode $n) => $o->setLayer($n->getEnumValue(ApiStrategyShape_layer::class)),
            'shapeId' => fn(ParseNode $n) => $o->setShapeId($n->getStringValue()),
            'stageId' => fn(ParseNode $n) => $o->setStageId($n->getStringValue()),
            'type' => fn(ParseNode $n) => $o->setType($n->getEnumValue(ApiStrategyShape_type::class)),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getObjectValue([ApiStrategyShape_updatedAt::class, 'createFromDiscriminatorValue'])),
            'zIndex' => fn(ParseNode $n) => $o->setZIndex($n->getFloatValue()),
        ];
    }

    /**
     * Gets the id property value. Shape row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the layer property value. Canvas layer the shape renders on.
     * @return ApiStrategyShape_layer|null
    */
    public function getLayer(): ?ApiStrategyShape_layer {
        return $this->layer;
    }

    /**
     * Gets the shapeId property value. Stable client-side shape id.
     * @return string|null
    */
    public function getShapeId(): ?string {
        return $this->shapeId;
    }

    /**
     * Gets the stageId property value. Stage this shape belongs to.
     * @return string|null
    */
    public function getStageId(): ?string {
        return $this->stageId;
    }

    /**
     * Gets the type property value. Shape primitive type.
     * @return ApiStrategyShape_type|null
    */
    public function getType(): ?ApiStrategyShape_type {
        return $this->type;
    }

    /**
     * Gets the updatedAt property value. The updatedAt property
     * @return ApiStrategyShape_updatedAt|null
    */
    public function getUpdatedAt(): ?ApiStrategyShape_updatedAt {
        return $this->updatedAt;
    }

    /**
     * Gets the zIndex property value. Stacking order within its layer.
     * @return float|null
    */
    public function getZIndex(): ?float {
        return $this->zIndex;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeEnumValue('layer', $this->getLayer());
        $writer->writeStringValue('shapeId', $this->getShapeId());
        $writer->writeStringValue('stageId', $this->getStageId());
        $writer->writeEnumValue('type', $this->getType());
        $writer->writeObjectValue('updatedAt', $this->getUpdatedAt());
        $writer->writeFloatValue('zIndex', $this->getZIndex());
    }

    /**
     * Sets the id property value. Shape row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the layer property value. Canvas layer the shape renders on.
     * @param ApiStrategyShape_layer|null $value Value to set for the layer property.
    */
    public function setLayer(?ApiStrategyShape_layer $value): void {
        $this->layer = $value;
    }

    /**
     * Sets the shapeId property value. Stable client-side shape id.
     * @param string|null $value Value to set for the shapeId property.
    */
    public function setShapeId(?string $value): void {
        $this->shapeId = $value;
    }

    /**
     * Sets the stageId property value. Stage this shape belongs to.
     * @param string|null $value Value to set for the stageId property.
    */
    public function setStageId(?string $value): void {
        $this->stageId = $value;
    }

    /**
     * Sets the type property value. Shape primitive type.
     * @param ApiStrategyShape_type|null $value Value to set for the type property.
    */
    public function setType(?ApiStrategyShape_type $value): void {
        $this->type = $value;
    }

    /**
     * Sets the updatedAt property value. The updatedAt property
     * @param ApiStrategyShape_updatedAt|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?ApiStrategyShape_updatedAt $value): void {
        $this->updatedAt = $value;
    }

    /**
     * Sets the zIndex property value. Stacking order within its layer.
     * @param float|null $value Value to set for the zIndex property.
    */
    public function setZIndex(?float $value): void {
        $this->zIndex = $value;
    }

}

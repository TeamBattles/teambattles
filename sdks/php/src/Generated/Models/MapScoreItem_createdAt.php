<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes MapScoreItem_createdAtMember1, string
*/
class MapScoreItem_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var MapScoreItem_createdAtMember1|null $mapScoreItem_createdAtMember1 Composed type representation for type MapScoreItem_createdAtMember1
    */
    private ?MapScoreItem_createdAtMember1 $mapScoreItem_createdAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MapScoreItem_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MapScoreItem_createdAt {
        $result = new MapScoreItem_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setMapScoreItemCreatedAtMember1(new MapScoreItem_createdAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getMapScoreItemCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getMapScoreItemCreatedAtMember1());
        }
        return [];
    }

    /**
     * Gets the MapScoreItem_createdAtMember1 property value. Composed type representation for type MapScoreItem_createdAtMember1
     * @return MapScoreItem_createdAtMember1|null
    */
    public function getMapScoreItemCreatedAtMember1(): ?MapScoreItem_createdAtMember1 {
        return $this->mapScoreItem_createdAtMember1;
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
            $writer->writeObjectValue(null, $this->getMapScoreItemCreatedAtMember1());
        }
    }

    /**
     * Sets the MapScoreItem_createdAtMember1 property value. Composed type representation for type MapScoreItem_createdAtMember1
     * @param MapScoreItem_createdAtMember1|null $value Value to set for the MapScoreItem_createdAtMember1 property.
    */
    public function setMapScoreItemCreatedAtMember1(?MapScoreItem_createdAtMember1 $value): void {
        $this->mapScoreItem_createdAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

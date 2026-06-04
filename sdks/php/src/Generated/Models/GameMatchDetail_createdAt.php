<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatchDetail_createdAtMember1, string
*/
class GameMatchDetail_createdAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatchDetail_createdAtMember1|null $gameMatchDetail_createdAtMember1 Composed type representation for type GameMatchDetail_createdAtMember1
    */
    private ?GameMatchDetail_createdAtMember1 $gameMatchDetail_createdAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetail_createdAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetail_createdAt {
        $result = new GameMatchDetail_createdAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchDetailCreatedAtMember1(new GameMatchDetail_createdAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchDetailCreatedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchDetailCreatedAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type GameMatchDetail_createdAtMember1
     * @return GameMatchDetail_createdAtMember1|null
    */
    public function getGameMatchDetailCreatedAtMember1(): ?GameMatchDetail_createdAtMember1 {
        return $this->gameMatchDetail_createdAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchDetailCreatedAtMember1());
        }
    }

    /**
     * Sets the GameMatchDetail_createdAtMember1 property value. Composed type representation for type GameMatchDetail_createdAtMember1
     * @param GameMatchDetail_createdAtMember1|null $value Value to set for the GameMatchDetail_createdAtMember1 property.
    */
    public function setGameMatchDetailCreatedAtMember1(?GameMatchDetail_createdAtMember1 $value): void {
        $this->gameMatchDetail_createdAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatchDetail_scheduledAtMember1, string
*/
class GameMatchDetail_scheduledAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatchDetail_scheduledAtMember1|null $gameMatchDetail_scheduledAtMember1 Composed type representation for type GameMatchDetail_scheduledAtMember1
    */
    private ?GameMatchDetail_scheduledAtMember1 $gameMatchDetail_scheduledAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchDetail_scheduledAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchDetail_scheduledAt {
        $result = new GameMatchDetail_scheduledAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchDetailScheduledAtMember1(new GameMatchDetail_scheduledAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchDetailScheduledAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchDetailScheduledAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type GameMatchDetail_scheduledAtMember1
     * @return GameMatchDetail_scheduledAtMember1|null
    */
    public function getGameMatchDetailScheduledAtMember1(): ?GameMatchDetail_scheduledAtMember1 {
        return $this->gameMatchDetail_scheduledAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchDetailScheduledAtMember1());
        }
    }

    /**
     * Sets the GameMatchDetail_scheduledAtMember1 property value. Composed type representation for type GameMatchDetail_scheduledAtMember1
     * @param GameMatchDetail_scheduledAtMember1|null $value Value to set for the GameMatchDetail_scheduledAtMember1 property.
    */
    public function setGameMatchDetailScheduledAtMember1(?GameMatchDetail_scheduledAtMember1 $value): void {
        $this->gameMatchDetail_scheduledAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

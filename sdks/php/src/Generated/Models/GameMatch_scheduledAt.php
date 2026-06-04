<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatch_scheduledAtMember1, string
*/
class GameMatch_scheduledAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatch_scheduledAtMember1|null $gameMatch_scheduledAtMember1 Composed type representation for type GameMatch_scheduledAtMember1
    */
    private ?GameMatch_scheduledAtMember1 $gameMatch_scheduledAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatch_scheduledAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatch_scheduledAt {
        $result = new GameMatch_scheduledAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchScheduledAtMember1(new GameMatch_scheduledAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchScheduledAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchScheduledAtMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatch_scheduledAtMember1 property value. Composed type representation for type GameMatch_scheduledAtMember1
     * @return GameMatch_scheduledAtMember1|null
    */
    public function getGameMatchScheduledAtMember1(): ?GameMatch_scheduledAtMember1 {
        return $this->gameMatch_scheduledAtMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchScheduledAtMember1());
        }
    }

    /**
     * Sets the GameMatch_scheduledAtMember1 property value. Composed type representation for type GameMatch_scheduledAtMember1
     * @param GameMatch_scheduledAtMember1|null $value Value to set for the GameMatch_scheduledAtMember1 property.
    */
    public function setGameMatchScheduledAtMember1(?GameMatch_scheduledAtMember1 $value): void {
        $this->gameMatch_scheduledAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

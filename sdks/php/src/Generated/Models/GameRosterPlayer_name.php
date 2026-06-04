<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameRosterPlayer_nameMember1, string
*/
class GameRosterPlayer_name implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameRosterPlayer_nameMember1|null $gameRosterPlayer_nameMember1 Composed type representation for type GameRosterPlayer_nameMember1
    */
    private ?GameRosterPlayer_nameMember1 $gameRosterPlayer_nameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameRosterPlayer_name
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameRosterPlayer_name {
        $result = new GameRosterPlayer_name();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameRosterPlayerNameMember1(new GameRosterPlayer_nameMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameRosterPlayerNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameRosterPlayerNameMember1());
        }
        return [];
    }

    /**
     * Gets the GameRosterPlayer_nameMember1 property value. Composed type representation for type GameRosterPlayer_nameMember1
     * @return GameRosterPlayer_nameMember1|null
    */
    public function getGameRosterPlayerNameMember1(): ?GameRosterPlayer_nameMember1 {
        return $this->gameRosterPlayer_nameMember1;
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
            $writer->writeObjectValue(null, $this->getGameRosterPlayerNameMember1());
        }
    }

    /**
     * Sets the GameRosterPlayer_nameMember1 property value. Composed type representation for type GameRosterPlayer_nameMember1
     * @param GameRosterPlayer_nameMember1|null $value Value to set for the GameRosterPlayer_nameMember1 property.
    */
    public function setGameRosterPlayerNameMember1(?GameRosterPlayer_nameMember1 $value): void {
        $this->gameRosterPlayer_nameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

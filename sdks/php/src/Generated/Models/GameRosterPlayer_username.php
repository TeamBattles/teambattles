<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameRosterPlayer_usernameMember1, string
*/
class GameRosterPlayer_username implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameRosterPlayer_usernameMember1|null $gameRosterPlayer_usernameMember1 Composed type representation for type GameRosterPlayer_usernameMember1
    */
    private ?GameRosterPlayer_usernameMember1 $gameRosterPlayer_usernameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameRosterPlayer_username
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameRosterPlayer_username {
        $result = new GameRosterPlayer_username();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameRosterPlayerUsernameMember1(new GameRosterPlayer_usernameMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameRosterPlayerUsernameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameRosterPlayerUsernameMember1());
        }
        return [];
    }

    /**
     * Gets the GameRosterPlayer_usernameMember1 property value. Composed type representation for type GameRosterPlayer_usernameMember1
     * @return GameRosterPlayer_usernameMember1|null
    */
    public function getGameRosterPlayerUsernameMember1(): ?GameRosterPlayer_usernameMember1 {
        return $this->gameRosterPlayer_usernameMember1;
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
            $writer->writeObjectValue(null, $this->getGameRosterPlayerUsernameMember1());
        }
    }

    /**
     * Sets the GameRosterPlayer_usernameMember1 property value. Composed type representation for type GameRosterPlayer_usernameMember1
     * @param GameRosterPlayer_usernameMember1|null $value Value to set for the GameRosterPlayer_usernameMember1 property.
    */
    public function setGameRosterPlayerUsernameMember1(?GameRosterPlayer_usernameMember1 $value): void {
        $this->gameRosterPlayer_usernameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

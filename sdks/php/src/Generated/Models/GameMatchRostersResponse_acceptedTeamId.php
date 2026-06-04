<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes GameMatchRostersResponse_acceptedTeamIdMember1, string
*/
class GameMatchRostersResponse_acceptedTeamId implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var GameMatchRostersResponse_acceptedTeamIdMember1|null $gameMatchRostersResponse_acceptedTeamIdMember1 Composed type representation for type GameMatchRostersResponse_acceptedTeamIdMember1
    */
    private ?GameMatchRostersResponse_acceptedTeamIdMember1 $gameMatchRostersResponse_acceptedTeamIdMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameMatchRostersResponse_acceptedTeamId
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameMatchRostersResponse_acceptedTeamId {
        $result = new GameMatchRostersResponse_acceptedTeamId();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setGameMatchRostersResponseAcceptedTeamIdMember1(new GameMatchRostersResponse_acceptedTeamIdMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getGameMatchRostersResponseAcceptedTeamIdMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getGameMatchRostersResponseAcceptedTeamIdMember1());
        }
        return [];
    }

    /**
     * Gets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type GameMatchRostersResponse_acceptedTeamIdMember1
     * @return GameMatchRostersResponse_acceptedTeamIdMember1|null
    */
    public function getGameMatchRostersResponseAcceptedTeamIdMember1(): ?GameMatchRostersResponse_acceptedTeamIdMember1 {
        return $this->gameMatchRostersResponse_acceptedTeamIdMember1;
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
            $writer->writeObjectValue(null, $this->getGameMatchRostersResponseAcceptedTeamIdMember1());
        }
    }

    /**
     * Sets the GameMatchRostersResponse_acceptedTeamIdMember1 property value. Composed type representation for type GameMatchRostersResponse_acceptedTeamIdMember1
     * @param GameMatchRostersResponse_acceptedTeamIdMember1|null $value Value to set for the GameMatchRostersResponse_acceptedTeamIdMember1 property.
    */
    public function setGameMatchRostersResponseAcceptedTeamIdMember1(?GameMatchRostersResponse_acceptedTeamIdMember1 $value): void {
        $this->gameMatchRostersResponse_acceptedTeamIdMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

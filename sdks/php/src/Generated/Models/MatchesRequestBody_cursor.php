<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes MatchesRequestBody_cursorMember1, string
*/
class MatchesRequestBody_cursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var MatchesRequestBody_cursorMember1|null $matchesRequestBody_cursorMember1 Composed type representation for type MatchesRequestBody_cursorMember1
    */
    private ?MatchesRequestBody_cursorMember1 $matchesRequestBody_cursorMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesRequestBody_cursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesRequestBody_cursor {
        $result = new MatchesRequestBody_cursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setMatchesRequestBodyCursorMember1(new MatchesRequestBody_cursorMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getMatchesRequestBodyCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getMatchesRequestBodyCursorMember1());
        }
        return [];
    }

    /**
     * Gets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type MatchesRequestBody_cursorMember1
     * @return MatchesRequestBody_cursorMember1|null
    */
    public function getMatchesRequestBodyCursorMember1(): ?MatchesRequestBody_cursorMember1 {
        return $this->matchesRequestBody_cursorMember1;
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
            $writer->writeObjectValue(null, $this->getMatchesRequestBodyCursorMember1());
        }
    }

    /**
     * Sets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type MatchesRequestBody_cursorMember1
     * @param MatchesRequestBody_cursorMember1|null $value Value to set for the MatchesRequestBody_cursorMember1 property.
    */
    public function setMatchesRequestBodyCursorMember1(?MatchesRequestBody_cursorMember1 $value): void {
        $this->matchesRequestBody_cursorMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

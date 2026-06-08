<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes MatchDiscoverBody_cursorMember1, string
*/
class MatchDiscoverBody_cursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var MatchDiscoverBody_cursorMember1|null $matchDiscoverBody_cursorMember1 Composed type representation for type MatchDiscoverBody_cursorMember1
    */
    private ?MatchDiscoverBody_cursorMember1 $matchDiscoverBody_cursorMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchDiscoverBody_cursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchDiscoverBody_cursor {
        $result = new MatchDiscoverBody_cursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setMatchDiscoverBodyCursorMember1(new MatchDiscoverBody_cursorMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getMatchDiscoverBodyCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getMatchDiscoverBodyCursorMember1());
        }
        return [];
    }

    /**
     * Gets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type MatchDiscoverBody_cursorMember1
     * @return MatchDiscoverBody_cursorMember1|null
    */
    public function getMatchDiscoverBodyCursorMember1(): ?MatchDiscoverBody_cursorMember1 {
        return $this->matchDiscoverBody_cursorMember1;
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
            $writer->writeObjectValue(null, $this->getMatchDiscoverBodyCursorMember1());
        }
    }

    /**
     * Sets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type MatchDiscoverBody_cursorMember1
     * @param MatchDiscoverBody_cursorMember1|null $value Value to set for the MatchDiscoverBody_cursorMember1 property.
    */
    public function setMatchDiscoverBodyCursorMember1(?MatchDiscoverBody_cursorMember1 $value): void {
        $this->matchDiscoverBody_cursorMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

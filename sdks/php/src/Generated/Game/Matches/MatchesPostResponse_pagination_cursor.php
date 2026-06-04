<?php

namespace TeamBattles\Sdk\Generated\Game\Matches;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes MatchesPostResponse_pagination_cursorMember1, string
*/
class MatchesPostResponse_pagination_cursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var MatchesPostResponse_pagination_cursorMember1|null $matchesPostResponse_pagination_cursorMember1 Composed type representation for type MatchesPostResponse_pagination_cursorMember1
    */
    private ?MatchesPostResponse_pagination_cursorMember1 $matchesPostResponse_pagination_cursorMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchesPostResponse_pagination_cursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchesPostResponse_pagination_cursor {
        $result = new MatchesPostResponse_pagination_cursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setMatchesPostResponsePaginationCursorMember1(new MatchesPostResponse_pagination_cursorMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getMatchesPostResponsePaginationCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getMatchesPostResponsePaginationCursorMember1());
        }
        return [];
    }

    /**
     * Gets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type MatchesPostResponse_pagination_cursorMember1
     * @return MatchesPostResponse_pagination_cursorMember1|null
    */
    public function getMatchesPostResponsePaginationCursorMember1(): ?MatchesPostResponse_pagination_cursorMember1 {
        return $this->matchesPostResponse_pagination_cursorMember1;
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
            $writer->writeObjectValue(null, $this->getMatchesPostResponsePaginationCursorMember1());
        }
    }

    /**
     * Sets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type MatchesPostResponse_pagination_cursorMember1
     * @param MatchesPostResponse_pagination_cursorMember1|null $value Value to set for the matchesPostResponse_pagination_cursorMember1 property.
    */
    public function setMatchesPostResponsePaginationCursorMember1(?MatchesPostResponse_pagination_cursorMember1 $value): void {
        $this->matchesPostResponse_pagination_cursorMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

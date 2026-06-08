<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes MatchDiscoverPage_nextCursorMember1, string
*/
class MatchDiscoverPage_nextCursor implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var MatchDiscoverPage_nextCursorMember1|null $matchDiscoverPage_nextCursorMember1 Composed type representation for type MatchDiscoverPage_nextCursorMember1
    */
    private ?MatchDiscoverPage_nextCursorMember1 $matchDiscoverPage_nextCursorMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MatchDiscoverPage_nextCursor
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MatchDiscoverPage_nextCursor {
        $result = new MatchDiscoverPage_nextCursor();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setMatchDiscoverPageNextCursorMember1(new MatchDiscoverPage_nextCursorMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getMatchDiscoverPageNextCursorMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getMatchDiscoverPageNextCursorMember1());
        }
        return [];
    }

    /**
     * Gets the MatchDiscoverPage_nextCursorMember1 property value. Composed type representation for type MatchDiscoverPage_nextCursorMember1
     * @return MatchDiscoverPage_nextCursorMember1|null
    */
    public function getMatchDiscoverPageNextCursorMember1(): ?MatchDiscoverPage_nextCursorMember1 {
        return $this->matchDiscoverPage_nextCursorMember1;
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
            $writer->writeObjectValue(null, $this->getMatchDiscoverPageNextCursorMember1());
        }
    }

    /**
     * Sets the MatchDiscoverPage_nextCursorMember1 property value. Composed type representation for type MatchDiscoverPage_nextCursorMember1
     * @param MatchDiscoverPage_nextCursorMember1|null $value Value to set for the MatchDiscoverPage_nextCursorMember1 property.
    */
    public function setMatchDiscoverPageNextCursorMember1(?MatchDiscoverPage_nextCursorMember1 $value): void {
        $this->matchDiscoverPage_nextCursorMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}

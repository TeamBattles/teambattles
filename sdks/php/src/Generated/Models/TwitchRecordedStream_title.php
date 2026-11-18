<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TwitchRecordedStream_titleMember1
*/
class TwitchRecordedStream_title implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TwitchRecordedStream_titleMember1|null $twitchRecordedStream_titleMember1 Composed type representation for type TwitchRecordedStream_titleMember1
    */
    private ?TwitchRecordedStream_titleMember1 $twitchRecordedStream_titleMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchRecordedStream_title
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchRecordedStream_title {
        $result = new TwitchRecordedStream_title();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTwitchRecordedStreamTitleMember1(new TwitchRecordedStream_titleMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTwitchRecordedStreamTitleMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTwitchRecordedStreamTitleMember1());
        }
        return [];
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Gets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type TwitchRecordedStream_titleMember1
     * @return TwitchRecordedStream_titleMember1|null
    */
    public function getTwitchRecordedStreamTitleMember1(): ?TwitchRecordedStream_titleMember1 {
        return $this->twitchRecordedStream_titleMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTwitchRecordedStreamTitleMember1());
        }
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

    /**
     * Sets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type TwitchRecordedStream_titleMember1
     * @param TwitchRecordedStream_titleMember1|null $value Value to set for the TwitchRecordedStream_titleMember1 property.
    */
    public function setTwitchRecordedStreamTitleMember1(?TwitchRecordedStream_titleMember1 $value): void {
        $this->twitchRecordedStream_titleMember1 = $value;
    }

}

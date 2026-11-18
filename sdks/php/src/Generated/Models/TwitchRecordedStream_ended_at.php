<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TwitchRecordedStream_ended_atMember1
*/
class TwitchRecordedStream_ended_at implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TwitchRecordedStream_ended_atMember1|null $twitchRecordedStream_ended_atMember1 Composed type representation for type TwitchRecordedStream_ended_atMember1
    */
    private ?TwitchRecordedStream_ended_atMember1 $twitchRecordedStream_ended_atMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchRecordedStream_ended_at
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchRecordedStream_ended_at {
        $result = new TwitchRecordedStream_ended_at();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTwitchRecordedStreamEndedAtMember1(new TwitchRecordedStream_ended_atMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTwitchRecordedStreamEndedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTwitchRecordedStreamEndedAtMember1());
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
     * Gets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type TwitchRecordedStream_ended_atMember1
     * @return TwitchRecordedStream_ended_atMember1|null
    */
    public function getTwitchRecordedStreamEndedAtMember1(): ?TwitchRecordedStream_ended_atMember1 {
        return $this->twitchRecordedStream_ended_atMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTwitchRecordedStreamEndedAtMember1());
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
     * Sets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type TwitchRecordedStream_ended_atMember1
     * @param TwitchRecordedStream_ended_atMember1|null $value Value to set for the TwitchRecordedStream_ended_atMember1 property.
    */
    public function setTwitchRecordedStreamEndedAtMember1(?TwitchRecordedStream_ended_atMember1 $value): void {
        $this->twitchRecordedStream_ended_atMember1 = $value;
    }

}

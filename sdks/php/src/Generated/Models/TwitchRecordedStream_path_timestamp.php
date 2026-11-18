<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, TwitchRecordedStream_path_timestampMember1
*/
class TwitchRecordedStream_path_timestamp implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var TwitchRecordedStream_path_timestampMember1|null $twitchRecordedStream_path_timestampMember1 Composed type representation for type TwitchRecordedStream_path_timestampMember1
    */
    private ?TwitchRecordedStream_path_timestampMember1 $twitchRecordedStream_path_timestampMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchRecordedStream_path_timestamp
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchRecordedStream_path_timestamp {
        $result = new TwitchRecordedStream_path_timestamp();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setTwitchRecordedStreamPathTimestampMember1(new TwitchRecordedStream_path_timestampMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTwitchRecordedStreamPathTimestampMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTwitchRecordedStreamPathTimestampMember1());
        }
        return [];
    }

    /**
     * Gets the integer property value. Composed type representation for type int
     * @return int|null
    */
    public function getInteger(): ?int {
        return $this->integer;
    }

    /**
     * Gets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type TwitchRecordedStream_path_timestampMember1
     * @return TwitchRecordedStream_path_timestampMember1|null
    */
    public function getTwitchRecordedStreamPathTimestampMember1(): ?TwitchRecordedStream_path_timestampMember1 {
        return $this->twitchRecordedStream_path_timestampMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getTwitchRecordedStreamPathTimestampMember1());
        }
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

    /**
     * Sets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type TwitchRecordedStream_path_timestampMember1
     * @param TwitchRecordedStream_path_timestampMember1|null $value Value to set for the TwitchRecordedStream_path_timestampMember1 property.
    */
    public function setTwitchRecordedStreamPathTimestampMember1(?TwitchRecordedStream_path_timestampMember1 $value): void {
        $this->twitchRecordedStream_path_timestampMember1 = $value;
    }

}

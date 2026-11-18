<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TwitchRecordedStream_hostMember1
*/
class TwitchRecordedStream_host implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TwitchRecordedStream_hostMember1|null $twitchRecordedStream_hostMember1 Composed type representation for type TwitchRecordedStream_hostMember1
    */
    private ?TwitchRecordedStream_hostMember1 $twitchRecordedStream_hostMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchRecordedStream_host
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchRecordedStream_host {
        $result = new TwitchRecordedStream_host();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTwitchRecordedStreamHostMember1(new TwitchRecordedStream_hostMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTwitchRecordedStreamHostMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTwitchRecordedStreamHostMember1());
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
     * Gets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type TwitchRecordedStream_hostMember1
     * @return TwitchRecordedStream_hostMember1|null
    */
    public function getTwitchRecordedStreamHostMember1(): ?TwitchRecordedStream_hostMember1 {
        return $this->twitchRecordedStream_hostMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTwitchRecordedStreamHostMember1());
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
     * Sets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type TwitchRecordedStream_hostMember1
     * @param TwitchRecordedStream_hostMember1|null $value Value to set for the TwitchRecordedStream_hostMember1 property.
    */
    public function setTwitchRecordedStreamHostMember1(?TwitchRecordedStream_hostMember1 $value): void {
        $this->twitchRecordedStream_hostMember1 = $value;
    }

}

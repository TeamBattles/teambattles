<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TwitchChannelBadges_broadcaster_nameMember1
*/
class TwitchChannelBadges_broadcaster_name implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TwitchChannelBadges_broadcaster_nameMember1|null $twitchChannelBadges_broadcaster_nameMember1 Composed type representation for type TwitchChannelBadges_broadcaster_nameMember1
    */
    private ?TwitchChannelBadges_broadcaster_nameMember1 $twitchChannelBadges_broadcaster_nameMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchChannelBadges_broadcaster_name
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchChannelBadges_broadcaster_name {
        $result = new TwitchChannelBadges_broadcaster_name();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTwitchChannelBadgesBroadcasterNameMember1(new TwitchChannelBadges_broadcaster_nameMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTwitchChannelBadgesBroadcasterNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTwitchChannelBadgesBroadcasterNameMember1());
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
     * Gets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type TwitchChannelBadges_broadcaster_nameMember1
     * @return TwitchChannelBadges_broadcaster_nameMember1|null
    */
    public function getTwitchChannelBadgesBroadcasterNameMember1(): ?TwitchChannelBadges_broadcaster_nameMember1 {
        return $this->twitchChannelBadges_broadcaster_nameMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTwitchChannelBadgesBroadcasterNameMember1());
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
     * Sets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type TwitchChannelBadges_broadcaster_nameMember1
     * @param TwitchChannelBadges_broadcaster_nameMember1|null $value Value to set for the TwitchChannelBadges_broadcaster_nameMember1 property.
    */
    public function setTwitchChannelBadgesBroadcasterNameMember1(?TwitchChannelBadges_broadcaster_nameMember1 $value): void {
        $this->twitchChannelBadges_broadcaster_nameMember1 = $value;
    }

}

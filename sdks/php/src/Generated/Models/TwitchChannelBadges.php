<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Channel-specific Twitch chat badges.
*/
class TwitchChannelBadges implements Parsable 
{
    /**
     * @var array<TwitchBadgeSet>|null $badges Channel-specific Twitch chat badge sets.
    */
    private ?array $badges = null;
    
    /**
     * @var TwitchChannelBadges_broadcaster_id|null $broadcaster_id Resolved broadcaster (channel) id.
    */
    private ?TwitchChannelBadges_broadcaster_id $broadcaster_id = null;
    
    /**
     * @var TwitchChannelBadges_broadcaster_name|null $broadcaster_name Resolved broadcaster display name or login.
    */
    private ?TwitchChannelBadges_broadcaster_name $broadcaster_name = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchChannelBadges
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchChannelBadges {
        return new TwitchChannelBadges();
    }

    /**
     * Gets the badges property value. Channel-specific Twitch chat badge sets.
     * @return array<TwitchBadgeSet>|null
    */
    public function getBadges(): ?array {
        return $this->badges;
    }

    /**
     * Gets the broadcaster_id property value. Resolved broadcaster (channel) id.
     * @return TwitchChannelBadges_broadcaster_id|null
    */
    public function getBroadcasterId(): ?TwitchChannelBadges_broadcaster_id {
        return $this->broadcaster_id;
    }

    /**
     * Gets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @return TwitchChannelBadges_broadcaster_name|null
    */
    public function getBroadcasterName(): ?TwitchChannelBadges_broadcaster_name {
        return $this->broadcaster_name;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'badges' => fn(ParseNode $n) => $o->setBadges($n->getCollectionOfObjectValues([TwitchBadgeSet::class, 'createFromDiscriminatorValue'])),
            'broadcaster_id' => fn(ParseNode $n) => $o->setBroadcasterId($n->getObjectValue([TwitchChannelBadges_broadcaster_id::class, 'createFromDiscriminatorValue'])),
            'broadcaster_name' => fn(ParseNode $n) => $o->setBroadcasterName($n->getObjectValue([TwitchChannelBadges_broadcaster_name::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('badges', $this->getBadges());
        $writer->writeObjectValue('broadcaster_id', $this->getBroadcasterId());
        $writer->writeObjectValue('broadcaster_name', $this->getBroadcasterName());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the badges property value. Channel-specific Twitch chat badge sets.
     * @param array<TwitchBadgeSet>|null $value Value to set for the badges property.
    */
    public function setBadges(?array $value): void {
        $this->badges = $value;
    }

    /**
     * Sets the broadcaster_id property value. Resolved broadcaster (channel) id.
     * @param TwitchChannelBadges_broadcaster_id|null $value Value to set for the broadcaster_id property.
    */
    public function setBroadcasterId(?TwitchChannelBadges_broadcaster_id $value): void {
        $this->broadcaster_id = $value;
    }

    /**
     * Sets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @param TwitchChannelBadges_broadcaster_name|null $value Value to set for the broadcaster_name property.
    */
    public function setBroadcasterName(?TwitchChannelBadges_broadcaster_name $value): void {
        $this->broadcaster_name = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

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
     * @var string|null $broadcaster_id Resolved broadcaster (channel) id.
    */
    private ?string $broadcaster_id = null;
    
    /**
     * @var string|null $broadcaster_name Resolved broadcaster display name or login.
    */
    private ?string $broadcaster_name = null;
    
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
     * @return string|null
    */
    public function getBroadcasterId(): ?string {
        return $this->broadcaster_id;
    }

    /**
     * Gets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @return string|null
    */
    public function getBroadcasterName(): ?string {
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
            'broadcaster_id' => fn(ParseNode $n) => $o->setBroadcasterId($n->getStringValue()),
            'broadcaster_name' => fn(ParseNode $n) => $o->setBroadcasterName($n->getStringValue()),
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
        $writer->writeStringValue('broadcaster_id', $this->getBroadcasterId());
        $writer->writeStringValue('broadcaster_name', $this->getBroadcasterName());
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
     * @param string|null $value Value to set for the broadcaster_id property.
    */
    public function setBroadcasterId(?string $value): void {
        $this->broadcaster_id = $value;
    }

    /**
     * Sets the broadcaster_name property value. Resolved broadcaster display name or login.
     * @param string|null $value Value to set for the broadcaster_name property.
    */
    public function setBroadcasterName(?string $value): void {
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

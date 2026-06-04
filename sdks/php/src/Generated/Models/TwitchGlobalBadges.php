<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Global Twitch chat badges.
*/
class TwitchGlobalBadges implements Parsable 
{
    /**
     * @var array<TwitchBadgeSet>|null $badges Global Twitch chat badge sets.
    */
    private ?array $badges = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchGlobalBadges
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchGlobalBadges {
        return new TwitchGlobalBadges();
    }

    /**
     * Gets the badges property value. Global Twitch chat badge sets.
     * @return array<TwitchBadgeSet>|null
    */
    public function getBadges(): ?array {
        return $this->badges;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'badges' => fn(ParseNode $n) => $o->setBadges($n->getCollectionOfObjectValues([TwitchBadgeSet::class, 'createFromDiscriminatorValue'])),
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
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the badges property value. Global Twitch chat badge sets.
     * @param array<TwitchBadgeSet>|null $value Value to set for the badges property.
    */
    public function setBadges(?array $value): void {
        $this->badges = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

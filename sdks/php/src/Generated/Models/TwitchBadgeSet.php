<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A set of related Twitch chat badge versions.
*/
class TwitchBadgeSet implements Parsable 
{
    /**
     * @var string|null $set_id Badge set identifier (e.g. subscriber, moderator).
    */
    private ?string $set_id = null;
    
    /**
     * @var array<TwitchBadgeVersion>|null $versions Available versions within this badge set.
    */
    private ?array $versions = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchBadgeSet
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchBadgeSet {
        return new TwitchBadgeSet();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'set_id' => fn(ParseNode $n) => $o->setSetId($n->getStringValue()),
            'versions' => fn(ParseNode $n) => $o->setVersions($n->getCollectionOfObjectValues([TwitchBadgeVersion::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
     * @return string|null
    */
    public function getSetId(): ?string {
        return $this->set_id;
    }

    /**
     * Gets the versions property value. Available versions within this badge set.
     * @return array<TwitchBadgeVersion>|null
    */
    public function getVersions(): ?array {
        return $this->versions;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('set_id', $this->getSetId());
        $writer->writeCollectionOfObjectValues('versions', $this->getVersions());
    }

    /**
     * Sets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
     * @param string|null $value Value to set for the set_id property.
    */
    public function setSetId(?string $value): void {
        $this->set_id = $value;
    }

    /**
     * Sets the versions property value. Available versions within this badge set.
     * @param array<TwitchBadgeVersion>|null $value Value to set for the versions property.
    */
    public function setVersions(?array $value): void {
        $this->versions = $value;
    }

}

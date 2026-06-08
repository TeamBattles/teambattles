<?php

namespace TeamBattles\Sdk\Generated\Teams\Item;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiTeamProfile;

/**
 * Envelope containing team plus a response timestamp.
*/
class WithIdentifierGetResponse implements Parsable 
{
    /**
     * @var ApiTeamProfile|null $team API-safe team profile.
    */
    private ?ApiTeamProfile $team = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WithIdentifierGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WithIdentifierGetResponse {
        return new WithIdentifierGetResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'team' => fn(ParseNode $n) => $o->setTeam($n->getObjectValue([ApiTeamProfile::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the team property value. API-safe team profile.
     * @return ApiTeamProfile|null
    */
    public function getTeam(): ?ApiTeamProfile {
        return $this->team;
    }

    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
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
        $writer->writeObjectValue('team', $this->getTeam());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the team property value. API-safe team profile.
     * @param ApiTeamProfile|null $value Value to set for the team property.
    */
    public function setTeam(?ApiTeamProfile $value): void {
        $this->team = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

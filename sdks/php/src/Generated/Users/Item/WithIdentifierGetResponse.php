<?php

namespace TeamBattles\Sdk\Generated\Users\Item;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiUserProfile;

/**
 * Envelope containing user plus a response timestamp.
*/
class WithIdentifierGetResponse implements Parsable 
{
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * @var ApiUserProfile|null $user API-safe public user profile.
    */
    private ?ApiUserProfile $user = null;
    
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
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'user' => fn(ParseNode $n) => $o->setUser($n->getObjectValue([ApiUserProfile::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the timestamp property value. ISO 8601 timestamp.
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the user property value. API-safe public user profile.
     * @return ApiUserProfile|null
    */
    public function getUser(): ?ApiUserProfile {
        return $this->user;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeObjectValue('user', $this->getUser());
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the user property value. API-safe public user profile.
     * @param ApiUserProfile|null $value Value to set for the user property.
    */
    public function setUser(?ApiUserProfile $value): void {
        $this->user = $value;
    }

}

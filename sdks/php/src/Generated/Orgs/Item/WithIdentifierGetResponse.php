<?php

namespace TeamBattles\Sdk\Generated\Orgs\Item;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiOrganizationProfile;

/**
 * Envelope containing organization plus a response timestamp.
*/
class WithIdentifierGetResponse implements Parsable 
{
    /**
     * @var ApiOrganizationProfile|null $organization API-safe organization profile.
    */
    private ?ApiOrganizationProfile $organization = null;
    
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
            'organization' => fn(ParseNode $n) => $o->setOrganization($n->getObjectValue([ApiOrganizationProfile::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the organization property value. API-safe organization profile.
     * @return ApiOrganizationProfile|null
    */
    public function getOrganization(): ?ApiOrganizationProfile {
        return $this->organization;
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
        $writer->writeObjectValue('organization', $this->getOrganization());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the organization property value. API-safe organization profile.
     * @param ApiOrganizationProfile|null $value Value to set for the organization property.
    */
    public function setOrganization(?ApiOrganizationProfile $value): void {
        $this->organization = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Users\Item\Organizations;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use TeamBattles\Sdk\Generated\Models\ApiUserOrganizationMembership;

/**
 * Envelope containing organizations, count, and a response timestamp.
*/
class OrganizationsGetResponse implements Parsable 
{
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var array<ApiUserOrganizationMembership>|null $organizations The organizations property
    */
    private ?array $organizations = null;
    
    /**
     * @var string|null $timestamp ISO 8601 timestamp.
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return OrganizationsGetResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationsGetResponse {
        return new OrganizationsGetResponse();
    }

    /**
     * Gets the count property value. The count property
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'organizations' => fn(ParseNode $n) => $o->setOrganizations($n->getCollectionOfObjectValues([ApiUserOrganizationMembership::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the organizations property value. The organizations property
     * @return array<ApiUserOrganizationMembership>|null
    */
    public function getOrganizations(): ?array {
        return $this->organizations;
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('organizations', $this->getOrganizations());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the organizations property value. The organizations property
     * @param array<ApiUserOrganizationMembership>|null $value Value to set for the organizations property.
    */
    public function setOrganizations(?array $value): void {
        $this->organizations = $value;
    }

    /**
     * Sets the timestamp property value. ISO 8601 timestamp.
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

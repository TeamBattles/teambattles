<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * List of the caller's webhook endpoints.
*/
class WebhookListResponse implements Parsable 
{
    /**
     * @var int|null $count The count property
    */
    private ?int $count = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * @var array<WebhookEndpoint>|null $webhooks The webhooks property
    */
    private ?array $webhooks = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookListResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookListResponse {
        return new WebhookListResponse();
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
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'webhooks' => fn(ParseNode $n) => $o->setWebhooks($n->getCollectionOfObjectValues([WebhookEndpoint::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the webhooks property value. The webhooks property
     * @return array<WebhookEndpoint>|null
    */
    public function getWebhooks(): ?array {
        return $this->webhooks;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeCollectionOfObjectValues('webhooks', $this->getWebhooks());
    }

    /**
     * Sets the count property value. The count property
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the webhooks property value. The webhooks property
     * @param array<WebhookEndpoint>|null $value Value to set for the webhooks property.
    */
    public function setWebhooks(?array $value): void {
        $this->webhooks = $value;
    }

}

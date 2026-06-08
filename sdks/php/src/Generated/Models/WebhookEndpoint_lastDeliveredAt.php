<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes float, WebhookEndpoint_lastDeliveredAtMember1
*/
class WebhookEndpoint_lastDeliveredAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var float|null $double Composed type representation for type float
    */
    private ?float $double = null;
    
    /**
     * @var WebhookEndpoint_lastDeliveredAtMember1|null $webhookEndpoint_lastDeliveredAtMember1 Composed type representation for type WebhookEndpoint_lastDeliveredAtMember1
    */
    private ?WebhookEndpoint_lastDeliveredAtMember1 $webhookEndpoint_lastDeliveredAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookEndpoint_lastDeliveredAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookEndpoint_lastDeliveredAt {
        $result = new WebhookEndpoint_lastDeliveredAt();
        if ($parseNode->getFloatValue() !== null) {
            $result->setDouble($parseNode->getFloatValue());
        } else {
            $result->setWebhookEndpointLastDeliveredAtMember1(new WebhookEndpoint_lastDeliveredAtMember1());
        }
        return $result;
    }

    /**
     * Gets the double property value. Composed type representation for type float
     * @return float|null
    */
    public function getDouble(): ?float {
        return $this->double;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getWebhookEndpointLastDeliveredAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookEndpointLastDeliveredAtMember1());
        }
        return [];
    }

    /**
     * Gets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type WebhookEndpoint_lastDeliveredAtMember1
     * @return WebhookEndpoint_lastDeliveredAtMember1|null
    */
    public function getWebhookEndpointLastDeliveredAtMember1(): ?WebhookEndpoint_lastDeliveredAtMember1 {
        return $this->webhookEndpoint_lastDeliveredAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getDouble() !== null) {
            $writer->writeFloatValue(null, $this->getDouble());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookEndpointLastDeliveredAtMember1());
        }
    }

    /**
     * Sets the double property value. Composed type representation for type float
     * @param float|null $value Value to set for the double property.
    */
    public function setDouble(?float $value): void {
        $this->double = $value;
    }

    /**
     * Sets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type WebhookEndpoint_lastDeliveredAtMember1
     * @param WebhookEndpoint_lastDeliveredAtMember1|null $value Value to set for the WebhookEndpoint_lastDeliveredAtMember1 property.
    */
    public function setWebhookEndpointLastDeliveredAtMember1(?WebhookEndpoint_lastDeliveredAtMember1 $value): void {
        $this->webhookEndpoint_lastDeliveredAtMember1 = $value;
    }

}

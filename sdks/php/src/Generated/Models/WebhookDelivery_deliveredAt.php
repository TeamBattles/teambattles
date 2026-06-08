<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes float, WebhookDelivery_deliveredAtMember1
*/
class WebhookDelivery_deliveredAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var float|null $double Composed type representation for type float
    */
    private ?float $double = null;
    
    /**
     * @var WebhookDelivery_deliveredAtMember1|null $webhookDelivery_deliveredAtMember1 Composed type representation for type WebhookDelivery_deliveredAtMember1
    */
    private ?WebhookDelivery_deliveredAtMember1 $webhookDelivery_deliveredAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookDelivery_deliveredAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookDelivery_deliveredAt {
        $result = new WebhookDelivery_deliveredAt();
        if ($parseNode->getFloatValue() !== null) {
            $result->setDouble($parseNode->getFloatValue());
        } else {
            $result->setWebhookDeliveryDeliveredAtMember1(new WebhookDelivery_deliveredAtMember1());
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
        if ($this->getWebhookDeliveryDeliveredAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookDeliveryDeliveredAtMember1());
        }
        return [];
    }

    /**
     * Gets the WebhookDelivery_deliveredAtMember1 property value. Composed type representation for type WebhookDelivery_deliveredAtMember1
     * @return WebhookDelivery_deliveredAtMember1|null
    */
    public function getWebhookDeliveryDeliveredAtMember1(): ?WebhookDelivery_deliveredAtMember1 {
        return $this->webhookDelivery_deliveredAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getDouble() !== null) {
            $writer->writeFloatValue(null, $this->getDouble());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookDeliveryDeliveredAtMember1());
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
     * Sets the WebhookDelivery_deliveredAtMember1 property value. Composed type representation for type WebhookDelivery_deliveredAtMember1
     * @param WebhookDelivery_deliveredAtMember1|null $value Value to set for the WebhookDelivery_deliveredAtMember1 property.
    */
    public function setWebhookDeliveryDeliveredAtMember1(?WebhookDelivery_deliveredAtMember1 $value): void {
        $this->webhookDelivery_deliveredAtMember1 = $value;
    }

}

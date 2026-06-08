<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes float, WebhookDelivery_nextAttemptAtMember1
*/
class WebhookDelivery_nextAttemptAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var float|null $double Composed type representation for type float
    */
    private ?float $double = null;
    
    /**
     * @var WebhookDelivery_nextAttemptAtMember1|null $webhookDelivery_nextAttemptAtMember1 Composed type representation for type WebhookDelivery_nextAttemptAtMember1
    */
    private ?WebhookDelivery_nextAttemptAtMember1 $webhookDelivery_nextAttemptAtMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookDelivery_nextAttemptAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookDelivery_nextAttemptAt {
        $result = new WebhookDelivery_nextAttemptAt();
        if ($parseNode->getFloatValue() !== null) {
            $result->setDouble($parseNode->getFloatValue());
        } else {
            $result->setWebhookDeliveryNextAttemptAtMember1(new WebhookDelivery_nextAttemptAtMember1());
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
        if ($this->getWebhookDeliveryNextAttemptAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookDeliveryNextAttemptAtMember1());
        }
        return [];
    }

    /**
     * Gets the WebhookDelivery_nextAttemptAtMember1 property value. Composed type representation for type WebhookDelivery_nextAttemptAtMember1
     * @return WebhookDelivery_nextAttemptAtMember1|null
    */
    public function getWebhookDeliveryNextAttemptAtMember1(): ?WebhookDelivery_nextAttemptAtMember1 {
        return $this->webhookDelivery_nextAttemptAtMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getDouble() !== null) {
            $writer->writeFloatValue(null, $this->getDouble());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookDeliveryNextAttemptAtMember1());
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
     * Sets the WebhookDelivery_nextAttemptAtMember1 property value. Composed type representation for type WebhookDelivery_nextAttemptAtMember1
     * @param WebhookDelivery_nextAttemptAtMember1|null $value Value to set for the WebhookDelivery_nextAttemptAtMember1 property.
    */
    public function setWebhookDeliveryNextAttemptAtMember1(?WebhookDelivery_nextAttemptAtMember1 $value): void {
        $this->webhookDelivery_nextAttemptAtMember1 = $value;
    }

}

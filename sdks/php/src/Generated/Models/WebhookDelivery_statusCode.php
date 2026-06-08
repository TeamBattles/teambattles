<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes int, WebhookDelivery_statusCodeMember1
*/
class WebhookDelivery_statusCode implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var int|null $integer Composed type representation for type int
    */
    private ?int $integer = null;
    
    /**
     * @var WebhookDelivery_statusCodeMember1|null $webhookDelivery_statusCodeMember1 Composed type representation for type WebhookDelivery_statusCodeMember1
    */
    private ?WebhookDelivery_statusCodeMember1 $webhookDelivery_statusCodeMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookDelivery_statusCode
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookDelivery_statusCode {
        $result = new WebhookDelivery_statusCode();
        if ($parseNode->getIntegerValue() !== null) {
            $result->setInteger($parseNode->getIntegerValue());
        } else {
            $result->setWebhookDeliveryStatusCodeMember1(new WebhookDelivery_statusCodeMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getWebhookDeliveryStatusCodeMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookDeliveryStatusCodeMember1());
        }
        return [];
    }

    /**
     * Gets the integer property value. Composed type representation for type int
     * @return int|null
    */
    public function getInteger(): ?int {
        return $this->integer;
    }

    /**
     * Gets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type WebhookDelivery_statusCodeMember1
     * @return WebhookDelivery_statusCodeMember1|null
    */
    public function getWebhookDeliveryStatusCodeMember1(): ?WebhookDelivery_statusCodeMember1 {
        return $this->webhookDelivery_statusCodeMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getInteger() !== null) {
            $writer->writeIntegerValue(null, $this->getInteger());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookDeliveryStatusCodeMember1());
        }
    }

    /**
     * Sets the integer property value. Composed type representation for type int
     * @param int|null $value Value to set for the integer property.
    */
    public function setInteger(?int $value): void {
        $this->integer = $value;
    }

    /**
     * Sets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type WebhookDelivery_statusCodeMember1
     * @param WebhookDelivery_statusCodeMember1|null $value Value to set for the WebhookDelivery_statusCodeMember1 property.
    */
    public function setWebhookDeliveryStatusCodeMember1(?WebhookDelivery_statusCodeMember1 $value): void {
        $this->webhookDelivery_statusCodeMember1 = $value;
    }

}

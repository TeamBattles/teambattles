<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, WebhookDelivery_errorMessageMember1
*/
class WebhookDelivery_errorMessage implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var WebhookDelivery_errorMessageMember1|null $webhookDelivery_errorMessageMember1 Composed type representation for type WebhookDelivery_errorMessageMember1
    */
    private ?WebhookDelivery_errorMessageMember1 $webhookDelivery_errorMessageMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookDelivery_errorMessage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookDelivery_errorMessage {
        $result = new WebhookDelivery_errorMessage();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setWebhookDeliveryErrorMessageMember1(new WebhookDelivery_errorMessageMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getWebhookDeliveryErrorMessageMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookDeliveryErrorMessageMember1());
        }
        return [];
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Gets the WebhookDelivery_errorMessageMember1 property value. Composed type representation for type WebhookDelivery_errorMessageMember1
     * @return WebhookDelivery_errorMessageMember1|null
    */
    public function getWebhookDeliveryErrorMessageMember1(): ?WebhookDelivery_errorMessageMember1 {
        return $this->webhookDelivery_errorMessageMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookDeliveryErrorMessageMember1());
        }
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

    /**
     * Sets the WebhookDelivery_errorMessageMember1 property value. Composed type representation for type WebhookDelivery_errorMessageMember1
     * @param WebhookDelivery_errorMessageMember1|null $value Value to set for the WebhookDelivery_errorMessageMember1 property.
    */
    public function setWebhookDeliveryErrorMessageMember1(?WebhookDelivery_errorMessageMember1 $value): void {
        $this->webhookDelivery_errorMessageMember1 = $value;
    }

}

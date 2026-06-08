<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, WebhookEndpoint_labelMember1
*/
class WebhookEndpoint_label implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var WebhookEndpoint_labelMember1|null $webhookEndpoint_labelMember1 Composed type representation for type WebhookEndpoint_labelMember1
    */
    private ?WebhookEndpoint_labelMember1 $webhookEndpoint_labelMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookEndpoint_label
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookEndpoint_label {
        $result = new WebhookEndpoint_label();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setWebhookEndpointLabelMember1(new WebhookEndpoint_labelMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getWebhookEndpointLabelMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getWebhookEndpointLabelMember1());
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
     * Gets the WebhookEndpoint_labelMember1 property value. Composed type representation for type WebhookEndpoint_labelMember1
     * @return WebhookEndpoint_labelMember1|null
    */
    public function getWebhookEndpointLabelMember1(): ?WebhookEndpoint_labelMember1 {
        return $this->webhookEndpoint_labelMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getWebhookEndpointLabelMember1());
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
     * Sets the WebhookEndpoint_labelMember1 property value. Composed type representation for type WebhookEndpoint_labelMember1
     * @param WebhookEndpoint_labelMember1|null $value Value to set for the WebhookEndpoint_labelMember1 property.
    */
    public function setWebhookEndpointLabelMember1(?WebhookEndpoint_labelMember1 $value): void {
        $this->webhookEndpoint_labelMember1 = $value;
    }

}

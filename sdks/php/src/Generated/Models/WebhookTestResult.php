<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Outcome of a single test.ping delivery.
*/
class WebhookTestResult implements Parsable 
{
    /**
     * @var bool|null $delivered Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
    */
    private ?bool $delivered = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookTestResult
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookTestResult {
        return new WebhookTestResult();
    }

    /**
     * Gets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     * @return bool|null
    */
    public function getDelivered(): ?bool {
        return $this->delivered;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'delivered' => fn(ParseNode $n) => $o->setDelivered($n->getBooleanValue()),
        ];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('delivered', $this->getDelivered());
    }

    /**
     * Sets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     * @param bool|null $value Value to set for the delivered property.
    */
    public function setDelivered(?bool $value): void {
        $this->delivered = $value;
    }

}

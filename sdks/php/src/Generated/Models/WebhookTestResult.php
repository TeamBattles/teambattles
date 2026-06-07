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
     * @var bool|null $delivered Whether the test.ping returned a 2xx.
    */
    private ?bool $delivered = null;

    /**
     * @var string|null $error Failure reason, if not delivered.
    */
    private ?string $error = null;

    /**
     * @var int|null $statusCode HTTP response status, if any.
    */
    private ?int $statusCode = null;

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookTestResult
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookTestResult {
        return new WebhookTestResult();
    }

    /**
     * Gets the delivered property value. Whether the test.ping returned a 2xx.
     * @return bool|null
    */
    public function getDelivered(): ?bool {
        return $this->delivered;
    }

    /**
     * Gets the error property value. Failure reason, if not delivered.
     * @return string|null
    */
    public function getError(): ?string {
        return $this->error;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'delivered' => fn(ParseNode $n) => $o->setDelivered($n->getBooleanValue()),
            'error' => fn(ParseNode $n) => $o->setError($n->getStringValue()),
            'statusCode' => fn(ParseNode $n) => $o->setStatusCode($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the statusCode property value. HTTP response status, if any.
     * @return int|null
    */
    public function getStatusCode(): ?int {
        return $this->statusCode;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('delivered', $this->getDelivered());
        $writer->writeStringValue('error', $this->getError());
        $writer->writeIntegerValue('statusCode', $this->getStatusCode());
    }

    /**
     * Sets the delivered property value. Whether the test.ping returned a 2xx.
     * @param bool|null $value Value to set for the delivered property.
    */
    public function setDelivered(?bool $value): void {
        $this->delivered = $value;
    }

    /**
     * Sets the error property value. Failure reason, if not delivered.
     * @param string|null $value Value to set for the error property.
    */
    public function setError(?string $value): void {
        $this->error = $value;
    }

    /**
     * Sets the statusCode property value. HTTP response status, if any.
     * @param int|null $value Value to set for the statusCode property.
    */
    public function setStatusCode(?int $value): void {
        $this->statusCode = $value;
    }

}

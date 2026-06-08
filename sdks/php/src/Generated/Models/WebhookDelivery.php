<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A single webhook delivery-log row.
*/
class WebhookDelivery implements Parsable 
{
    /**
     * @var int|null $attemptCount Number of delivery attempts made.
    */
    private ?int $attemptCount = null;
    
    /**
     * @var float|null $createdAt Emit/creation epoch ms (retention key).
    */
    private ?float $createdAt = null;
    
    /**
     * @var WebhookDelivery_deliveredAt|null $deliveredAt Epoch ms of successful delivery, or null.
    */
    private ?WebhookDelivery_deliveredAt $deliveredAt = null;
    
    /**
     * @var WebhookDelivery_errorMessage|null $errorMessage Last error message, or null.
    */
    private ?WebhookDelivery_errorMessage $errorMessage = null;
    
    /**
     * @var string|null $event The delivered event name.
    */
    private ?string $event = null;
    
    /**
     * @var string|null $id Delivery-log row id.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $idempotencyId Stable evt_ id, reused across retries (idempotency key).
    */
    private ?string $idempotencyId = null;
    
    /**
     * @var bool|null $isTest True for test.ping deliveries.
    */
    private ?bool $isTest = null;
    
    /**
     * @var WebhookDelivery_nextAttemptAt|null $nextAttemptAt Epoch ms of the next scheduled retry, or null.
    */
    private ?WebhookDelivery_nextAttemptAt $nextAttemptAt = null;
    
    /**
     * @var WebhookDelivery_status|null $status Lifecycle status of one logical delivery (endpoint x idempotency id).
    */
    private ?WebhookDelivery_status $status = null;
    
    /**
     * @var WebhookDelivery_statusCode|null $statusCode Last HTTP response status, or null.
    */
    private ?WebhookDelivery_statusCode $statusCode = null;
    
    /**
     * @var float|null $updatedAt Last update epoch ms.
    */
    private ?float $updatedAt = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookDelivery
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookDelivery {
        return new WebhookDelivery();
    }

    /**
     * Gets the attemptCount property value. Number of delivery attempts made.
     * @return int|null
    */
    public function getAttemptCount(): ?int {
        return $this->attemptCount;
    }

    /**
     * Gets the createdAt property value. Emit/creation epoch ms (retention key).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * Gets the deliveredAt property value. Epoch ms of successful delivery, or null.
     * @return WebhookDelivery_deliveredAt|null
    */
    public function getDeliveredAt(): ?WebhookDelivery_deliveredAt {
        return $this->deliveredAt;
    }

    /**
     * Gets the errorMessage property value. Last error message, or null.
     * @return WebhookDelivery_errorMessage|null
    */
    public function getErrorMessage(): ?WebhookDelivery_errorMessage {
        return $this->errorMessage;
    }

    /**
     * Gets the event property value. The delivered event name.
     * @return string|null
    */
    public function getEvent(): ?string {
        return $this->event;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'attemptCount' => fn(ParseNode $n) => $o->setAttemptCount($n->getIntegerValue()),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'deliveredAt' => fn(ParseNode $n) => $o->setDeliveredAt($n->getObjectValue([WebhookDelivery_deliveredAt::class, 'createFromDiscriminatorValue'])),
            'errorMessage' => fn(ParseNode $n) => $o->setErrorMessage($n->getObjectValue([WebhookDelivery_errorMessage::class, 'createFromDiscriminatorValue'])),
            'event' => fn(ParseNode $n) => $o->setEvent($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'idempotencyId' => fn(ParseNode $n) => $o->setIdempotencyId($n->getStringValue()),
            'isTest' => fn(ParseNode $n) => $o->setIsTest($n->getBooleanValue()),
            'nextAttemptAt' => fn(ParseNode $n) => $o->setNextAttemptAt($n->getObjectValue([WebhookDelivery_nextAttemptAt::class, 'createFromDiscriminatorValue'])),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(WebhookDelivery_status::class)),
            'statusCode' => fn(ParseNode $n) => $o->setStatusCode($n->getObjectValue([WebhookDelivery_statusCode::class, 'createFromDiscriminatorValue'])),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getFloatValue()),
        ];
    }

    /**
     * Gets the id property value. Delivery-log row id.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
     * @return string|null
    */
    public function getIdempotencyId(): ?string {
        return $this->idempotencyId;
    }

    /**
     * Gets the isTest property value. True for test.ping deliveries.
     * @return bool|null
    */
    public function getIsTest(): ?bool {
        return $this->isTest;
    }

    /**
     * Gets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
     * @return WebhookDelivery_nextAttemptAt|null
    */
    public function getNextAttemptAt(): ?WebhookDelivery_nextAttemptAt {
        return $this->nextAttemptAt;
    }

    /**
     * Gets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
     * @return WebhookDelivery_status|null
    */
    public function getStatus(): ?WebhookDelivery_status {
        return $this->status;
    }

    /**
     * Gets the statusCode property value. Last HTTP response status, or null.
     * @return WebhookDelivery_statusCode|null
    */
    public function getStatusCode(): ?WebhookDelivery_statusCode {
        return $this->statusCode;
    }

    /**
     * Gets the updatedAt property value. Last update epoch ms.
     * @return float|null
    */
    public function getUpdatedAt(): ?float {
        return $this->updatedAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('attemptCount', $this->getAttemptCount());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeObjectValue('deliveredAt', $this->getDeliveredAt());
        $writer->writeObjectValue('errorMessage', $this->getErrorMessage());
        $writer->writeStringValue('event', $this->getEvent());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('idempotencyId', $this->getIdempotencyId());
        $writer->writeBooleanValue('isTest', $this->getIsTest());
        $writer->writeObjectValue('nextAttemptAt', $this->getNextAttemptAt());
        $writer->writeEnumValue('status', $this->getStatus());
        $writer->writeObjectValue('statusCode', $this->getStatusCode());
        $writer->writeFloatValue('updatedAt', $this->getUpdatedAt());
    }

    /**
     * Sets the attemptCount property value. Number of delivery attempts made.
     * @param int|null $value Value to set for the attemptCount property.
    */
    public function setAttemptCount(?int $value): void {
        $this->attemptCount = $value;
    }

    /**
     * Sets the createdAt property value. Emit/creation epoch ms (retention key).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the deliveredAt property value. Epoch ms of successful delivery, or null.
     * @param WebhookDelivery_deliveredAt|null $value Value to set for the deliveredAt property.
    */
    public function setDeliveredAt(?WebhookDelivery_deliveredAt $value): void {
        $this->deliveredAt = $value;
    }

    /**
     * Sets the errorMessage property value. Last error message, or null.
     * @param WebhookDelivery_errorMessage|null $value Value to set for the errorMessage property.
    */
    public function setErrorMessage(?WebhookDelivery_errorMessage $value): void {
        $this->errorMessage = $value;
    }

    /**
     * Sets the event property value. The delivered event name.
     * @param string|null $value Value to set for the event property.
    */
    public function setEvent(?string $value): void {
        $this->event = $value;
    }

    /**
     * Sets the id property value. Delivery-log row id.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
     * @param string|null $value Value to set for the idempotencyId property.
    */
    public function setIdempotencyId(?string $value): void {
        $this->idempotencyId = $value;
    }

    /**
     * Sets the isTest property value. True for test.ping deliveries.
     * @param bool|null $value Value to set for the isTest property.
    */
    public function setIsTest(?bool $value): void {
        $this->isTest = $value;
    }

    /**
     * Sets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
     * @param WebhookDelivery_nextAttemptAt|null $value Value to set for the nextAttemptAt property.
    */
    public function setNextAttemptAt(?WebhookDelivery_nextAttemptAt $value): void {
        $this->nextAttemptAt = $value;
    }

    /**
     * Sets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
     * @param WebhookDelivery_status|null $value Value to set for the status property.
    */
    public function setStatus(?WebhookDelivery_status $value): void {
        $this->status = $value;
    }

    /**
     * Sets the statusCode property value. Last HTTP response status, or null.
     * @param WebhookDelivery_statusCode|null $value Value to set for the statusCode property.
    */
    public function setStatusCode(?WebhookDelivery_statusCode $value): void {
        $this->statusCode = $value;
    }

    /**
     * Sets the updatedAt property value. Last update epoch ms.
     * @param float|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?float $value): void {
        $this->updatedAt = $value;
    }

}

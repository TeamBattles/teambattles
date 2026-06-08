<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * A webhook endpoint (no secret material).
*/
class WebhookEndpoint implements Parsable 
{
    /**
     * @var float|null $createdAt Creation epoch ms.
    */
    private ?float $createdAt = null;
    
    /**
     * @var array<string>|null $events Subscribed event tokens.
    */
    private ?array $events = null;
    
    /**
     * @var int|null $failureCount Consecutive dead-lettered deliveries (auto-disables at 50).
    */
    private ?int $failureCount = null;
    
    /**
     * @var string|null $id Webhook endpoint id.
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isActive Whether the endpoint receives deliveries.
    */
    private ?bool $isActive = null;
    
    /**
     * @var WebhookEndpoint_label|null $label Human label, or null.
    */
    private ?WebhookEndpoint_label $label = null;
    
    /**
     * @var WebhookEndpoint_lastDeliveredAt|null $lastDeliveredAt Epoch ms of the last successful delivery, or null.
    */
    private ?WebhookEndpoint_lastDeliveredAt $lastDeliveredAt = null;
    
    /**
     * @var WebhookEndpoint_lastFailedAt|null $lastFailedAt Epoch ms of the last failed delivery, or null.
    */
    private ?WebhookEndpoint_lastFailedAt $lastFailedAt = null;
    
    /**
     * @var string|null $scopeId Stringified bound scope id.
    */
    private ?string $scopeId = null;
    
    /**
     * @var WebhookEndpoint_scopeType|null $scopeType The single scope dimension an endpoint is bound to.
    */
    private ?WebhookEndpoint_scopeType $scopeType = null;
    
    /**
     * @var string|null $secretPrefix First 8 chars of the current signing secret (display only).
    */
    private ?string $secretPrefix = null;
    
    /**
     * @var float|null $updatedAt Last update epoch ms.
    */
    private ?float $updatedAt = null;
    
    /**
     * @var string|null $url Delivery URL.
    */
    private ?string $url = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookEndpoint
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookEndpoint {
        return new WebhookEndpoint();
    }

    /**
     * Gets the createdAt property value. Creation epoch ms.
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * Gets the events property value. Subscribed event tokens.
     * @return array<string>|null
    */
    public function getEvents(): ?array {
        return $this->events;
    }

    /**
     * Gets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
     * @return int|null
    */
    public function getFailureCount(): ?int {
        return $this->failureCount;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'events' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setEvents($val);
            },
            'failureCount' => fn(ParseNode $n) => $o->setFailureCount($n->getIntegerValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isActive' => fn(ParseNode $n) => $o->setIsActive($n->getBooleanValue()),
            'label' => fn(ParseNode $n) => $o->setLabel($n->getObjectValue([WebhookEndpoint_label::class, 'createFromDiscriminatorValue'])),
            'lastDeliveredAt' => fn(ParseNode $n) => $o->setLastDeliveredAt($n->getObjectValue([WebhookEndpoint_lastDeliveredAt::class, 'createFromDiscriminatorValue'])),
            'lastFailedAt' => fn(ParseNode $n) => $o->setLastFailedAt($n->getObjectValue([WebhookEndpoint_lastFailedAt::class, 'createFromDiscriminatorValue'])),
            'scopeId' => fn(ParseNode $n) => $o->setScopeId($n->getStringValue()),
            'scopeType' => fn(ParseNode $n) => $o->setScopeType($n->getEnumValue(WebhookEndpoint_scopeType::class)),
            'secretPrefix' => fn(ParseNode $n) => $o->setSecretPrefix($n->getStringValue()),
            'updatedAt' => fn(ParseNode $n) => $o->setUpdatedAt($n->getFloatValue()),
            'url' => fn(ParseNode $n) => $o->setUrl($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Webhook endpoint id.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isActive property value. Whether the endpoint receives deliveries.
     * @return bool|null
    */
    public function getIsActive(): ?bool {
        return $this->isActive;
    }

    /**
     * Gets the label property value. Human label, or null.
     * @return WebhookEndpoint_label|null
    */
    public function getLabel(): ?WebhookEndpoint_label {
        return $this->label;
    }

    /**
     * Gets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @return WebhookEndpoint_lastDeliveredAt|null
    */
    public function getLastDeliveredAt(): ?WebhookEndpoint_lastDeliveredAt {
        return $this->lastDeliveredAt;
    }

    /**
     * Gets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @return WebhookEndpoint_lastFailedAt|null
    */
    public function getLastFailedAt(): ?WebhookEndpoint_lastFailedAt {
        return $this->lastFailedAt;
    }

    /**
     * Gets the scopeId property value. Stringified bound scope id.
     * @return string|null
    */
    public function getScopeId(): ?string {
        return $this->scopeId;
    }

    /**
     * Gets the scopeType property value. The single scope dimension an endpoint is bound to.
     * @return WebhookEndpoint_scopeType|null
    */
    public function getScopeType(): ?WebhookEndpoint_scopeType {
        return $this->scopeType;
    }

    /**
     * Gets the secretPrefix property value. First 8 chars of the current signing secret (display only).
     * @return string|null
    */
    public function getSecretPrefix(): ?string {
        return $this->secretPrefix;
    }

    /**
     * Gets the updatedAt property value. Last update epoch ms.
     * @return float|null
    */
    public function getUpdatedAt(): ?float {
        return $this->updatedAt;
    }

    /**
     * Gets the url property value. Delivery URL.
     * @return string|null
    */
    public function getUrl(): ?string {
        return $this->url;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeCollectionOfPrimitiveValues('events', $this->getEvents());
        $writer->writeIntegerValue('failureCount', $this->getFailureCount());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isActive', $this->getIsActive());
        $writer->writeObjectValue('label', $this->getLabel());
        $writer->writeObjectValue('lastDeliveredAt', $this->getLastDeliveredAt());
        $writer->writeObjectValue('lastFailedAt', $this->getLastFailedAt());
        $writer->writeStringValue('scopeId', $this->getScopeId());
        $writer->writeEnumValue('scopeType', $this->getScopeType());
        $writer->writeStringValue('secretPrefix', $this->getSecretPrefix());
        $writer->writeFloatValue('updatedAt', $this->getUpdatedAt());
        $writer->writeStringValue('url', $this->getUrl());
    }

    /**
     * Sets the createdAt property value. Creation epoch ms.
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the events property value. Subscribed event tokens.
     * @param array<string>|null $value Value to set for the events property.
    */
    public function setEvents(?array $value): void {
        $this->events = $value;
    }

    /**
     * Sets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
     * @param int|null $value Value to set for the failureCount property.
    */
    public function setFailureCount(?int $value): void {
        $this->failureCount = $value;
    }

    /**
     * Sets the id property value. Webhook endpoint id.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isActive property value. Whether the endpoint receives deliveries.
     * @param bool|null $value Value to set for the isActive property.
    */
    public function setIsActive(?bool $value): void {
        $this->isActive = $value;
    }

    /**
     * Sets the label property value. Human label, or null.
     * @param WebhookEndpoint_label|null $value Value to set for the label property.
    */
    public function setLabel(?WebhookEndpoint_label $value): void {
        $this->label = $value;
    }

    /**
     * Sets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
     * @param WebhookEndpoint_lastDeliveredAt|null $value Value to set for the lastDeliveredAt property.
    */
    public function setLastDeliveredAt(?WebhookEndpoint_lastDeliveredAt $value): void {
        $this->lastDeliveredAt = $value;
    }

    /**
     * Sets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
     * @param WebhookEndpoint_lastFailedAt|null $value Value to set for the lastFailedAt property.
    */
    public function setLastFailedAt(?WebhookEndpoint_lastFailedAt $value): void {
        $this->lastFailedAt = $value;
    }

    /**
     * Sets the scopeId property value. Stringified bound scope id.
     * @param string|null $value Value to set for the scopeId property.
    */
    public function setScopeId(?string $value): void {
        $this->scopeId = $value;
    }

    /**
     * Sets the scopeType property value. The single scope dimension an endpoint is bound to.
     * @param WebhookEndpoint_scopeType|null $value Value to set for the scopeType property.
    */
    public function setScopeType(?WebhookEndpoint_scopeType $value): void {
        $this->scopeType = $value;
    }

    /**
     * Sets the secretPrefix property value. First 8 chars of the current signing secret (display only).
     * @param string|null $value Value to set for the secretPrefix property.
    */
    public function setSecretPrefix(?string $value): void {
        $this->secretPrefix = $value;
    }

    /**
     * Sets the updatedAt property value. Last update epoch ms.
     * @param float|null $value Value to set for the updatedAt property.
    */
    public function setUpdatedAt(?float $value): void {
        $this->updatedAt = $value;
    }

    /**
     * Sets the url property value. Delivery URL.
     * @param string|null $value Value to set for the url property.
    */
    public function setUrl(?string $value): void {
        $this->url = $value;
    }

}

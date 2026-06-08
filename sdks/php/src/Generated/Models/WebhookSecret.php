<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One-time signing-secret reveal (create/rotate).
*/
class WebhookSecret implements Parsable 
{
    /**
     * @var string|null $id The endpoint id the secret belongs to.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $secretPrefix First 8 chars of the new signing secret.
    */
    private ?string $secretPrefix = null;
    
    /**
     * @var string|null $signingSecret Plaintext signing secret. Shown ONCE - store it now.
    */
    private ?string $signingSecret = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookSecret
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookSecret {
        return new WebhookSecret();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'secretPrefix' => fn(ParseNode $n) => $o->setSecretPrefix($n->getStringValue()),
            'signingSecret' => fn(ParseNode $n) => $o->setSigningSecret($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. The endpoint id the secret belongs to.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the secretPrefix property value. First 8 chars of the new signing secret.
     * @return string|null
    */
    public function getSecretPrefix(): ?string {
        return $this->secretPrefix;
    }

    /**
     * Gets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
     * @return string|null
    */
    public function getSigningSecret(): ?string {
        return $this->signingSecret;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('secretPrefix', $this->getSecretPrefix());
        $writer->writeStringValue('signingSecret', $this->getSigningSecret());
    }

    /**
     * Sets the id property value. The endpoint id the secret belongs to.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the secretPrefix property value. First 8 chars of the new signing secret.
     * @param string|null $value Value to set for the secretPrefix property.
    */
    public function setSecretPrefix(?string $value): void {
        $this->secretPrefix = $value;
    }

    /**
     * Sets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
     * @param string|null $value Value to set for the signingSecret property.
    */
    public function setSigningSecret(?string $value): void {
        $this->signingSecret = $value;
    }

}

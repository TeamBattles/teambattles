<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\ApiException;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Standard API error response.
*/
class Error extends ApiException implements Parsable 
{
    /**
     * @var string|null $details Optional human-readable explanation. Often absent on auth/permission errors.
    */
    private ?string $details = null;
    
    /**
     * @var string|null $error Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
    */
    private ?string $error = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return Error
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): Error {
        return new Error();
    }

    /**
     * Gets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
     * @return string|null
    */
    public function getDetails(): ?string {
        return $this->details;
    }

    /**
     * Gets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
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
            'details' => fn(ParseNode $n) => $o->setDetails($n->getStringValue()),
            'error' => fn(ParseNode $n) => $o->setError($n->getStringValue()),
        ];
    }

    /**
     * The primary error message.
     * @return string
    */
    public function getPrimaryErrorMessage(): string {
        $primaryError = $this->getDetail();
        if ($primaryError !== null) {
            return $primaryError->getMessage() ?? '';
        }
        return '';
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('details', $this->getDetails());
        $writer->writeStringValue('error', $this->getError());
    }

    /**
     * Sets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
     * @param string|null $value Value to set for the details property.
    */
    public function setDetails(?string $value): void {
        $this->details = $value;
    }

    /**
     * Sets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
     * @param string|null $value Value to set for the error property.
    */
    public function setError(?string $value): void {
        $this->error = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class UpdateLobbyCodeResponse implements Parsable 
{
    /**
     * @var string|null $lobbyCode The lobbyCode property
    */
    private ?string $lobbyCode = null;
    
    /**
     * @var bool|null $statusChanged The statusChanged property
    */
    private ?bool $statusChanged = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLobbyCodeResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLobbyCodeResponse {
        return new UpdateLobbyCodeResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'lobbyCode' => fn(ParseNode $n) => $o->setLobbyCode($n->getStringValue()),
            'statusChanged' => fn(ParseNode $n) => $o->setStatusChanged($n->getBooleanValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the lobbyCode property value. The lobbyCode property
     * @return string|null
    */
    public function getLobbyCode(): ?string {
        return $this->lobbyCode;
    }

    /**
     * Gets the statusChanged property value. The statusChanged property
     * @return bool|null
    */
    public function getStatusChanged(): ?bool {
        return $this->statusChanged;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('lobbyCode', $this->getLobbyCode());
        $writer->writeBooleanValue('statusChanged', $this->getStatusChanged());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the lobbyCode property value. The lobbyCode property
     * @param string|null $value Value to set for the lobbyCode property.
    */
    public function setLobbyCode(?string $value): void {
        $this->lobbyCode = $value;
    }

    /**
     * Sets the statusChanged property value. The statusChanged property
     * @param bool|null $value Value to set for the statusChanged property.
    */
    public function setStatusChanged(?bool $value): void {
        $this->statusChanged = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

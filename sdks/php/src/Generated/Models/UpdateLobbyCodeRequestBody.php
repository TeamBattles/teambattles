<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Sets or updates the match lobby code as the API key owner.
*/
class UpdateLobbyCodeRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $lobbyCode Lobby code to set for the match.
    */
    private ?string $lobbyCode = null;
    
    /**
     * Instantiates a new UpdateLobbyCodeRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLobbyCodeRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLobbyCodeRequestBody {
        return new UpdateLobbyCodeRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'lobbyCode' => fn(ParseNode $n) => $o->setLobbyCode($n->getStringValue()),
        ];
    }

    /**
     * Gets the lobbyCode property value. Lobby code to set for the match.
     * @return string|null
    */
    public function getLobbyCode(): ?string {
        return $this->lobbyCode;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('lobbyCode', $this->getLobbyCode());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the lobbyCode property value. Lobby code to set for the match.
     * @param string|null $value Value to set for the lobbyCode property.
    */
    public function setLobbyCode(?string $value): void {
        $this->lobbyCode = $value;
    }

}

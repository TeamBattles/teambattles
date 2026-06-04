<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Game and status filters for league seasons.
*/
class SeasonsRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Filter seasons to a specific game id.
    */
    private ?string $gameId = null;
    
    /**
     * @var SeasonsRequestBody_status|null $status Filter seasons by lifecycle status.
    */
    private ?SeasonsRequestBody_status $status = null;
    
    /**
     * Instantiates a new SeasonsRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return SeasonsRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): SeasonsRequestBody {
        return new SeasonsRequestBody();
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
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getEnumValue(SeasonsRequestBody_status::class)),
        ];
    }

    /**
     * Gets the gameId property value. Filter seasons to a specific game id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the status property value. Filter seasons by lifecycle status.
     * @return SeasonsRequestBody_status|null
    */
    public function getStatus(): ?SeasonsRequestBody_status {
        return $this->status;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeEnumValue('status', $this->getStatus());
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
     * Sets the gameId property value. Filter seasons to a specific game id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the status property value. Filter seasons by lifecycle status.
     * @param SeasonsRequestBody_status|null $value Value to set for the status property.
    */
    public function setStatus(?SeasonsRequestBody_status $value): void {
        $this->status = $value;
    }

}

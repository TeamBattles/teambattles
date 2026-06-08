<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League season creation payload.
*/
class CreateSeasonRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var float|null $endDate Season end timestamp in milliseconds.
    */
    private ?float $endDate = null;
    
    /**
     * @var string|null $gameId Game ID the season belongs to.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $name Season name.
    */
    private ?string $name = null;
    
    /**
     * @var float|null $startDate Season start timestamp in milliseconds.
    */
    private ?float $startDate = null;
    
    /**
     * Instantiates a new CreateSeasonRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateSeasonRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateSeasonRequestBody {
        return new CreateSeasonRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the endDate property value. Season end timestamp in milliseconds.
     * @return float|null
    */
    public function getEndDate(): ?float {
        return $this->endDate;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'endDate' => fn(ParseNode $n) => $o->setEndDate($n->getFloatValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'startDate' => fn(ParseNode $n) => $o->setStartDate($n->getFloatValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game ID the season belongs to.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the name property value. Season name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the startDate property value. Season start timestamp in milliseconds.
     * @return float|null
    */
    public function getStartDate(): ?float {
        return $this->startDate;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('endDate', $this->getEndDate());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeFloatValue('startDate', $this->getStartDate());
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
     * Sets the endDate property value. Season end timestamp in milliseconds.
     * @param float|null $value Value to set for the endDate property.
    */
    public function setEndDate(?float $value): void {
        $this->endDate = $value;
    }

    /**
     * Sets the gameId property value. Game ID the season belongs to.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the name property value. Season name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the startDate property value. Season start timestamp in milliseconds.
     * @param float|null $value Value to set for the startDate property.
    */
    public function setStartDate(?float $value): void {
        $this->startDate = $value;
    }

}

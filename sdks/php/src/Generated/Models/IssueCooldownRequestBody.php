<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Issues or updates a manual league member cooldown.
*/
class IssueCooldownRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var int|null $cooldownHours Cooldown length in hours, from 1 to 8760.
    */
    private ?int $cooldownHours = null;
    
    /**
     * @var string|null $note Optional admin note.
    */
    private ?string $note = null;
    
    /**
     * @var string|null $userId User ID receiving the cooldown.
    */
    private ?string $userId = null;
    
    /**
     * Instantiates a new IssueCooldownRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return IssueCooldownRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): IssueCooldownRequestBody {
        return new IssueCooldownRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the cooldownHours property value. Cooldown length in hours, from 1 to 8760.
     * @return int|null
    */
    public function getCooldownHours(): ?int {
        return $this->cooldownHours;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'cooldownHours' => fn(ParseNode $n) => $o->setCooldownHours($n->getIntegerValue()),
            'note' => fn(ParseNode $n) => $o->setNote($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the note property value. Optional admin note.
     * @return string|null
    */
    public function getNote(): ?string {
        return $this->note;
    }

    /**
     * Gets the userId property value. User ID receiving the cooldown.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('cooldownHours', $this->getCooldownHours());
        $writer->writeStringValue('note', $this->getNote());
        $writer->writeStringValue('userId', $this->getUserId());
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
     * Sets the cooldownHours property value. Cooldown length in hours, from 1 to 8760.
     * @param int|null $value Value to set for the cooldownHours property.
    */
    public function setCooldownHours(?int $value): void {
        $this->cooldownHours = $value;
    }

    /**
     * Sets the note property value. Optional admin note.
     * @param string|null $value Value to set for the note property.
    */
    public function setNote(?string $value): void {
        $this->note = $value;
    }

    /**
     * Sets the userId property value. User ID receiving the cooldown.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

}

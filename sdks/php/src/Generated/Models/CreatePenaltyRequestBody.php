<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Creates a league team penalty.
*/
class CreatePenaltyRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Game ID for the league penalty.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $reason Reason for the penalty.
    */
    private ?string $reason = null;
    
    /**
     * @var string|null $seasonId Optional league season ID for the penalty.
    */
    private ?string $seasonId = null;
    
    /**
     * @var string|null $teamId Team ID receiving the penalty.
    */
    private ?string $teamId = null;
    
    /**
     * @var CreatePenaltyRequestBody_type|null $type Penalty type.
    */
    private ?CreatePenaltyRequestBody_type $type = null;
    
    /**
     * @var int|null $value Point value for POINT_DEDUCTION (integer, 1-1000).
    */
    private ?int $value = null;
    
    /**
     * Instantiates a new CreatePenaltyRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreatePenaltyRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreatePenaltyRequestBody {
        return new CreatePenaltyRequestBody();
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
            'reason' => fn(ParseNode $n) => $o->setReason($n->getStringValue()),
            'seasonId' => fn(ParseNode $n) => $o->setSeasonId($n->getStringValue()),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'type' => fn(ParseNode $n) => $o->setType($n->getEnumValue(CreatePenaltyRequestBody_type::class)),
            'value' => fn(ParseNode $n) => $o->setValue($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the gameId property value. Game ID for the league penalty.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the reason property value. Reason for the penalty.
     * @return string|null
    */
    public function getReason(): ?string {
        return $this->reason;
    }

    /**
     * Gets the seasonId property value. Optional league season ID for the penalty.
     * @return string|null
    */
    public function getSeasonId(): ?string {
        return $this->seasonId;
    }

    /**
     * Gets the teamId property value. Team ID receiving the penalty.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the type property value. Penalty type.
     * @return CreatePenaltyRequestBody_type|null
    */
    public function getType(): ?CreatePenaltyRequestBody_type {
        return $this->type;
    }

    /**
     * Gets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
     * @return int|null
    */
    public function getValue(): ?int {
        return $this->value;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('reason', $this->getReason());
        $writer->writeStringValue('seasonId', $this->getSeasonId());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeEnumValue('type', $this->getType());
        $writer->writeIntegerValue('value', $this->getValue());
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
     * Sets the gameId property value. Game ID for the league penalty.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the reason property value. Reason for the penalty.
     * @param string|null $value Value to set for the reason property.
    */
    public function setReason(?string $value): void {
        $this->reason = $value;
    }

    /**
     * Sets the seasonId property value. Optional league season ID for the penalty.
     * @param string|null $value Value to set for the seasonId property.
    */
    public function setSeasonId(?string $value): void {
        $this->seasonId = $value;
    }

    /**
     * Sets the teamId property value. Team ID receiving the penalty.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the type property value. Penalty type.
     * @param CreatePenaltyRequestBody_type|null $value Value to set for the type property.
    */
    public function setType(?CreatePenaltyRequestBody_type $value): void {
        $this->type = $value;
    }

    /**
     * Sets the value property value. Point value for POINT_DEDUCTION (integer, 1-1000).
     * @param int|null $value Value to set for the value property.
    */
    public function setValue(?int $value): void {
        $this->value = $value;
    }

}

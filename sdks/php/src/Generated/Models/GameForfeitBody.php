<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Request body for forfeiting a match on behalf of one participating team.
*/
class GameForfeitBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $forfeitingTeamId ID of the team that forfeits. Must be a participant of the match.
    */
    private ?string $forfeitingTeamId = null;
    
    /**
     * @var string|null $reason Optional human-readable forfeit reason, recorded on the match.
    */
    private ?string $reason = null;
    
    /**
     * Instantiates a new GameForfeitBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameForfeitBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameForfeitBody {
        return new GameForfeitBody();
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
            'forfeitingTeamId' => fn(ParseNode $n) => $o->setForfeitingTeamId($n->getStringValue()),
            'reason' => fn(ParseNode $n) => $o->setReason($n->getStringValue()),
        ];
    }

    /**
     * Gets the forfeitingTeamId property value. ID of the team that forfeits. Must be a participant of the match.
     * @return string|null
    */
    public function getForfeitingTeamId(): ?string {
        return $this->forfeitingTeamId;
    }

    /**
     * Gets the reason property value. Optional human-readable forfeit reason, recorded on the match.
     * @return string|null
    */
    public function getReason(): ?string {
        return $this->reason;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('forfeitingTeamId', $this->getForfeitingTeamId());
        $writer->writeStringValue('reason', $this->getReason());
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
     * Sets the forfeitingTeamId property value. ID of the team that forfeits. Must be a participant of the match.
     * @param string|null $value Value to set for the forfeitingTeamId property.
    */
    public function setForfeitingTeamId(?string $value): void {
        $this->forfeitingTeamId = $value;
    }

    /**
     * Sets the reason property value. Optional human-readable forfeit reason, recorded on the match.
     * @param string|null $value Value to set for the reason property.
    */
    public function setReason(?string $value): void {
        $this->reason = $value;
    }

}

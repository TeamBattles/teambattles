<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Identity of the captain who confirmed a score.
*/
class ScoreConfirmer implements Parsable 
{
    /**
     * @var ScoreConfirmer_confirmedAt|null $confirmedAt Confirmation time (ISO 8601).
    */
    private ?ScoreConfirmer_confirmedAt $confirmedAt = null;
    
    /**
     * @var string|null $teamId The teamId property
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $userId The userId property
    */
    private ?string $userId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ScoreConfirmer
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ScoreConfirmer {
        return new ScoreConfirmer();
    }

    /**
     * Gets the confirmedAt property value. Confirmation time (ISO 8601).
     * @return ScoreConfirmer_confirmedAt|null
    */
    public function getConfirmedAt(): ?ScoreConfirmer_confirmedAt {
        return $this->confirmedAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'confirmedAt' => fn(ParseNode $n) => $o->setConfirmedAt($n->getObjectValue([ScoreConfirmer_confirmedAt::class, 'createFromDiscriminatorValue'])),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the teamId property value. The teamId property
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the userId property value. The userId property
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
        $writer->writeObjectValue('confirmedAt', $this->getConfirmedAt());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('userId', $this->getUserId());
    }

    /**
     * Sets the confirmedAt property value. Confirmation time (ISO 8601).
     * @param ScoreConfirmer_confirmedAt|null $value Value to set for the confirmedAt property.
    */
    public function setConfirmedAt(?ScoreConfirmer_confirmedAt $value): void {
        $this->confirmedAt = $value;
    }

    /**
     * Sets the teamId property value. The teamId property
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the userId property value. The userId property
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Identity of the captain who submitted a score.
*/
class ScoreSubmitter implements Parsable 
{
    /**
     * @var ScoreSubmitter_name|null $name The name property
    */
    private ?ScoreSubmitter_name $name = null;
    
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
     * @return ScoreSubmitter
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ScoreSubmitter {
        return new ScoreSubmitter();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'name' => fn(ParseNode $n) => $o->setName($n->getObjectValue([ScoreSubmitter_name::class, 'createFromDiscriminatorValue'])),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the name property value. The name property
     * @return ScoreSubmitter_name|null
    */
    public function getName(): ?ScoreSubmitter_name {
        return $this->name;
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
        $writer->writeObjectValue('name', $this->getName());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('userId', $this->getUserId());
    }

    /**
     * Sets the name property value. The name property
     * @param ScoreSubmitter_name|null $value Value to set for the name property.
    */
    public function setName(?ScoreSubmitter_name $value): void {
        $this->name = $value;
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

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of a successful match forfeit.
*/
class GameForfeitResponse implements Parsable 
{
    /**
     * @var string|null $forfeitedByTeamId ID of the team that forfeited.
    */
    private ?string $forfeitedByTeamId = null;
    
    /**
     * @var string|null $matchId ID of the forfeited match.
    */
    private ?string $matchId = null;
    
    /**
     * @var bool|null $success The success property
    */
    private ?bool $success = null;
    
    /**
     * @var string|null $timestamp Server response time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameForfeitResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameForfeitResponse {
        return new GameForfeitResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'forfeitedByTeamId' => fn(ParseNode $n) => $o->setForfeitedByTeamId($n->getStringValue()),
            'matchId' => fn(ParseNode $n) => $o->setMatchId($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the forfeitedByTeamId property value. ID of the team that forfeited.
     * @return string|null
    */
    public function getForfeitedByTeamId(): ?string {
        return $this->forfeitedByTeamId;
    }

    /**
     * Gets the matchId property value. ID of the forfeited match.
     * @return string|null
    */
    public function getMatchId(): ?string {
        return $this->matchId;
    }

    /**
     * Gets the success property value. The success property
     * @return bool|null
    */
    public function getSuccess(): ?bool {
        return $this->success;
    }

    /**
     * Gets the timestamp property value. Server response time (ISO 8601).
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
        $writer->writeStringValue('forfeitedByTeamId', $this->getForfeitedByTeamId());
        $writer->writeStringValue('matchId', $this->getMatchId());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the forfeitedByTeamId property value. ID of the team that forfeited.
     * @param string|null $value Value to set for the forfeitedByTeamId property.
    */
    public function setForfeitedByTeamId(?string $value): void {
        $this->forfeitedByTeamId = $value;
    }

    /**
     * Sets the matchId property value. ID of the forfeited match.
     * @param string|null $value Value to set for the matchId property.
    */
    public function setMatchId(?string $value): void {
        $this->matchId = $value;
    }

    /**
     * Sets the success property value. The success property
     * @param bool|null $value Value to set for the success property.
    */
    public function setSuccess(?bool $value): void {
        $this->success = $value;
    }

    /**
     * Sets the timestamp property value. Server response time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

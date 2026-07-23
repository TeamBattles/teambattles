<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of scheduling a tournament round.
*/
class TournamentRoundScheduleResponse implements Parsable 
{
    /**
     * @var string|null $roundId The roundId property
    */
    private ?string $roundId = null;
    
    /**
     * @var TournamentRoundScheduleResponse_startsAt|null $startsAt The value now stored on the round.
    */
    private ?TournamentRoundScheduleResponse_startsAt $startsAt = null;
    
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
     * @return TournamentRoundScheduleResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRoundScheduleResponse {
        return new TournamentRoundScheduleResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'roundId' => fn(ParseNode $n) => $o->setRoundId($n->getStringValue()),
            'startsAt' => fn(ParseNode $n) => $o->setStartsAt($n->getObjectValue([TournamentRoundScheduleResponse_startsAt::class, 'createFromDiscriminatorValue'])),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the roundId property value. The roundId property
     * @return string|null
    */
    public function getRoundId(): ?string {
        return $this->roundId;
    }

    /**
     * Gets the startsAt property value. The value now stored on the round.
     * @return TournamentRoundScheduleResponse_startsAt|null
    */
    public function getStartsAt(): ?TournamentRoundScheduleResponse_startsAt {
        return $this->startsAt;
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
        $writer->writeStringValue('roundId', $this->getRoundId());
        $writer->writeObjectValue('startsAt', $this->getStartsAt());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the roundId property value. The roundId property
     * @param string|null $value Value to set for the roundId property.
    */
    public function setRoundId(?string $value): void {
        $this->roundId = $value;
    }

    /**
     * Sets the startsAt property value. The value now stored on the round.
     * @param TournamentRoundScheduleResponse_startsAt|null $value Value to set for the startsAt property.
    */
    public function setStartsAt(?TournamentRoundScheduleResponse_startsAt $value): void {
        $this->startsAt = $value;
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

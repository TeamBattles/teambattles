<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League application eligibility.
*/
class LeagueApplyEligibility implements Parsable 
{
    /**
     * @var LeagueApplyEligibility_eligibility|null $eligibility API key owner's apply-to-join eligibility.
    */
    private ?LeagueApplyEligibility_eligibility $eligibility = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueApplyEligibility
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueApplyEligibility {
        return new LeagueApplyEligibility();
    }

    /**
     * Gets the eligibility property value. API key owner's apply-to-join eligibility.
     * @return LeagueApplyEligibility_eligibility|null
    */
    public function getEligibility(): ?LeagueApplyEligibility_eligibility {
        return $this->eligibility;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'eligibility' => fn(ParseNode $n) => $o->setEligibility($n->getObjectValue([LeagueApplyEligibility_eligibility::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeObjectValue('eligibility', $this->getEligibility());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the eligibility property value. API key owner's apply-to-join eligibility.
     * @param LeagueApplyEligibility_eligibility|null $value Value to set for the eligibility property.
    */
    public function setEligibility(?LeagueApplyEligibility_eligibility $value): void {
        $this->eligibility = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

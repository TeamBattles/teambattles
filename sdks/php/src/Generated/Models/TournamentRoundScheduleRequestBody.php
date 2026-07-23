<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Round schedule payload.
*/
class TournamentRoundScheduleRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var TournamentRoundScheduleRequestBody_startsAt|null $startsAt Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
    */
    private ?TournamentRoundScheduleRequestBody_startsAt $startsAt = null;
    
    /**
     * Instantiates a new TournamentRoundScheduleRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRoundScheduleRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRoundScheduleRequestBody {
        return new TournamentRoundScheduleRequestBody();
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
            'startsAt' => fn(ParseNode $n) => $o->setStartsAt($n->getObjectValue([TournamentRoundScheduleRequestBody_startsAt::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
     * @return TournamentRoundScheduleRequestBody_startsAt|null
    */
    public function getStartsAt(): ?TournamentRoundScheduleRequestBody_startsAt {
        return $this->startsAt;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('startsAt', $this->getStartsAt());
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
     * Sets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
     * @param TournamentRoundScheduleRequestBody_startsAt|null $value Value to set for the startsAt property.
    */
    public function setStartsAt(?TournamentRoundScheduleRequestBody_startsAt $value): void {
        $this->startsAt = $value;
    }

}

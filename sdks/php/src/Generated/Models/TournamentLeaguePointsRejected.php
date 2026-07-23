<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\ApiException;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A 400 from this endpoint. A superset of the standard Error body: `reason` adds a machine-readable placement-table reject code when that is what failed.
*/
class TournamentLeaguePointsRejected extends ApiException implements Parsable 
{
    /**
     * @var string|null $details The details property
    */
    private ?string $details = null;
    
    /**
     * @var string|null $error The error property
    */
    private ?string $error = null;
    
    /**
     * @var TournamentPlacementPointsError|null $reason Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
    */
    private ?TournamentPlacementPointsError $reason = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentLeaguePointsRejected
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentLeaguePointsRejected {
        return new TournamentLeaguePointsRejected();
    }

    /**
     * Gets the details property value. The details property
     * @return string|null
    */
    public function getDetails(): ?string {
        return $this->details;
    }

    /**
     * Gets the error property value. The error property
     * @return string|null
    */
    public function getError(): ?string {
        return $this->error;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'details' => fn(ParseNode $n) => $o->setDetails($n->getStringValue()),
            'error' => fn(ParseNode $n) => $o->setError($n->getStringValue()),
            'reason' => fn(ParseNode $n) => $o->setReason($n->getEnumValue(TournamentPlacementPointsError::class)),
        ];
    }

    /**
     * The primary error message.
     * @return string
    */
    public function getPrimaryErrorMessage(): string {
        return parent::getMessage();
    }

    /**
     * Gets the reason property value. Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
     * @return TournamentPlacementPointsError|null
    */
    public function getReason(): ?TournamentPlacementPointsError {
        return $this->reason;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('details', $this->getDetails());
        $writer->writeStringValue('error', $this->getError());
        $writer->writeEnumValue('reason', $this->getReason());
    }

    /**
     * Sets the details property value. The details property
     * @param string|null $value Value to set for the details property.
    */
    public function setDetails(?string $value): void {
        $this->details = $value;
    }

    /**
     * Sets the error property value. The error property
     * @param string|null $value Value to set for the error property.
    */
    public function setError(?string $value): void {
        $this->error = $value;
    }

    /**
     * Sets the reason property value. Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
     * @param TournamentPlacementPointsError|null $value Value to set for the reason property.
    */
    public function setReason(?TournamentPlacementPointsError $value): void {
        $this->reason = $value;
    }

}

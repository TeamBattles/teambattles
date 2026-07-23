<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of cancelling a tournament.
*/
class TournamentCancelResponse implements Parsable 
{
    /**
     * @var TournamentCancelResponse_approvalStatus|null $approvalStatus The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
    */
    private ?TournamentCancelResponse_approvalStatus $approvalStatus = null;
    
    /**
     * @var string|null $status The lifecycle status this call set.
    */
    private ?string $status = null;
    
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
     * @return TournamentCancelResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentCancelResponse {
        return new TournamentCancelResponse();
    }

    /**
     * Gets the approvalStatus property value. The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
     * @return TournamentCancelResponse_approvalStatus|null
    */
    public function getApprovalStatus(): ?TournamentCancelResponse_approvalStatus {
        return $this->approvalStatus;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getEnumValue(TournamentCancelResponse_approvalStatus::class)),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the status property value. The lifecycle status this call set.
     * @return string|null
    */
    public function getStatus(): ?string {
        return $this->status;
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
        $writer->writeEnumValue('approvalStatus', $this->getApprovalStatus());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the approvalStatus property value. The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
     * @param TournamentCancelResponse_approvalStatus|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?TournamentCancelResponse_approvalStatus $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the status property value. The lifecycle status this call set.
     * @param string|null $value Value to set for the status property.
    */
    public function setStatus(?string $value): void {
        $this->status = $value;
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

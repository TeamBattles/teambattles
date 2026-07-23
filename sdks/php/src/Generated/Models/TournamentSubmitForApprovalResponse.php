<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Result of submitting a draft tournament for staff review.
*/
class TournamentSubmitForApprovalResponse implements Parsable 
{
    /**
     * @var TournamentSubmitForApprovalResponse_approvalStatus|null $approvalStatus The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
    */
    private ?TournamentSubmitForApprovalResponse_approvalStatus $approvalStatus = null;
    
    /**
     * @var bool|null $autoApproved True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
    */
    private ?bool $autoApproved = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSubmitForApprovalResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSubmitForApprovalResponse {
        return new TournamentSubmitForApprovalResponse();
    }

    /**
     * Gets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
     * @return TournamentSubmitForApprovalResponse_approvalStatus|null
    */
    public function getApprovalStatus(): ?TournamentSubmitForApprovalResponse_approvalStatus {
        return $this->approvalStatus;
    }

    /**
     * Gets the autoApproved property value. True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
     * @return bool|null
    */
    public function getAutoApproved(): ?bool {
        return $this->autoApproved;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getEnumValue(TournamentSubmitForApprovalResponse_approvalStatus::class)),
            'autoApproved' => fn(ParseNode $n) => $o->setAutoApproved($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
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
        $writer->writeBooleanValue('autoApproved', $this->getAutoApproved());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
     * @param TournamentSubmitForApprovalResponse_approvalStatus|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?TournamentSubmitForApprovalResponse_approvalStatus $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the autoApproved property value. True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
     * @param bool|null $value Value to set for the autoApproved property.
    */
    public function setAutoApproved(?bool $value): void {
        $this->autoApproved = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

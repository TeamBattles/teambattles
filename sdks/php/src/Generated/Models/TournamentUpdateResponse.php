<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Tri-state result of a tournament edit.
*/
class TournamentUpdateResponse implements Parsable 
{
    /**
     * @var TournamentUpdateResponse_applied|null $applied `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
    */
    private ?TournamentUpdateResponse_applied $applied = null;
    
    /**
     * @var TournamentUpdateResponse_approvalStatus|null $approvalStatus Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
    */
    private ?TournamentUpdateResponse_approvalStatus $approvalStatus = null;
    
    /**
     * @var array<TournamentMaterialField>|null $changedFields Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
    */
    private ?array $changedFields = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentUpdateResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentUpdateResponse {
        return new TournamentUpdateResponse();
    }

    /**
     * Gets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
     * @return TournamentUpdateResponse_applied|null
    */
    public function getApplied(): ?TournamentUpdateResponse_applied {
        return $this->applied;
    }

    /**
     * Gets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
     * @return TournamentUpdateResponse_approvalStatus|null
    */
    public function getApprovalStatus(): ?TournamentUpdateResponse_approvalStatus {
        return $this->approvalStatus;
    }

    /**
     * Gets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
     * @return array<TournamentMaterialField>|null
    */
    public function getChangedFields(): ?array {
        return $this->changedFields;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'applied' => fn(ParseNode $n) => $o->setApplied($n->getEnumValue(TournamentUpdateResponse_applied::class)),
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getEnumValue(TournamentUpdateResponse_approvalStatus::class)),
            'changedFields' => fn(ParseNode $n) => $o->setChangedFields($n->getCollectionOfEnumValues(TournamentMaterialField::class)),
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
        $writer->writeEnumValue('applied', $this->getApplied());
        $writer->writeEnumValue('approvalStatus', $this->getApprovalStatus());
        $writer->writeCollectionOfEnumValues('changedFields', $this->getChangedFields());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the applied property value. `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
     * @param TournamentUpdateResponse_applied|null $value Value to set for the applied property.
    */
    public function setApplied(?TournamentUpdateResponse_applied $value): void {
        $this->applied = $value;
    }

    /**
     * Sets the approvalStatus property value. Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
     * @param TournamentUpdateResponse_approvalStatus|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?TournamentUpdateResponse_approvalStatus $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the changedFields property value. Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
     * @param array<TournamentMaterialField>|null $value Value to set for the changedFields property.
    */
    public function setChangedFields(?array $value): void {
        $this->changedFields = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}

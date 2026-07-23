<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The newly created draft tournament.
*/
class TournamentCreateResponse implements Parsable 
{
    /**
     * @var string|null $approvalStatus Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
    */
    private ?string $approvalStatus = null;
    
    /**
     * @var string|null $slug Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
    */
    private ?string $slug = null;
    
    /**
     * @var string|null $status Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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
     * @var string|null $tournamentId The tournamentId property
    */
    private ?string $tournamentId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentCreateResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentCreateResponse {
        return new TournamentCreateResponse();
    }

    /**
     * Gets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
     * @return string|null
    */
    public function getApprovalStatus(): ?string {
        return $this->approvalStatus;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'approvalStatus' => fn(ParseNode $n) => $o->setApprovalStatus($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'status' => fn(ParseNode $n) => $o->setStatus($n->getStringValue()),
            'success' => fn(ParseNode $n) => $o->setSuccess($n->getBooleanValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'tournamentId' => fn(ParseNode $n) => $o->setTournamentId($n->getStringValue()),
        ];
    }

    /**
     * Gets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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
     * Gets the tournamentId property value. The tournamentId property
     * @return string|null
    */
    public function getTournamentId(): ?string {
        return $this->tournamentId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('approvalStatus', $this->getApprovalStatus());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeStringValue('status', $this->getStatus());
        $writer->writeBooleanValue('success', $this->getSuccess());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeStringValue('tournamentId', $this->getTournamentId());
    }

    /**
     * Sets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
     * @param string|null $value Value to set for the approvalStatus property.
    */
    public function setApprovalStatus(?string $value): void {
        $this->approvalStatus = $value;
    }

    /**
     * Sets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
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

    /**
     * Sets the tournamentId property value. The tournamentId property
     * @param string|null $value Value to set for the tournamentId property.
    */
    public function setTournamentId(?string $value): void {
        $this->tournamentId = $value;
    }

}

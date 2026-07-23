<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One tournament activity log entry.
*/
class TournamentActivityEntry implements Parsable 
{
    /**
     * @var string|null $action Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
    */
    private ?string $action = null;
    
    /**
     * @var TournamentActivityActor|null $actor The acting user, or null when the user row no longer resolves.
    */
    private ?TournamentActivityActor $actor = null;
    
    /**
     * @var float|null $createdAt Log time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $id Activity log row ID.
    */
    private ?string $id = null;
    
    /**
     * @var TournamentActivityEntry_metadata|null $metadata Action-specific detail. Shape varies by `action`.
    */
    private ?TournamentActivityEntry_metadata $metadata = null;
    
    /**
     * @var string|null $targetId ID of the targeted row.
    */
    private ?string $targetId = null;
    
    /**
     * @var string|null $targetType Kind of row the action targeted, when the action names one.
    */
    private ?string $targetType = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentActivityEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentActivityEntry {
        return new TournamentActivityEntry();
    }

    /**
     * Gets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
     * @return string|null
    */
    public function getAction(): ?string {
        return $this->action;
    }

    /**
     * Gets the actor property value. The acting user, or null when the user row no longer resolves.
     * @return TournamentActivityActor|null
    */
    public function getActor(): ?TournamentActivityActor {
        return $this->actor;
    }

    /**
     * Gets the createdAt property value. Log time (epoch milliseconds).
     * @return float|null
    */
    public function getCreatedAt(): ?float {
        return $this->createdAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'action' => fn(ParseNode $n) => $o->setAction($n->getStringValue()),
            'actor' => fn(ParseNode $n) => $o->setActor($n->getObjectValue([TournamentActivityActor::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'metadata' => fn(ParseNode $n) => $o->setMetadata($n->getObjectValue([TournamentActivityEntry_metadata::class, 'createFromDiscriminatorValue'])),
            'targetId' => fn(ParseNode $n) => $o->setTargetId($n->getStringValue()),
            'targetType' => fn(ParseNode $n) => $o->setTargetType($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Activity log row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the metadata property value. Action-specific detail. Shape varies by `action`.
     * @return TournamentActivityEntry_metadata|null
    */
    public function getMetadata(): ?TournamentActivityEntry_metadata {
        return $this->metadata;
    }

    /**
     * Gets the targetId property value. ID of the targeted row.
     * @return string|null
    */
    public function getTargetId(): ?string {
        return $this->targetId;
    }

    /**
     * Gets the targetType property value. Kind of row the action targeted, when the action names one.
     * @return string|null
    */
    public function getTargetType(): ?string {
        return $this->targetType;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('action', $this->getAction());
        $writer->writeObjectValue('actor', $this->getActor());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('metadata', $this->getMetadata());
        $writer->writeStringValue('targetId', $this->getTargetId());
        $writer->writeStringValue('targetType', $this->getTargetType());
    }

    /**
     * Sets the action property value. Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
     * @param string|null $value Value to set for the action property.
    */
    public function setAction(?string $value): void {
        $this->action = $value;
    }

    /**
     * Sets the actor property value. The acting user, or null when the user row no longer resolves.
     * @param TournamentActivityActor|null $value Value to set for the actor property.
    */
    public function setActor(?TournamentActivityActor $value): void {
        $this->actor = $value;
    }

    /**
     * Sets the createdAt property value. Log time (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. Activity log row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the metadata property value. Action-specific detail. Shape varies by `action`.
     * @param TournamentActivityEntry_metadata|null $value Value to set for the metadata property.
    */
    public function setMetadata(?TournamentActivityEntry_metadata $value): void {
        $this->metadata = $value;
    }

    /**
     * Sets the targetId property value. ID of the targeted row.
     * @param string|null $value Value to set for the targetId property.
    */
    public function setTargetId(?string $value): void {
        $this->targetId = $value;
    }

    /**
     * Sets the targetType property value. Kind of row the action targeted, when the action names one.
     * @param string|null $value Value to set for the targetType property.
    */
    public function setTargetType(?string $value): void {
        $this->targetType = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * An available free agent.
*/
class TournamentFreeAgent implements Parsable 
{
    /**
     * @var TournamentFreeAgent_avatarUrl|null $avatarUrl Avatar image URL.
    */
    private ?TournamentFreeAgent_avatarUrl $avatarUrl = null;
    
    /**
     * @var float|null $createdAt Pool join time (epoch milliseconds).
    */
    private ?float $createdAt = null;
    
    /**
     * @var string|null $id Free-agent row ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Display name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $note Free-text note the agent supplied.
    */
    private ?string $note = null;
    
    /**
     * @var string|null $userId User ID of the free agent.
    */
    private ?string $userId = null;
    
    /**
     * @var string|null $username Username.
    */
    private ?string $username = null;
    
    /**
     * @var TournamentFreeAgent_viewerOfferStatus|null $viewerOfferStatus PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
    */
    private ?TournamentFreeAgent_viewerOfferStatus $viewerOfferStatus = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentFreeAgent
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentFreeAgent {
        return new TournamentFreeAgent();
    }

    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return TournamentFreeAgent_avatarUrl|null
    */
    public function getAvatarUrl(): ?TournamentFreeAgent_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the createdAt property value. Pool join time (epoch milliseconds).
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
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([TournamentFreeAgent_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'createdAt' => fn(ParseNode $n) => $o->setCreatedAt($n->getFloatValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'note' => fn(ParseNode $n) => $o->setNote($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getStringValue()),
            'viewerOfferStatus' => fn(ParseNode $n) => $o->setViewerOfferStatus($n->getObjectValue([TournamentFreeAgent_viewerOfferStatus::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. Free-agent row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the name property value. Display name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the note property value. Free-text note the agent supplied.
     * @return string|null
    */
    public function getNote(): ?string {
        return $this->note;
    }

    /**
     * Gets the userId property value. User ID of the free agent.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Gets the username property value. Username.
     * @return string|null
    */
    public function getUsername(): ?string {
        return $this->username;
    }

    /**
     * Gets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
     * @return TournamentFreeAgent_viewerOfferStatus|null
    */
    public function getViewerOfferStatus(): ?TournamentFreeAgent_viewerOfferStatus {
        return $this->viewerOfferStatus;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeFloatValue('createdAt', $this->getCreatedAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('note', $this->getNote());
        $writer->writeStringValue('userId', $this->getUserId());
        $writer->writeStringValue('username', $this->getUsername());
        $writer->writeObjectValue('viewerOfferStatus', $this->getViewerOfferStatus());
    }

    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param TournamentFreeAgent_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?TournamentFreeAgent_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the createdAt property value. Pool join time (epoch milliseconds).
     * @param float|null $value Value to set for the createdAt property.
    */
    public function setCreatedAt(?float $value): void {
        $this->createdAt = $value;
    }

    /**
     * Sets the id property value. Free-agent row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the name property value. Display name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the note property value. Free-text note the agent supplied.
     * @param string|null $value Value to set for the note property.
    */
    public function setNote(?string $value): void {
        $this->note = $value;
    }

    /**
     * Sets the userId property value. User ID of the free agent.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

    /**
     * Sets the username property value. Username.
     * @param string|null $value Value to set for the username property.
    */
    public function setUsername(?string $value): void {
        $this->username = $value;
    }

    /**
     * Sets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
     * @param TournamentFreeAgent_viewerOfferStatus|null $value Value to set for the viewerOfferStatus property.
    */
    public function setViewerOfferStatus(?TournamentFreeAgent_viewerOfferStatus $value): void {
        $this->viewerOfferStatus = $value;
    }

}

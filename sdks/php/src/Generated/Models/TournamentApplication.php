<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A team application awaiting organizer review.
*/
class TournamentApplication implements Parsable 
{
    /**
     * @var string|null $appliedByUserId User who submitted the application, when recorded.
    */
    private ?string $appliedByUserId = null;
    
    /**
     * @var string|null $id Participant ID of the pending application.
    */
    private ?string $id = null;
    
    /**
     * @var float|null $registeredAt Application time (epoch milliseconds).
    */
    private ?float $registeredAt = null;
    
    /**
     * @var TournamentApplication_teamAvatarUrl|null $teamAvatarUrl Applying team's avatar URL.
    */
    private ?TournamentApplication_teamAvatarUrl $teamAvatarUrl = null;
    
    /**
     * @var string|null $teamId Applying team's ID.
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $teamName Applying team's display name.
    */
    private ?string $teamName = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentApplication
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentApplication {
        return new TournamentApplication();
    }

    /**
     * Gets the appliedByUserId property value. User who submitted the application, when recorded.
     * @return string|null
    */
    public function getAppliedByUserId(): ?string {
        return $this->appliedByUserId;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'appliedByUserId' => fn(ParseNode $n) => $o->setAppliedByUserId($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'registeredAt' => fn(ParseNode $n) => $o->setRegisteredAt($n->getFloatValue()),
            'teamAvatarUrl' => fn(ParseNode $n) => $o->setTeamAvatarUrl($n->getObjectValue([TournamentApplication_teamAvatarUrl::class, 'createFromDiscriminatorValue'])),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'teamName' => fn(ParseNode $n) => $o->setTeamName($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Participant ID of the pending application.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the registeredAt property value. Application time (epoch milliseconds).
     * @return float|null
    */
    public function getRegisteredAt(): ?float {
        return $this->registeredAt;
    }

    /**
     * Gets the teamAvatarUrl property value. Applying team's avatar URL.
     * @return TournamentApplication_teamAvatarUrl|null
    */
    public function getTeamAvatarUrl(): ?TournamentApplication_teamAvatarUrl {
        return $this->teamAvatarUrl;
    }

    /**
     * Gets the teamId property value. Applying team's ID.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the teamName property value. Applying team's display name.
     * @return string|null
    */
    public function getTeamName(): ?string {
        return $this->teamName;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('appliedByUserId', $this->getAppliedByUserId());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeFloatValue('registeredAt', $this->getRegisteredAt());
        $writer->writeObjectValue('teamAvatarUrl', $this->getTeamAvatarUrl());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('teamName', $this->getTeamName());
    }

    /**
     * Sets the appliedByUserId property value. User who submitted the application, when recorded.
     * @param string|null $value Value to set for the appliedByUserId property.
    */
    public function setAppliedByUserId(?string $value): void {
        $this->appliedByUserId = $value;
    }

    /**
     * Sets the id property value. Participant ID of the pending application.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the registeredAt property value. Application time (epoch milliseconds).
     * @param float|null $value Value to set for the registeredAt property.
    */
    public function setRegisteredAt(?float $value): void {
        $this->registeredAt = $value;
    }

    /**
     * Sets the teamAvatarUrl property value. Applying team's avatar URL.
     * @param TournamentApplication_teamAvatarUrl|null $value Value to set for the teamAvatarUrl property.
    */
    public function setTeamAvatarUrl(?TournamentApplication_teamAvatarUrl $value): void {
        $this->teamAvatarUrl = $value;
    }

    /**
     * Sets the teamId property value. Applying team's ID.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the teamName property value. Applying team's display name.
     * @param string|null $value Value to set for the teamName property.
    */
    public function setTeamName(?string $value): void {
        $this->teamName = $value;
    }

}

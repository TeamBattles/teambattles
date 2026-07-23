<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One dated tournament milestone for the key owner.
*/
class TournamentCalendarEvent implements Parsable 
{
    /**
     * @var float|null $at Milestone time (epoch milliseconds).
    */
    private ?float $at = null;
    
    /**
     * @var TournamentCalendarEvent_kind|null $kind registration = registration deadline, checkin = check-in opens, start = tournament start.
    */
    private ?TournamentCalendarEvent_kind $kind = null;
    
    /**
     * @var string|null $name Tournament display name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $slug URL-friendly tournament identifier.
    */
    private ?string $slug = null;
    
    /**
     * @var string|null $tournamentId Tournament ID.
    */
    private ?string $tournamentId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentCalendarEvent
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentCalendarEvent {
        return new TournamentCalendarEvent();
    }

    /**
     * Gets the at property value. Milestone time (epoch milliseconds).
     * @return float|null
    */
    public function getAt(): ?float {
        return $this->at;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'at' => fn(ParseNode $n) => $o->setAt($n->getFloatValue()),
            'kind' => fn(ParseNode $n) => $o->setKind($n->getEnumValue(TournamentCalendarEvent_kind::class)),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'tournamentId' => fn(ParseNode $n) => $o->setTournamentId($n->getStringValue()),
        ];
    }

    /**
     * Gets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
     * @return TournamentCalendarEvent_kind|null
    */
    public function getKind(): ?TournamentCalendarEvent_kind {
        return $this->kind;
    }

    /**
     * Gets the name property value. Tournament display name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return string|null
    */
    public function getSlug(): ?string {
        return $this->slug;
    }

    /**
     * Gets the tournamentId property value. Tournament ID.
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
        $writer->writeFloatValue('at', $this->getAt());
        $writer->writeEnumValue('kind', $this->getKind());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeStringValue('tournamentId', $this->getTournamentId());
    }

    /**
     * Sets the at property value. Milestone time (epoch milliseconds).
     * @param float|null $value Value to set for the at property.
    */
    public function setAt(?float $value): void {
        $this->at = $value;
    }

    /**
     * Sets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
     * @param TournamentCalendarEvent_kind|null $value Value to set for the kind property.
    */
    public function setKind(?TournamentCalendarEvent_kind $value): void {
        $this->kind = $value;
    }

    /**
     * Sets the name property value. Tournament display name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param string|null $value Value to set for the slug property.
    */
    public function setSlug(?string $value): void {
        $this->slug = $value;
    }

    /**
     * Sets the tournamentId property value. Tournament ID.
     * @param string|null $value Value to set for the tournamentId property.
    */
    public function setTournamentId(?string $value): void {
        $this->tournamentId = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A tournament roster the caller is personally on.
*/
class MyTournamentRosterEntry implements Parsable 
{
    /**
     * @var float|null $addedAt Time the caller was rostered (epoch milliseconds).
    */
    private ?float $addedAt = null;
    
    /**
     * @var string|null $participantId Participant whose roster the caller is on.
    */
    private ?string $participantId = null;
    
    /**
     * @var string|null $rosterEntryId Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
    */
    private ?string $rosterEntryId = null;
    
    /**
     * @var TournamentRosterSource|null $source How a player reached a participant's tournament roster.
    */
    private ?TournamentRosterSource $source = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentRosterEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentRosterEntry {
        return new MyTournamentRosterEntry();
    }

    /**
     * Gets the addedAt property value. Time the caller was rostered (epoch milliseconds).
     * @return float|null
    */
    public function getAddedAt(): ?float {
        return $this->addedAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'addedAt' => fn(ParseNode $n) => $o->setAddedAt($n->getFloatValue()),
            'participantId' => fn(ParseNode $n) => $o->setParticipantId($n->getStringValue()),
            'rosterEntryId' => fn(ParseNode $n) => $o->setRosterEntryId($n->getStringValue()),
            'source' => fn(ParseNode $n) => $o->setSource($n->getEnumValue(TournamentRosterSource::class)),
        ];
    }

    /**
     * Gets the participantId property value. Participant whose roster the caller is on.
     * @return string|null
    */
    public function getParticipantId(): ?string {
        return $this->participantId;
    }

    /**
     * Gets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
     * @return string|null
    */
    public function getRosterEntryId(): ?string {
        return $this->rosterEntryId;
    }

    /**
     * Gets the source property value. How a player reached a participant's tournament roster.
     * @return TournamentRosterSource|null
    */
    public function getSource(): ?TournamentRosterSource {
        return $this->source;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeFloatValue('addedAt', $this->getAddedAt());
        $writer->writeStringValue('participantId', $this->getParticipantId());
        $writer->writeStringValue('rosterEntryId', $this->getRosterEntryId());
        $writer->writeEnumValue('source', $this->getSource());
    }

    /**
     * Sets the addedAt property value. Time the caller was rostered (epoch milliseconds).
     * @param float|null $value Value to set for the addedAt property.
    */
    public function setAddedAt(?float $value): void {
        $this->addedAt = $value;
    }

    /**
     * Sets the participantId property value. Participant whose roster the caller is on.
     * @param string|null $value Value to set for the participantId property.
    */
    public function setParticipantId(?string $value): void {
        $this->participantId = $value;
    }

    /**
     * Sets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
     * @param string|null $value Value to set for the rosterEntryId property.
    */
    public function setRosterEntryId(?string $value): void {
        $this->rosterEntryId = $value;
    }

    /**
     * Sets the source property value. How a player reached a participant's tournament roster.
     * @param TournamentRosterSource|null $value Value to set for the source property.
    */
    public function setSource(?TournamentRosterSource $value): void {
        $this->source = $value;
    }

}

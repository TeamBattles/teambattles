<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * The API key owner's own state in one tournament.
*/
class MyTournamentEntry implements Parsable 
{
    /**
     * @var array<MyTournamentActableTeam>|null $actableTeams Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
    */
    private ?array $actableTeams = null;
    
    /**
     * @var MyTournamentFreeAgent|null $freeAgent The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
    */
    private ?MyTournamentFreeAgent $freeAgent = null;
    
    /**
     * @var array<MyTournamentInvite>|null $invites Every invite addressed to an actable team, in all four states.
    */
    private ?array $invites = null;
    
    /**
     * @var array<MyTournamentOffer>|null $offers Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
    */
    private ?array $offers = null;
    
    /**
     * @var array<MyTournamentParticipant>|null $participants Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
    */
    private ?array $participants = null;
    
    /**
     * @var bool|null $requiredConnectionMissing True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
    */
    private ?bool $requiredConnectionMissing = null;
    
    /**
     * @var array<MyTournamentRosterEntry>|null $rosterEntries Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
    */
    private ?array $rosterEntries = null;
    
    /**
     * @var string|null $slug The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
    */
    private ?string $slug = null;
    
    /**
     * @var string|null $tournamentId Tournament ID.
    */
    private ?string $tournamentId = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return MyTournamentEntry
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): MyTournamentEntry {
        return new MyTournamentEntry();
    }

    /**
     * Gets the actableTeams property value. Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
     * @return array<MyTournamentActableTeam>|null
    */
    public function getActableTeams(): ?array {
        return $this->actableTeams;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'actableTeams' => fn(ParseNode $n) => $o->setActableTeams($n->getCollectionOfObjectValues([MyTournamentActableTeam::class, 'createFromDiscriminatorValue'])),
            'freeAgent' => fn(ParseNode $n) => $o->setFreeAgent($n->getObjectValue([MyTournamentFreeAgent::class, 'createFromDiscriminatorValue'])),
            'invites' => fn(ParseNode $n) => $o->setInvites($n->getCollectionOfObjectValues([MyTournamentInvite::class, 'createFromDiscriminatorValue'])),
            'offers' => fn(ParseNode $n) => $o->setOffers($n->getCollectionOfObjectValues([MyTournamentOffer::class, 'createFromDiscriminatorValue'])),
            'participants' => fn(ParseNode $n) => $o->setParticipants($n->getCollectionOfObjectValues([MyTournamentParticipant::class, 'createFromDiscriminatorValue'])),
            'requiredConnectionMissing' => fn(ParseNode $n) => $o->setRequiredConnectionMissing($n->getBooleanValue()),
            'rosterEntries' => fn(ParseNode $n) => $o->setRosterEntries($n->getCollectionOfObjectValues([MyTournamentRosterEntry::class, 'createFromDiscriminatorValue'])),
            'slug' => fn(ParseNode $n) => $o->setSlug($n->getStringValue()),
            'tournamentId' => fn(ParseNode $n) => $o->setTournamentId($n->getStringValue()),
        ];
    }

    /**
     * Gets the freeAgent property value. The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
     * @return MyTournamentFreeAgent|null
    */
    public function getFreeAgent(): ?MyTournamentFreeAgent {
        return $this->freeAgent;
    }

    /**
     * Gets the invites property value. Every invite addressed to an actable team, in all four states.
     * @return array<MyTournamentInvite>|null
    */
    public function getInvites(): ?array {
        return $this->invites;
    }

    /**
     * Gets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
     * @return array<MyTournamentOffer>|null
    */
    public function getOffers(): ?array {
        return $this->offers;
    }

    /**
     * Gets the participants property value. Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
     * @return array<MyTournamentParticipant>|null
    */
    public function getParticipants(): ?array {
        return $this->participants;
    }

    /**
     * Gets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
     * @return bool|null
    */
    public function getRequiredConnectionMissing(): ?bool {
        return $this->requiredConnectionMissing;
    }

    /**
     * Gets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
     * @return array<MyTournamentRosterEntry>|null
    */
    public function getRosterEntries(): ?array {
        return $this->rosterEntries;
    }

    /**
     * Gets the slug property value. The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
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
        $writer->writeCollectionOfObjectValues('actableTeams', $this->getActableTeams());
        $writer->writeObjectValue('freeAgent', $this->getFreeAgent());
        $writer->writeCollectionOfObjectValues('invites', $this->getInvites());
        $writer->writeCollectionOfObjectValues('offers', $this->getOffers());
        $writer->writeCollectionOfObjectValues('participants', $this->getParticipants());
        $writer->writeBooleanValue('requiredConnectionMissing', $this->getRequiredConnectionMissing());
        $writer->writeCollectionOfObjectValues('rosterEntries', $this->getRosterEntries());
        $writer->writeStringValue('slug', $this->getSlug());
        $writer->writeStringValue('tournamentId', $this->getTournamentId());
    }

    /**
     * Sets the actableTeams property value. Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
     * @param array<MyTournamentActableTeam>|null $value Value to set for the actableTeams property.
    */
    public function setActableTeams(?array $value): void {
        $this->actableTeams = $value;
    }

    /**
     * Sets the freeAgent property value. The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
     * @param MyTournamentFreeAgent|null $value Value to set for the freeAgent property.
    */
    public function setFreeAgent(?MyTournamentFreeAgent $value): void {
        $this->freeAgent = $value;
    }

    /**
     * Sets the invites property value. Every invite addressed to an actable team, in all four states.
     * @param array<MyTournamentInvite>|null $value Value to set for the invites property.
    */
    public function setInvites(?array $value): void {
        $this->invites = $value;
    }

    /**
     * Sets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
     * @param array<MyTournamentOffer>|null $value Value to set for the offers property.
    */
    public function setOffers(?array $value): void {
        $this->offers = $value;
    }

    /**
     * Sets the participants property value. Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
     * @param array<MyTournamentParticipant>|null $value Value to set for the participants property.
    */
    public function setParticipants(?array $value): void {
        $this->participants = $value;
    }

    /**
     * Sets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
     * @param bool|null $value Value to set for the requiredConnectionMissing property.
    */
    public function setRequiredConnectionMissing(?bool $value): void {
        $this->requiredConnectionMissing = $value;
    }

    /**
     * Sets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
     * @param array<MyTournamentRosterEntry>|null $value Value to set for the rosterEntries property.
    */
    public function setRosterEntries(?array $value): void {
        $this->rosterEntries = $value;
    }

    /**
     * Sets the slug property value. The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
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

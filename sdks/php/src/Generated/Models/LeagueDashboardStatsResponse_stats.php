<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class LeagueDashboardStatsResponse_stats implements Parsable 
{
    /**
     * @var int|null $activeSeasons The activeSeasons property
    */
    private ?int $activeSeasons = null;
    
    /**
     * @var int|null $openTickets The openTickets property
    */
    private ?int $openTickets = null;
    
    /**
     * @var int|null $pendingApplications The pendingApplications property
    */
    private ?int $pendingApplications = null;
    
    /**
     * @var int|null $teamCount The teamCount property
    */
    private ?int $teamCount = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueDashboardStatsResponse_stats
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueDashboardStatsResponse_stats {
        return new LeagueDashboardStatsResponse_stats();
    }

    /**
     * Gets the activeSeasons property value. The activeSeasons property
     * @return int|null
    */
    public function getActiveSeasons(): ?int {
        return $this->activeSeasons;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'activeSeasons' => fn(ParseNode $n) => $o->setActiveSeasons($n->getIntegerValue()),
            'openTickets' => fn(ParseNode $n) => $o->setOpenTickets($n->getIntegerValue()),
            'pendingApplications' => fn(ParseNode $n) => $o->setPendingApplications($n->getIntegerValue()),
            'teamCount' => fn(ParseNode $n) => $o->setTeamCount($n->getIntegerValue()),
        ];
    }

    /**
     * Gets the openTickets property value. The openTickets property
     * @return int|null
    */
    public function getOpenTickets(): ?int {
        return $this->openTickets;
    }

    /**
     * Gets the pendingApplications property value. The pendingApplications property
     * @return int|null
    */
    public function getPendingApplications(): ?int {
        return $this->pendingApplications;
    }

    /**
     * Gets the teamCount property value. The teamCount property
     * @return int|null
    */
    public function getTeamCount(): ?int {
        return $this->teamCount;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('activeSeasons', $this->getActiveSeasons());
        $writer->writeIntegerValue('openTickets', $this->getOpenTickets());
        $writer->writeIntegerValue('pendingApplications', $this->getPendingApplications());
        $writer->writeIntegerValue('teamCount', $this->getTeamCount());
    }

    /**
     * Sets the activeSeasons property value. The activeSeasons property
     * @param int|null $value Value to set for the activeSeasons property.
    */
    public function setActiveSeasons(?int $value): void {
        $this->activeSeasons = $value;
    }

    /**
     * Sets the openTickets property value. The openTickets property
     * @param int|null $value Value to set for the openTickets property.
    */
    public function setOpenTickets(?int $value): void {
        $this->openTickets = $value;
    }

    /**
     * Sets the pendingApplications property value. The pendingApplications property
     * @param int|null $value Value to set for the pendingApplications property.
    */
    public function setPendingApplications(?int $value): void {
        $this->pendingApplications = $value;
    }

    /**
     * Sets the teamCount property value. The teamCount property
     * @param int|null $value Value to set for the teamCount property.
    */
    public function setTeamCount(?int $value): void {
        $this->teamCount = $value;
    }

}

<?php

namespace TeamBattles\Sdk\Generated\Tournaments\Item\FreeAgents;

/**
 * Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
*/
class FreeAgentsRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $viewerParticipantId Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
    */
    public ?string $viewerParticipantId = null;
    
    /**
     * Instantiates a new FreeAgentsRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $viewerParticipantId Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
    */
    public function __construct(?string $viewerParticipantId = null) {
        $this->viewerParticipantId = $viewerParticipantId;
    }

}

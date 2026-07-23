module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
            TournamentFreeAgentOfferStatus = {
                PENDING: :PENDING,
                ACCEPTED: :ACCEPTED,
                DECLINED: :DECLINED,
                EXPIRED: :EXPIRED,
                REVOKED: :REVOKED,
            }
        end
    end
end

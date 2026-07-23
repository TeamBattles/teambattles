module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
            TournamentParticipantStatus = {
                PENDING: :PENDING,
                APPROVED: :APPROVED,
                DENIED: :DENIED,
                WITHDRAWN: :WITHDRAWN,
                REMOVED: :REMOVED,
                DISQUALIFIED: :DISQUALIFIED,
            }
        end
    end
end

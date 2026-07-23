module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
            TournamentPlacementPointsError = {
                EMPTY: :EMPTY,
                ALL_ZERO: :ALL_ZERO,
                TOO_MANY_ROWS: :TOO_MANY_ROWS,
                BAD_PLACEMENT: :BAD_PLACEMENT,
                BAD_POINTS: :BAD_POINTS,
                DUPLICATE: :DUPLICATE,
                NOT_ASCENDING: :NOT_ASCENDING,
            }
        end
    end
end

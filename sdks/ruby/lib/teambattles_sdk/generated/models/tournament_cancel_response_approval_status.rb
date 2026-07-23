module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The tournament's approval status as of this request's authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
            TournamentCancelResponseApprovalStatus = {
                NOT_SUBMITTED: :NOT_SUBMITTED,
                AWAITING_APPROVAL: :AWAITING_APPROVAL,
                APPROVED: :APPROVED,
                REJECTED: :REJECTED,
            }
        end
    end
end

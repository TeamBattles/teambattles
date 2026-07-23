module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
            TournamentUpdateResponseApprovalStatus = {
                NOT_SUBMITTED: :NOT_SUBMITTED,
                AWAITING_APPROVAL: :AWAITING_APPROVAL,
                APPROVED: :APPROVED,
                REJECTED: :REJECTED,
            }
        end
    end
end

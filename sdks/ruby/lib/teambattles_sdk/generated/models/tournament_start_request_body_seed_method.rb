module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
            TournamentStartRequestBodySeedMethod = {
                Manual: :Manual,
                Random: :Random,
                Registration: :Registration,
            }
        end
    end
end

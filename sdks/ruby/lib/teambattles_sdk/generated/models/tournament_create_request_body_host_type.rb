module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
            TournamentCreateRequestBodyHostType = {
                User: :User,
                Org: :Org,
                League: :League,
            }
        end
    end
end

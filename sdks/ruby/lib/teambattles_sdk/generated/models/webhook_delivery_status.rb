module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Lifecycle status of one logical delivery (endpoint x idempotency id).
            WebhookDeliveryStatus = {
                Pending: :Pending,
                Delivering: :Delivering,
                Delivered: :Delivered,
                Failed: :Failed,
                Dead_lettered: :Dead_lettered,
            }
        end
    end
end

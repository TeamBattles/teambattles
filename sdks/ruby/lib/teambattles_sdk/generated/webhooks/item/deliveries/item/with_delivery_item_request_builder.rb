require 'microsoft_kiota_abstractions'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../webhooks'
require_relative '../../item'
require_relative '../deliveries'
require_relative './item'
require_relative './replay/replay_request_builder'

module TeamBattlesSdk
    module Generated
        module Webhooks
            module Item
                module Deliveries
                    module Item
                        ##
                        # Builds and executes requests for operations under #webhooks#{id}#deliveries#{deliveryId}
                        class WithDeliveryItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                            ##
                            # The replay property
                            def replay()
                                return TeamBattlesSdk::Generated::Webhooks::Item::Deliveries::Item::Replay::ReplayRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ##
                            ## Instantiates a new WithDeliveryItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ##
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}")
                            end
                        end
                    end
                end
            end
        end
    end
end

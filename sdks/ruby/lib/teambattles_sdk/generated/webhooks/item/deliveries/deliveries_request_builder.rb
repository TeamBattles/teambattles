require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../webhooks'
require_relative '../item'
require_relative './deliveries'
require_relative './item/with_delivery_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Webhooks
            module Item
                module Deliveries
                    ## 
                    # Builds and executes requests for operations under #webhooks#{id}#deliveries
                    class DeliveriesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.webhooks.item.deliveries.item collection
                        ## @param delivery_id Delivery-log row id to replay.
                        ## @return a with_delivery_item_request_builder
                        ## 
                        def by_delivery_id(delivery_id)
                            raise StandardError, 'delivery_id cannot be null' if delivery_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["deliveryId"] = delivery_id
                            return TeamBattlesSdk::Generated::Webhooks::Item::Deliveries::Item::WithDeliveryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DeliveriesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/webhooks/{id}/deliveries{?cursor*,limit*}")
                        end
                        ## 
                        ## Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of deliveries_get_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Webhooks::Item::Deliveries::DeliveriesGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a deliveries_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return DeliveriesRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
                        class DeliveriesRequestBuilderGetQueryParameters
                            
                            ## 
                            # Opaque continuation cursor from a prior page's continueCursor.
                            attr_accessor :cursor
                            ## 
                            # Page size 1-100 (default 25), enforced by the handler.
                            attr_accessor :limit
                        end
                    end
                end
            end
        end
    end
end

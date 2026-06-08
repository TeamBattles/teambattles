require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/update_webhook_body'
require_relative '../../models/webhook_endpoint'
require_relative '../../models/webhook_ok'
require_relative '../../team_battles_sdk::_generated'
require_relative '../webhooks'
require_relative './deliveries/deliveries_request_builder'
require_relative './item'
require_relative './rotate_secret/rotate_secret_request_builder'
require_relative './test/test_request_builder'

module TeamBattlesSdk
    module Generated
        module Webhooks
            module Item
                ## 
                # Builds and executes requests for operations under #webhooks#{id}
                class WebhooksItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The deliveries property
                    def deliveries()
                        return TeamBattlesSdk::Generated::Webhooks::Item::Deliveries::DeliveriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The rotateSecret property
                    def rotate_secret()
                        return TeamBattlesSdk::Generated::Webhooks::Item::RotateSecret::RotateSecretRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The test property
                    def test()
                        return TeamBattlesSdk::Generated::Webhooks::Item::Test::TestRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WebhooksItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/webhooks/{id}")
                    end
                    ## 
                    ## Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of webhook_ok
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookOk.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of webhook_endpoint
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookEndpoint.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param body Partial update of a webhook endpoint.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of webhook_ok
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookOk.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
                    ## @param body Partial update of a webhook endpoint.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a webhooks_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WebhooksItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

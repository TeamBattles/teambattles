require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/webhook_test_result'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../webhooks'
require_relative '../item'
require_relative './test'

module TeamBattlesSdk
    module Generated
        module Webhooks
            module Item
                module Test
                    ##
                    # Builds and executes requests for operations under #webhooks#{id}#test
                    class TestRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                        ##
                        ## Instantiates a new TestRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ##
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/webhooks/{id}/test")
                        end
                        ##
                        ## Sends a single signed test.ping delivery (no retries) and logs it. Use it to verify your endpoint and signature handling. Requires the webhooks.manage permission and the webhooks feature.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of webhook_test_result
                        ##
                        def post(request_configuration=nil)
                            request_info = self.to_post_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookTestResult.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ##
                        ## Sends a single signed test.ping delivery (no retries) and logs it. Use it to verify your endpoint and signature handling. Requires the webhooks.manage permission and the webhooks feature.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ##
                        def to_post_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ##
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a test_request_builder
                        ##
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return TestRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

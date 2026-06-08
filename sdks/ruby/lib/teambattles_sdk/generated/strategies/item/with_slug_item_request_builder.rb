require 'microsoft_kiota_abstractions'
require_relative '../../models/api_strategy_envelope'
require_relative '../../models/error'
require_relative '../../team_battles_sdk::_generated'
require_relative '../strategies'
require_relative './item'
require_relative './shapes/shapes_request_builder'

module TeamBattlesSdk
    module Generated
        module Strategies
            module Item
                ## 
                # Builds and executes requests for operations under #strategies#{slug}
                class WithSlugItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The shapes property
                    def shapes()
                        return TeamBattlesSdk::Generated::Strategies::Item::Shapes::ShapesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithSlugItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/strategies/{slug}")
                    end
                    ## 
                    ## Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of api_strategy_envelope
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStrategyEnvelope.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
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
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a with_slug_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithSlugItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

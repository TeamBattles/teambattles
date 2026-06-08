require 'microsoft_kiota_abstractions'
require_relative '../models/create_webhook_body'
require_relative '../models/error'
require_relative '../models/webhook_list_response'
require_relative '../models/webhook_secret'
require_relative '../team_battles_sdk::_generated'
require_relative './item/webhooks_item_request_builder'
require_relative './webhooks'

module TeamBattlesSdk
    module Generated
        module Webhooks
            ## 
            # Builds and executes requests for operations under #webhooks
            class WebhooksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.webhooks.item collection
                ## @param id Webhook endpoint id.
                ## @return a webhooks_item_request_builder
                ## 
                def by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["id"] = id
                    return TeamBattlesSdk::Generated::Webhooks::Item::WebhooksItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new WebhooksRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/webhooks")
                end
                ## 
                ## Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of webhook_list_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookListResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
                ## @param body Create a webhook endpoint in the caller's scope.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of webhook_secret
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookSecret.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
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
                ## Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
                ## @param body Create a webhook endpoint in the caller's scope.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_post_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a webhooks_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return WebhooksRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end

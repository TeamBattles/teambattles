require 'microsoft_kiota_abstractions'
require_relative '../../models/api_batch_stream_status_body'
require_relative '../../models/api_batch_stream_status_envelope'
require_relative '../../models/error'
require_relative '../../team_battles_sdk::_generated'
require_relative '../streams'
require_relative './live_status'

module TeamBattlesSdk
    module Generated
        module Streams
            module LiveStatus
                ## 
                # Builds and executes requests for operations under #streams#live-status
                class LiveStatusRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new LiveStatusRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/streams/live-status")
                    end
                    ## 
                    ## Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
                    ## @param body Batch live-status request body.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of api_batch_stream_status_envelope
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
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::ApiBatchStreamStatusEnvelope.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
                    ## @param body Batch live-status request body.
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
                    ## @return a live_status_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return LiveStatusRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

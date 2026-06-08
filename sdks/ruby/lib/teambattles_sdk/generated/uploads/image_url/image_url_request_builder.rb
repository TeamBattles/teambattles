require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/image_upload_url_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../uploads'
require_relative './image_url'

module TeamBattlesSdk
    module Generated
        module Uploads
            module ImageUrl
                ## 
                # Builds and executes requests for operations under #uploads#image-url
                class ImageUrlRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new ImageUrlRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/uploads/image-url")
                    end
                    ## 
                    ## Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of image_upload_url_response
                    ## 
                    def post(request_configuration=nil)
                        request_info = self.to_post_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::ImageUploadUrlResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
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
                    ## @return a image_url_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return ImageUrlRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

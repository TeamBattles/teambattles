require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './image_url/image_url_request_builder'
require_relative './uploads'

module TeamBattlesSdk
    module Generated
        module Uploads
            ## 
            # Builds and executes requests for operations under #uploads
            class UploadsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The imageUrl property
                def image_url()
                    return TeamBattlesSdk::Generated::Uploads::ImageUrl::ImageUrlRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new UploadsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/uploads")
                end
            end
        end
    end
end

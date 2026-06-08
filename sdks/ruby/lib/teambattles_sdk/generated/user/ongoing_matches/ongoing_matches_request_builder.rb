require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/ongoing_matches_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../user'
require_relative './ongoing_matches'

module TeamBattlesSdk
    module Generated
        module User
            module OngoingMatches
                ## 
                # Builds and executes requests for operations under #user#ongoing-matches
                class OngoingMatchesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new OngoingMatchesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/user/ongoing-matches")
                    end
                    ## 
                    ## Returns published ACCEPTED, READY, and IN_PROGRESS matches for active teams the API key owner belongs to. The user is always derived from the API key. Requires matches.user_matches:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of ongoing_matches_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::OngoingMatchesResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns published ACCEPTED, READY, and IN_PROGRESS matches for active teams the API key owner belongs to. The user is always derived from the API key. Requires matches.user_matches:read.
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
                    ## @return a ongoing_matches_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return OngoingMatchesRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

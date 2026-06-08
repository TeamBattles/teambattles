require 'microsoft_kiota_abstractions'
require_relative '../models/discover_leagues_request_body'
require_relative '../models/error'
require_relative '../team_battles_sdk::_generated'
require_relative './item/with_identifier_item_request_builder'
require_relative './leagues'
require_relative './templates/templates_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            ## 
            # Builds and executes requests for operations under #leagues
            class LeaguesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The templates property
                def templates()
                    return TeamBattlesSdk::Generated::Leagues::Templates::TemplatesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Gets an item from the TeamBattlesSdk::Generated.leagues.item collection
                ## @param identifier League slug or Convex league ID.
                ## @return a with_identifier_item_request_builder
                ## 
                def by_identifier(identifier)
                    raise StandardError, 'identifier cannot be null' if identifier.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["identifier"] = identifier
                    return TeamBattlesSdk::Generated::Leagues::Item::WithIdentifierItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new LeaguesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/leagues")
                end
                ## 
                ## Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
                ## @param body Filters and offset pagination for discovering leagues.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of leagues_post_response
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
                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Leagues::LeaguesPostResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
                ## @param body Filters and offset pagination for discovering leagues.
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
                ## @return a leagues_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return LeaguesRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end

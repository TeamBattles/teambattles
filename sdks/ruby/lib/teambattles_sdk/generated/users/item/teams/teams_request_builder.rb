require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../users'
require_relative '../item'
require_relative './teams'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                module Teams
                    ## 
                    # Builds and executes requests for operations under #users#{identifier}#teams
                    class TeamsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new TeamsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{identifier}/teams")
                        end
                        ## 
                        ## Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of teams_get_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Users::Item::Teams::TeamsGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the user's active team memberships as a non-paginated list with a count and response timestamp - there is no cursor, limit, or sort parameter, and rows come back in storage order. Each row is an API-safe team summary plus the membership role, joinedAt, and the team's parent organization (null when the team has no organization). Only active memberships are included. Requires the target profile to be public or limited (a private profile returns 403); the requester always sees their own affiliations regardless of visibility. For any profile other than your own, only teams that belong to a public organization are returned - teams in a private or organization-less context are omitted. Banned or unknown identifiers return 404. The identifier may be a username or a Convex user ID. Requires the users.profile:read scope.
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
                        ## @return a teams_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return TeamsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../users'
require_relative '../item'
require_relative './connections'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                module Connections
                    ## 
                    # Builds and executes requests for operations under #users#{identifier}#connections
                    class ConnectionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new ConnectionsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{identifier}/connections")
                        end
                        ## 
                        ## Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of connections_get_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Users::Item::Connections::ConnectionsGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns a user's linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection's platform matches one of the user's linked OAuth providers, not the connection's self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
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
                        ## @return a connections_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ConnectionsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

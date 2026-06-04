require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/twitch_channel_badges'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../twitch'
require_relative '../badges'
require_relative './channel'

module TeamBattlesSdk
    module Generated
        module Twitch
            module Badges
                module Channel
                    ## 
                    # Builds and executes requests for operations under #twitch#badges#channel
                    class ChannelRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new ChannelRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/twitch/badges/channel{?id*,username*}")
                        end
                        ## 
                        ## Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of twitch_channel_badges
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchChannelBadges.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
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
                        ## @return a channel_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ChannelRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
                        class ChannelRequestBuilderGetQueryParameters
                            
                            ## 
                            # Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
                            attr_accessor :id
                            ## 
                            # Channel login name (e.g. ninja). Provide exactly one of username or id.
                            attr_accessor :username
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/twitch_stream_history'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../twitch'
require_relative '../streams'
require_relative './history'

module TeamBattlesSdk
    module Generated
        module Twitch
            module Streams
                module History
                    ## 
                    # Builds and executes requests for operations under #twitch#streams#history
                    class HistoryRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new HistoryRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/twitch/streams/history{?id*,username*}")
                        end
                        ## 
                        ## Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of twitch_stream_history
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["503"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchStreamHistory.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
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
                        ## @return a history_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return HistoryRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
                        class HistoryRequestBuilderGetQueryParameters
                            
                            ## 
                            # Twitch user id (e.g. 71092938). Provide exactly one of username or id.
                            attr_accessor :id
                            ## 
                            # Channel login (e.g. xqc). Provide exactly one of username or id.
                            attr_accessor :username
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/stream_signals_body'
require_relative '../../../models/twitch_stream_signals_result'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../twitch'
require_relative '../streams'
require_relative './signals'

module TeamBattlesSdk
    module Generated
        module Twitch
            module Streams
                module Signals
                    ## 
                    # Builds and executes requests for operations under #twitch#streams#signals
                    class SignalsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new SignalsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/twitch/streams/signals")
                        end
                        ## 
                        ## Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
                        ## @param body Twitch channels to keep recording, each with why it matters to a user.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of twitch_stream_signals_result
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["503"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchStreamSignalsResult.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
                        ## @param body Twitch channels to keep recording, each with why it matters to a user.
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
                        ## @return a signals_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return SignalsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/report_chat_message_request_body'
require_relative '../../../../models/report_chat_message_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../chat'
require_relative '../../messages'
require_relative '../item'
require_relative './report'

module TeamBattlesSdk
    module Generated
        module Chat
            module Messages
                module Item
                    module Report
                        ## 
                        # Builds and executes requests for operations under #chat#messages#{messageId}#report
                        class ReportRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new ReportRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/chat/messages/{messageId}/report")
                            end
                            ## 
                            ## Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
                            ## @param body Reports a chat message for staff moderation review.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of report_chat_message_response
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
                                error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["409"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::ReportChatMessageResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
                            ## @param body Reports a chat message for staff moderation review.
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
                            ## @return a report_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return ReportRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

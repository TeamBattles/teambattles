require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/transfer_team_captaincy_body'
require_relative '../../../../models/transfer_team_captaincy_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../teams'
require_relative '../../item'
require_relative '../captaincy'
require_relative './transfer'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                module Captaincy
                    module Transfer
                        ## 
                        # Builds and executes requests for operations under #teams#{identifier}#captaincy#transfer
                        class TransferRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new TransferRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}/captaincy/transfer")
                            end
                            ## 
                            ## Transfers team captaincy from the caller (key owner) to another active member, who becomes the new captain. The caller must currently be the team captain and is demoted to co-captain. Requires teams.roster:read-write.
                            ## @param body Transfer team captaincy to another member.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of transfer_team_captaincy_response
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
                                error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TransferTeamCaptaincyResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Transfers team captaincy from the caller (key owner) to another active member, who becomes the new captain. The caller must currently be the team captain and is demoted to co-captain. Requires teams.roster:read-write.
                            ## @param body Transfer team captaincy to another member.
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
                            ## @return a transfer_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return TransferRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

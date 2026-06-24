require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/transfer_org_ownership_body'
require_relative '../../../../models/transfer_org_ownership_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../orgs'
require_relative '../../item'
require_relative '../ownership'
require_relative './transfer'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                module Ownership
                    module Transfer
                        ## 
                        # Builds and executes requests for operations under #orgs#{identifier}#ownership#transfer
                        class TransferRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new TransferRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/orgs/{identifier}/ownership/transfer")
                            end
                            ## 
                            ## Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
                            ## @param body Transfer organization ownership to another member.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of transfer_org_ownership_response
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
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TransferOrgOwnershipResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Transfers organization ownership from the caller (key owner) to another active member, who becomes the new owner. The caller must currently be the organization owner and is demoted to admin. Requires orgs.roster:read-write.
                            ## @param body Transfer organization ownership to another member.
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

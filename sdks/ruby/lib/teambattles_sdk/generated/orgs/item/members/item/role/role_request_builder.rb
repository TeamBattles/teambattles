require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/error'
require_relative '../../../../../models/set_org_member_role_body'
require_relative '../../../../../models/set_org_member_role_response'
require_relative '../../../../../team_battles_sdk::_generated'
require_relative '../../../../orgs'
require_relative '../../../item'
require_relative '../../members'
require_relative '../item'
require_relative './role'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                module Members
                    module Item
                        module Role
                            ## 
                            # Builds and executes requests for operations under #orgs#{identifier}#members#{userId}#role
                            class RoleRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new RoleRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/orgs/{identifier}/members/{userId}/role")
                                end
                                ## 
                                ## Sets an organization member's role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
                                ## @param body Set an organization member's role.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of set_org_member_role_response
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::SetOrgMemberRoleResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Sets an organization member's role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
                                ## @param body Set an organization member's role.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_patch_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a role_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return RoleRequestBuilder.new(raw_url, @request_adapter)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

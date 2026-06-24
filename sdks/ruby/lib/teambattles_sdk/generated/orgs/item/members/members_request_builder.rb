require 'microsoft_kiota_abstractions'
require_relative '../../../models/add_org_member_body'
require_relative '../../../models/add_org_member_response'
require_relative '../../../models/error'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../orgs'
require_relative '../item'
require_relative './item/with_user_item_request_builder'
require_relative './members'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                module Members
                    ## 
                    # Builds and executes requests for operations under #orgs#{identifier}#members
                    class MembersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.orgs.item.members.item collection
                        ## @param user_id Convex user ID of the member to remove.
                        ## @return a with_user_item_request_builder
                        ## 
                        def by_user_id(user_id)
                            raise StandardError, 'user_id cannot be null' if user_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["userId"] = user_id
                            return TeamBattlesSdk::Generated::Orgs::Item::Members::Item::WithUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new MembersRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/orgs/{identifier}/members")
                        end
                        ## 
                        ## Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of members_get_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Orgs::Item::Members::MembersGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
                        ## @param body Add a member to the organization.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of add_org_member_response
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::AddOrgMemberResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
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
                        ## Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
                        ## @param body Add a member to the organization.
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
                        ## @return a members_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return MembersRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

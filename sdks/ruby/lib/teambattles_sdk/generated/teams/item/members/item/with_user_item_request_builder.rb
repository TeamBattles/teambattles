require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/remove_team_member_response'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../teams'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './role/role_request_builder'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                module Members
                    module Item
                        ## 
                        # Builds and executes requests for operations under #teams#{identifier}#members#{userId}
                        class WithUserItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # The role property
                            def role()
                                return TeamBattlesSdk::Generated::Teams::Item::Members::Item::Role::RoleRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new WithUserItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}/members/{userId}")
                            end
                            ## 
                            ## Removes a member from a team, or removes yourself to leave it. To remove another member, the caller (key owner) must be the team captain or co-captain; any member may remove themselves. The team captain cannot be removed this way - disband the team or transfer captaincy first. Requires teams.roster:read-write.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of remove_team_member_response
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::RemoveTeamMemberResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Removes a member from a team, or removes yourself to leave it. To remove another member, the caller (key owner) must be the team captain or co-captain; any member may remove themselves. The team captain cannot be removed this way - disband the team or transfer captaincy first. Requires teams.roster:read-write.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a with_user_item_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return WithUserItemRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end

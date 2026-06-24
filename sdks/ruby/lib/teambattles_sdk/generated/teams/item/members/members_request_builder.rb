require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../teams'
require_relative '../item'
require_relative './item/with_user_item_request_builder'
require_relative './members'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                module Members
                    ## 
                    # Builds and executes requests for operations under #teams#{identifier}#members
                    class MembersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.teams.item.members.item collection
                        ## @param user_id Convex user ID of the member to remove.
                        ## @return a with_user_item_request_builder
                        ## 
                        def by_user_id(user_id)
                            raise StandardError, 'user_id cannot be null' if user_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["userId"] = user_id
                            return TeamBattlesSdk::Generated::Teams::Item::Members::Item::WithUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new MembersRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}/members")
                        end
                        ## 
                        ## Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Teams::Item::Members::MembersGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row's id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
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

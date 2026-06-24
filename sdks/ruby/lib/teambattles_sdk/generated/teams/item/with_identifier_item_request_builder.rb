require 'microsoft_kiota_abstractions'
require_relative '../../models/disband_team_response'
require_relative '../../models/error'
require_relative '../../models/update_team_body'
require_relative '../../models/update_team_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../teams'
require_relative './captaincy/captaincy_request_builder'
require_relative './item'
require_relative './matches/matches_request_builder'
require_relative './members/members_request_builder'

module TeamBattlesSdk
    module Generated
        module Teams
            module Item
                ## 
                # Builds and executes requests for operations under #teams#{identifier}
                class WithIdentifierItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The captaincy property
                    def captaincy()
                        return TeamBattlesSdk::Generated::Teams::Item::Captaincy::CaptaincyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The matches property
                    def matches()
                        return TeamBattlesSdk::Generated::Teams::Item::Matches::MatchesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The members property
                    def members()
                        return TeamBattlesSdk::Generated::Teams::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/teams/{identifier}")
                    end
                    ## 
                    ## Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of disband_team_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::DisbandTeamResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of with_identifier_get_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Teams::Item::WithIdentifierGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
                    ## @param body Fields to update on the team. All optional.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of update_team_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::UpdateTeamResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
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
                    ## Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
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
                    ## Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
                    ## @param body Fields to update on the team. All optional.
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
                    ## @return a with_identifier_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WithIdentifierItemRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

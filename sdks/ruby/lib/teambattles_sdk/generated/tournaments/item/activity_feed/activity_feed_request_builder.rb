require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/tournament_activity_feed_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../tournaments'
require_relative '../item'
require_relative './activity_feed'

module TeamBattlesSdk
    module Generated
        module Tournaments
            module Item
                module ActivityFeed
                    ## 
                    # Builds and executes requests for operations under #tournaments#{identifier}#activity-feed
                    class ActivityFeedRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new ActivityFeedRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}")
                        end
                        ## 
                        ## Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of tournament_activity_feed_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["400"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentActivityFeedResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
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
                        ## @return a activity_feed_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ActivityFeedRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
                        class ActivityFeedRequestBuilderGetQueryParameters
                            
                            ## 
                            # Maximum entries to return, 1-100. Defaults to 50.
                            attr_accessor :limit
                        end
                    end
                end
            end
        end
    end
end

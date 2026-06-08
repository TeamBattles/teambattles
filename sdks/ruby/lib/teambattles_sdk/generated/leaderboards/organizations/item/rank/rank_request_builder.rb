require 'microsoft_kiota_abstractions'
require_relative '../../../../models/error'
require_relative '../../../../models/leaderboard_rank_response'
require_relative '../../../../models/leaderboard_sort_by'
require_relative '../../../../team_battles_sdk::_generated'
require_relative '../../../leaderboards'
require_relative '../../organizations'
require_relative '../item'
require_relative './rank'

module TeamBattlesSdk
    module Generated
        module Leaderboards
            module Organizations
                module Item
                    module Rank
                        ## 
                        # Builds and executes requests for operations under #leaderboards#organizations#{identifier}#rank
                        class RankRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new RankRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/leaderboards/organizations/{identifier}/rank{?gameSlug*,sortBy*}")
                            end
                            ## 
                            ## Returns an organization's rank for the requested leaderboard filters. Organization stats are computed from active, enabled, non-private teams. Requires orgs.profile:read.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of leaderboard_rank_response
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
                                return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::LeaderboardRankResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Returns an organization's rank for the requested leaderboard filters. Organization stats are computed from active, enabled, non-private teams. Requires orgs.profile:read.
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
                            ## @return a rank_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return RankRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # Returns an organization's rank for the requested leaderboard filters. Organization stats are computed from active, enabled, non-private teams. Requires orgs.profile:read.
                            class RankRequestBuilderGetQueryParameters
                                
                                attr_accessor :game_slug
                                attr_accessor :sort_by
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param original_name The original query parameter name in the class.
                                ## @return a string
                                ## 
                                def get_query_parameter(original_name)
                                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                                    case original_name
                                        when "game_slug"
                                            return "gameSlug"
                                        when "sort_by"
                                            return "sortBy"
                                        else
                                            return original_name
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

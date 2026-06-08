require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/league_seasons'
require_relative '../../../models/seasons_request_body'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './create/create_request_builder'
require_relative './item/with_season_item_request_builder'
require_relative './seasons'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Seasons
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#seasons
                    class SeasonsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The create property
                        def create()
                            return TeamBattlesSdk::Generated::Leagues::Item::Seasons::Create::CreateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.seasons.item collection
                        ## @param season_id League season ID.
                        ## @return a with_season_item_request_builder
                        ## 
                        def by_season_id(season_id)
                            raise StandardError, 'season_id cannot be null' if season_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["seasonId"] = season_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Seasons::Item::WithSeasonItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new SeasonsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/seasons")
                        end
                        ## 
                        ## Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
                        ## @param body Game and status filters for league seasons.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of league_seasons
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
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSeasons.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
                        ## @param body Game and status filters for league seasons.
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
                        ## @return a seasons_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return SeasonsRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

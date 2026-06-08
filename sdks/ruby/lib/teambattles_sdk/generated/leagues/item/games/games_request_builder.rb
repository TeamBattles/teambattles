require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/league_games'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../leagues'
require_relative '../item'
require_relative './add/add_request_builder'
require_relative './games'
require_relative './item/with_league_game_item_request_builder'

module TeamBattlesSdk
    module Generated
        module Leagues
            module Item
                module Games
                    ## 
                    # Builds and executes requests for operations under #leagues#{identifier}#games
                    class GamesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # The add property
                        def add()
                            return TeamBattlesSdk::Generated::Leagues::Item::Games::Add::AddRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Gets an item from the TeamBattlesSdk::Generated.leagues.item.games.item collection
                        ## @param league_game_id League game link ID.
                        ## @return a with_league_game_item_request_builder
                        ## 
                        def by_league_game_id(league_game_id)
                            raise StandardError, 'league_game_id cannot be null' if league_game_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["leagueGameId"] = league_game_id
                            return TeamBattlesSdk::Generated::Leagues::Item::Games::Item::WithLeagueGameItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new GamesRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/leagues/{identifier}/games")
                        end
                        ## 
                        ## Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of league_games
                        ## 
                        def post(request_configuration=nil)
                            request_info = self.to_post_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueGames.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a games_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return GamesRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

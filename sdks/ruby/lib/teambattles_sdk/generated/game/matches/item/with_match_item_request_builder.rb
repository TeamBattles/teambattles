require 'microsoft_kiota_abstractions'
require_relative '../../../models/error'
require_relative '../../../models/game_match_detail_response'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../game'
require_relative '../matches'
require_relative './forfeit/forfeit_request_builder'
require_relative './item'
require_relative './player_stats/player_stats_request_builder'
require_relative './rosters/rosters_request_builder'
require_relative './scores/scores_request_builder'
require_relative './status/status_request_builder'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                module Item
                    ##
                    # Builds and executes requests for operations under #game#matches#{matchId}
                    class WithMatchItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                        ##
                        # The forfeit property
                        def forfeit()
                            return TeamBattlesSdk::Generated::Game::Matches::Item::Forfeit::ForfeitRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        # The playerStats property
                        def player_stats()
                            return TeamBattlesSdk::Generated::Game::Matches::Item::PlayerStats::PlayerStatsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        # The rosters property
                        def rosters()
                            return TeamBattlesSdk::Generated::Game::Matches::Item::Rosters::RostersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        # The scores property
                        def scores()
                            return TeamBattlesSdk::Generated::Game::Matches::Item::Scores::ScoresRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        # The status property
                        def status()
                            return TeamBattlesSdk::Generated::Game::Matches::Item::Status::StatusRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ##
                        ## Instantiates a new WithMatchItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ##
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/game/matches/{matchId}")
                        end
                        ##
                        ## Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of game_match_detail_response
                        ##
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameMatchDetailResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ##
                        ## Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
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
                        ## @return a with_match_item_request_builder
                        ##
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return WithMatchItemRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end

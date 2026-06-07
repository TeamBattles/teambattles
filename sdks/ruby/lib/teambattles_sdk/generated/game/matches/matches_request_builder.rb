require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/list_game_matches_body'
require_relative '../../team_battles_sdk::_generated'
require_relative '../game'
require_relative './batch_scores/batch_scores_request_builder'
require_relative './create/create_request_builder'
require_relative './item/with_match_item_request_builder'
require_relative './matches'

module TeamBattlesSdk
    module Generated
        module Game
            module Matches
                ##
                # Builds and executes requests for operations under #game#matches
                class MatchesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder

                    ##
                    # The batchScores property
                    def batch_scores()
                        return TeamBattlesSdk::Generated::Game::Matches::BatchScores::BatchScoresRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    # The create property
                    def create()
                        return TeamBattlesSdk::Generated::Game::Matches::Create::CreateRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ##
                    ## Gets an item from the TeamBattlesSdk::Generated.game.matches.item collection
                    ## @param match_id Match ID.
                    ## @return a with_match_item_request_builder
                    ##
                    def by_match_id(match_id)
                        raise StandardError, 'match_id cannot be null' if match_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["matchId"] = match_id
                        return TeamBattlesSdk::Generated::Game::Matches::Item::WithMatchItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ##
                    ## Instantiates a new MatchesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ##
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/game/matches")
                    end
                    ##
                    ## Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
                    ## @param body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of matches_post_response
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
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Game::Matches::MatchesPostResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ##
                    ## Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
                    ## @param body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
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
                    ## @return a matches_request_builder
                    ##
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return MatchesRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

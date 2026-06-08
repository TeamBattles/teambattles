require 'microsoft_kiota_abstractions'
require_relative '../../models/error'
require_relative '../../models/game_rank_list_response'
require_relative '../../models/game_rank_upsert_body'
require_relative '../../models/game_rank_upsert_response'
require_relative '../../team_battles_sdk::_generated'
require_relative '../user'
require_relative './game_ranks'
require_relative './item/with_game_item_request_builder'

module TeamBattlesSdk
    module Generated
        module User
            module GameRanks
                ## 
                # Builds and executes requests for operations under #user#game-ranks
                class GameRanksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Gets an item from the TeamBattlesSdk::Generated.user.gameRanks.item collection
                    ## @param game_id Game definition ID of the rank to delete.
                    ## @return a with_game_item_request_builder
                    ## 
                    def by_game_id(game_id)
                        raise StandardError, 'game_id cannot be null' if game_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["gameId"] = game_id
                        return TeamBattlesSdk::Generated::User::GameRanks::Item::WithGameItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new GameRanksRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/user/game-ranks")
                    end
                    ## 
                    ## Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of game_rank_list_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["401"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["403"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameRankListResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
                    ## @param body Upsert the API key owner's rank for one (gameId, mode) slot.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of game_rank_upsert_response
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
                        error_mapping["429"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        error_mapping["500"] = lambda {|pn| TeamBattlesSdk::Generated::Models::Error.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| TeamBattlesSdk::Generated::Models::GameRankUpsertResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
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
                    ## Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
                    ## @param body Upsert the API key owner's rank for one (gameId, mode) slot.
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
                    ## @return a game_ranks_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return GameRanksRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end

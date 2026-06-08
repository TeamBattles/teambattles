require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './chat/chat_request_builder'
require_relative './game/game_request_builder'
require_relative './games/games_request_builder'
require_relative './leaderboards/leaderboards_request_builder'
require_relative './leagues/leagues_request_builder'
require_relative './matches/matches_request_builder'
require_relative './orgs/orgs_request_builder'
require_relative './strategies/strategies_request_builder'
require_relative './streams/streams_request_builder'
require_relative './teams/teams_request_builder'
require_relative './team_battles_sdk::_generated'
require_relative './tickets/tickets_request_builder'
require_relative './twitch/twitch_request_builder'
require_relative './uploads/uploads_request_builder'
require_relative './user/user_request_builder'
require_relative './users/users_request_builder'
require_relative './webhooks/webhooks_request_builder'

module TeamBattlesSdk
    module Generated
        ## 
        # The main entry point of the SDK, exposes the configuration and the fluent API.
        class TeamBattlesApiClient < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # The chat property
            def chat()
                return TeamBattlesSdk::Generated::Chat::ChatRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The game property
            def game()
                return TeamBattlesSdk::Generated::Game::GameRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The games property
            def games()
                return TeamBattlesSdk::Generated::Games::GamesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The leaderboards property
            def leaderboards()
                return TeamBattlesSdk::Generated::Leaderboards::LeaderboardsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The leagues property
            def leagues()
                return TeamBattlesSdk::Generated::Leagues::LeaguesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The matches property
            def matches()
                return TeamBattlesSdk::Generated::Matches::MatchesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The orgs property
            def orgs()
                return TeamBattlesSdk::Generated::Orgs::OrgsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The strategies property
            def strategies()
                return TeamBattlesSdk::Generated::Strategies::StrategiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The streams property
            def streams()
                return TeamBattlesSdk::Generated::Streams::StreamsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The teams property
            def teams()
                return TeamBattlesSdk::Generated::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The tickets property
            def tickets()
                return TeamBattlesSdk::Generated::Tickets::TicketsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The twitch property
            def twitch()
                return TeamBattlesSdk::Generated::Twitch::TwitchRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The uploads property
            def uploads()
                return TeamBattlesSdk::Generated::Uploads::UploadsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The user property
            def user()
                return TeamBattlesSdk::Generated::User::UserRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The users property
            def users()
                return TeamBattlesSdk::Generated::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The webhooks property
            def webhooks()
                return TeamBattlesSdk::Generated::Webhooks::WebhooksRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new TeamBattlesApiClient and sets the default values.
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(request_adapter)
                super(Hash.new, request_adapter, "{+baseurl}")
                MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
                MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
                if @request_adapter.get_base_url.nil? || @request_adapter.get_base_url.empty?
                    @request_adapter.set_base_url('https://teambattles.gg/api/v1')
                end
                @path_parameters['baseurl'] = @request_adapter.get_base_url
            end
        end
    end
end

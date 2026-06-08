// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:microsoft_kiota_serialization_form/microsoft_kiota_serialization_form.dart';
import 'package:microsoft_kiota_serialization_json/microsoft_kiota_serialization_json.dart';
import 'package:microsoft_kiota_serialization_multipart/microsoft_kiota_serialization_multipart.dart';
import 'package:microsoft_kiota_serialization_text/microsoft_kiota_serialization_text.dart';
import './chat/chat_request_builder.dart';
import './game/game_request_builder.dart';
import './games/games_request_builder.dart';
import './leaderboards/leaderboards_request_builder.dart';
import './leagues/leagues_request_builder.dart';
import './matches/matches_request_builder.dart';
import './orgs/orgs_request_builder.dart';
import './strategies/strategies_request_builder.dart';
import './streams/streams_request_builder.dart';
import './teams/teams_request_builder.dart';
import './tickets/tickets_request_builder.dart';
import './twitch/twitch_request_builder.dart';
import './uploads/uploads_request_builder.dart';
import './user/user_request_builder.dart';
import './users/users_request_builder.dart';
import './webhooks/webhooks_request_builder.dart';

/// auto generated
/// The main entry point of the SDK, exposes the configuration and the fluent API.
class TeamBattlesApiClient extends BaseRequestBuilder<TeamBattlesApiClient> {
    ///  The chat property
    ChatRequestBuilder get chat {
        return ChatRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The game property
    GameRequestBuilder get game {
        return GameRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The games property
    GamesRequestBuilder get games {
        return GamesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The leaderboards property
    LeaderboardsRequestBuilder get leaderboards {
        return LeaderboardsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The leagues property
    LeaguesRequestBuilder get leagues {
        return LeaguesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The orgs property
    OrgsRequestBuilder get orgs {
        return OrgsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The strategies property
    StrategiesRequestBuilder get strategies {
        return StrategiesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The streams property
    StreamsRequestBuilder get streams {
        return StreamsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The tickets property
    TicketsRequestBuilder get tickets {
        return TicketsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The twitch property
    TwitchRequestBuilder get twitch {
        return TwitchRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The uploads property
    UploadsRequestBuilder get uploads {
        return UploadsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The user property
    UserRequestBuilder get user {
        return UserRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The users property
    UsersRequestBuilder get users {
        return UsersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The webhooks property
    WebhooksRequestBuilder get webhooks {
        return WebhooksRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TeamBattlesApiClient clone() {
        return TeamBattlesApiClient(requestAdapter);
    }
    /// Instantiates a new [TeamBattlesApiClient] and sets the default values.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamBattlesApiClient(RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}", {}) {
        ApiClientBuilder.registerDefaultSerializer(JsonSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(TextSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(FormSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultSerializer(MultipartSerializationWriterFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(JsonParseNodeFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(FormParseNodeFactory.new);
        ApiClientBuilder.registerDefaultDeserializer(TextParseNodeFactory.new);
        if (requestAdapter.baseUrl == null || requestAdapter.baseUrl!.isEmpty) {
            requestAdapter.baseUrl = 'https://teambattles.gg/api/v1';
        }
        pathParameters['baseurl'] = requestAdapter.baseUrl;
    }
}

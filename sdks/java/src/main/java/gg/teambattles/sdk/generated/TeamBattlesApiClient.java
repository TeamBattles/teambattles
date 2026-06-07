package gg.teambattles.sdk.generated;

import com.microsoft.kiota.ApiClientBuilder;
import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.serialization.FormParseNodeFactory;
import com.microsoft.kiota.serialization.FormSerializationWriterFactory;
import com.microsoft.kiota.serialization.JsonParseNodeFactory;
import com.microsoft.kiota.serialization.JsonSerializationWriterFactory;
import com.microsoft.kiota.serialization.MultipartSerializationWriterFactory;
import com.microsoft.kiota.serialization.ParseNodeFactoryRegistry;
import com.microsoft.kiota.serialization.SerializationWriterFactoryRegistry;
import com.microsoft.kiota.serialization.TextParseNodeFactory;
import com.microsoft.kiota.serialization.TextSerializationWriterFactory;
import gg.teambattles.sdk.generated.game.GameRequestBuilder;
import gg.teambattles.sdk.generated.games.GamesRequestBuilder;
import gg.teambattles.sdk.generated.leaderboards.LeaderboardsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.LeaguesRequestBuilder;
import gg.teambattles.sdk.generated.matches.MatchesRequestBuilder;
import gg.teambattles.sdk.generated.orgs.OrgsRequestBuilder;
import gg.teambattles.sdk.generated.teams.TeamsRequestBuilder;
import gg.teambattles.sdk.generated.twitch.TwitchRequestBuilder;
import gg.teambattles.sdk.generated.user.UserRequestBuilder;
import gg.teambattles.sdk.generated.users.UsersRequestBuilder;
import gg.teambattles.sdk.generated.webhooks.WebhooksRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * The main entry point of the SDK, exposes the configuration and the fluent API.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamBattlesApiClient extends BaseRequestBuilder {
    /**
     * The game property
     * @return a {@link GameRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GameRequestBuilder game() {
        return new GameRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The games property
     * @return a {@link GamesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GamesRequestBuilder games() {
        return new GamesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The leaderboards property
     * @return a {@link LeaderboardsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LeaderboardsRequestBuilder leaderboards() {
        return new LeaderboardsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The leagues property
     * @return a {@link LeaguesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LeaguesRequestBuilder leagues() {
        return new LeaguesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The matches property
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder matches() {
        return new MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The orgs property
     * @return a {@link OrgsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OrgsRequestBuilder orgs() {
        return new OrgsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The teams property
     * @return a {@link TeamsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TeamsRequestBuilder teams() {
        return new TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The twitch property
     * @return a {@link TwitchRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TwitchRequestBuilder twitch() {
        return new TwitchRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The user property
     * @return a {@link UserRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public UserRequestBuilder user() {
        return new UserRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The users property
     * @return a {@link UsersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public UsersRequestBuilder users() {
        return new UsersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The webhooks property
     * @return a {@link WebhooksRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WebhooksRequestBuilder webhooks() {
        return new WebhooksRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link TeamBattlesApiClient} and sets the default values.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamBattlesApiClient(@jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}");
        this.pathParameters = new HashMap<>();
        ApiClientBuilder.registerDefaultSerializer(() -> new JsonSerializationWriterFactory());
        ApiClientBuilder.registerDefaultSerializer(() -> new TextSerializationWriterFactory());
        ApiClientBuilder.registerDefaultSerializer(() -> new FormSerializationWriterFactory());
        ApiClientBuilder.registerDefaultSerializer(() -> new MultipartSerializationWriterFactory());
        ApiClientBuilder.registerDefaultDeserializer(() -> new JsonParseNodeFactory());
        ApiClientBuilder.registerDefaultDeserializer(() -> new FormParseNodeFactory());
        ApiClientBuilder.registerDefaultDeserializer(() -> new TextParseNodeFactory());
        if (requestAdapter.getBaseUrl() == null || requestAdapter.getBaseUrl().isEmpty()) {
            requestAdapter.setBaseUrl("https://teambattles.gg/api/v1");
        }
        pathParameters.put("baseurl", requestAdapter.getBaseUrl());
    }
}

package gg.teambattles.sdk.generated.matches.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.matches.item.accept.AcceptRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.acceptances.AcceptancesRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.attendance.AttendanceRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.cancel.CancelRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.challenges.ChallengesRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.chat.ChatRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.forfeit.ForfeitRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.lobbycode.LobbyCodeRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.players.PlayersRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.publish.PublishRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.ready.ReadyRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.scores.ScoresRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.start.StartRequestBuilder;
import gg.teambattles.sdk.generated.models.ApiMatchDetailResponse;
import gg.teambattles.sdk.generated.models.Error;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches/{matchId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithMatchItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The accept property
     * @return a {@link AcceptRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public AcceptRequestBuilder accept() {
        return new AcceptRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The acceptances property
     * @return a {@link AcceptancesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public AcceptancesRequestBuilder acceptances() {
        return new AcceptancesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The attendance property
     * @return a {@link AttendanceRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public AttendanceRequestBuilder attendance() {
        return new AttendanceRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The cancel property
     * @return a {@link CancelRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CancelRequestBuilder cancel() {
        return new CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The challenges property
     * @return a {@link ChallengesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ChallengesRequestBuilder challenges() {
        return new ChallengesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The chat property
     * @return a {@link ChatRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ChatRequestBuilder chat() {
        return new ChatRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The forfeit property
     * @return a {@link ForfeitRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ForfeitRequestBuilder forfeit() {
        return new ForfeitRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The lobbyCode property
     * @return a {@link LobbyCodeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LobbyCodeRequestBuilder lobbyCode() {
        return new LobbyCodeRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The players property
     * @return a {@link PlayersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PlayersRequestBuilder players() {
        return new PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The publish property
     * @return a {@link PublishRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PublishRequestBuilder publish() {
        return new PublishRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The ready property
     * @return a {@link ReadyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ReadyRequestBuilder ready() {
        return new ReadyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The scores property
     * @return a {@link ScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ScoresRequestBuilder scores() {
        return new ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The start property
     * @return a {@link StartRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StartRequestBuilder start() {
        return new StartRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithMatchItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMatchItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithMatchItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMatchItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}", rawUrl);
    }
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @return a {@link ApiMatchDetailResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailResponse get() {
        return get(null);
    }
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ApiMatchDetailResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ApiMatchDetailResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ApiMatchDetailResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link WithMatchItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithMatchItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithMatchItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}

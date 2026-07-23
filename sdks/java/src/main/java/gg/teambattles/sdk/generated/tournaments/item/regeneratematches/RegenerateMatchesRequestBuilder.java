package gg.teambattles.sdk.generated.tournaments.item.regeneratematches;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentRegenerateMatchesRequestBody;
import gg.teambattles.sdk.generated.models.TournamentRegenerateMatchesResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/regenerate-matches
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RegenerateMatchesRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RegenerateMatchesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RegenerateMatchesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches", pathParameters);
    }
    /**
     * Instantiates a new {@link RegenerateMatchesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RegenerateMatchesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches", rawUrl);
    }
    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param body Confirmation payload for the match-regeneration repair lever.
     * @return a {@link TournamentRegenerateMatchesResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentRegenerateMatchesResponse post(@jakarta.annotation.Nonnull final TournamentRegenerateMatchesRequestBody body) {
        return post(body, null);
    }
    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param body Confirmation payload for the match-regeneration repair lever.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentRegenerateMatchesResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentRegenerateMatchesResponse post(@jakarta.annotation.Nonnull final TournamentRegenerateMatchesRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentRegenerateMatchesResponse::createFromDiscriminatorValue);
    }
    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param body Confirmation payload for the match-regeneration repair lever.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentRegenerateMatchesRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
     * @param body Confirmation payload for the match-regeneration repair lever.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentRegenerateMatchesRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link RegenerateMatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RegenerateMatchesRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RegenerateMatchesRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}

package gg.teambattles.sdk.generated.teams.item.matches;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.MatchesRequestBody;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /teams/{identifier}/matches
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/matches", pathParameters);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/matches", rawUrl);
    }
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @return a {@link MatchesPostResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public MatchesPostResponse post(@jakarta.annotation.Nonnull final MatchesRequestBody body) {
        return post(body, null);
    }
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link MatchesPostResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public MatchesPostResponse post(@jakarta.annotation.Nonnull final MatchesRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, MatchesPostResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final MatchesRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final MatchesRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new MatchesRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}

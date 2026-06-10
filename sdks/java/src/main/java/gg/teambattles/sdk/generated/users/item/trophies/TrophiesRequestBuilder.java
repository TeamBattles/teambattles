package gg.teambattles.sdk.generated.users.item.trophies;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /users/{identifier}/trophies
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TrophiesRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link TrophiesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TrophiesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/users/{identifier}/trophies", pathParameters);
    }
    /**
     * Instantiates a new {@link TrophiesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TrophiesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/users/{identifier}/trophies", rawUrl);
    }
    /**
     * Returns every trophy awarded to the user, sorted newest first by awardedAt, as an unpaginated list with a count (no cursor or limit). The identifier is a username or Convex user ID. Visible only when the target profile is effectively public, or when the profile belongs to the API key owner (self-view is always treated as public); a non-self limited or private profile returns 403. An unknown or banned user returns 404. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
     * @return a {@link TrophiesGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TrophiesGetResponse get() {
        return get(null);
    }
    /**
     * Returns every trophy awarded to the user, sorted newest first by awardedAt, as an unpaginated list with a count (no cursor or limit). The identifier is a username or Convex user ID. Visible only when the target profile is effectively public, or when the profile belongs to the API key owner (self-view is always treated as public); a non-self limited or private profile returns 403. An unknown or banned user returns 404. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TrophiesGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TrophiesGetResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TrophiesGetResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns every trophy awarded to the user, sorted newest first by awardedAt, as an unpaginated list with a count (no cursor or limit). The identifier is a username or Convex user ID. Visible only when the target profile is effectively public, or when the profile belongs to the API key owner (self-view is always treated as public); a non-self limited or private profile returns 403. An unknown or banned user returns 404. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns every trophy awarded to the user, sorted newest first by awardedAt, as an unpaginated list with a count (no cursor or limit). The identifier is a username or Convex user ID. Visible only when the target profile is effectively public, or when the profile belongs to the API key owner (self-view is always treated as public); a non-self limited or private profile returns 403. An unknown or banned user returns 404. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
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
     * @return a {@link TrophiesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TrophiesRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new TrophiesRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}

package gg.teambattles.sdk.generated.users.item.connections;

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
 * Builds and executes requests for operations under /users/{identifier}/connections
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ConnectionsRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ConnectionsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ConnectionsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/users/{identifier}/connections", pathParameters);
    }
    /**
     * Instantiates a new {@link ConnectionsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ConnectionsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/users/{identifier}/connections", rawUrl);
    }
    /**
     * Returns a user&apos;s linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection&apos;s platform matches one of the user&apos;s linked OAuth providers, not the connection&apos;s self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
     * @return a {@link ConnectionsGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ConnectionsGetResponse get() {
        return get(null);
    }
    /**
     * Returns a user&apos;s linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection&apos;s platform matches one of the user&apos;s linked OAuth providers, not the connection&apos;s self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ConnectionsGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ConnectionsGetResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, ConnectionsGetResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns a user&apos;s linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection&apos;s platform matches one of the user&apos;s linked OAuth providers, not the connection&apos;s self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns a user&apos;s linked-account connections. Access requires a public profile or self: a non-self viewer of a limited or private profile gets 403, which is stricter than the stats, teams, and organizations endpoints that also allow limited profiles. Non-self responses include only the connections the user marked visible on their profile; self responses include all of them. isVerified is true when the connection&apos;s platform matches one of the user&apos;s linked OAuth providers, not the connection&apos;s self-reported flag. Not paginated: returns the full matching set as connections plus a count, in no guaranteed order. Banned users return 404. Requires users.profile:read.
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
     * @return a {@link ConnectionsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ConnectionsRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ConnectionsRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}

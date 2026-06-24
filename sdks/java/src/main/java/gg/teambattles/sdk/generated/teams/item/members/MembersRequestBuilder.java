package gg.teambattles.sdk.generated.teams.item.members;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.teams.item.members.item.WithUserItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /teams/{identifier}/members
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MembersRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.teams.item.members.item collection
     * @param userId Convex user ID of the member to remove.
     * @return a {@link WithUserItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithUserItemRequestBuilder byUserId(@jakarta.annotation.Nonnull final String userId) {
        Objects.requireNonNull(userId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("userId", userId);
        return new WithUserItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link MembersRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MembersRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/members", pathParameters);
    }
    /**
     * Instantiates a new {@link MembersRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MembersRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/members", rawUrl);
    }
    /**
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row&apos;s id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
     * @return a {@link MembersGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public MembersGetResponse get() {
        return get(null);
    }
    /**
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row&apos;s id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link MembersGetResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public MembersGetResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, MembersGetResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row&apos;s id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the full active roster when the team is public or the API key owner is an active team member; otherwise responds 403. The team is resolved by slug or Convex team ID and must be active, returning 404 if not found. Rows are sorted by role - captains first, then co-captains, then members - and each row&apos;s id is the membership row ID, not the user ID. Not paginated: every active member is returned in one response with a count, and there is no limit, cursor, or page token. Requires teams.roster:read.
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
     * @return a {@link MembersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MembersRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new MembersRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}

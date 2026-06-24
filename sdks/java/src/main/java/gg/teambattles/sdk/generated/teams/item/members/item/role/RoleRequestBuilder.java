package gg.teambattles.sdk.generated.teams.item.members.item.role;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.SetTeamMemberRoleBody;
import gg.teambattles.sdk.generated.models.SetTeamMemberRoleResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /teams/{identifier}/members/{userId}/role
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RoleRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RoleRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoleRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/members/{userId}/role", pathParameters);
    }
    /**
     * Instantiates a new {@link RoleRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoleRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/members/{userId}/role", rawUrl);
    }
    /**
     * Sets a team member&apos;s role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param body Set a team member&apos;s role.
     * @return a {@link SetTeamMemberRoleResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public SetTeamMemberRoleResponse patch(@jakarta.annotation.Nonnull final SetTeamMemberRoleBody body) {
        return patch(body, null);
    }
    /**
     * Sets a team member&apos;s role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param body Set a team member&apos;s role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link SetTeamMemberRoleResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public SetTeamMemberRoleResponse patch(@jakarta.annotation.Nonnull final SetTeamMemberRoleBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, SetTeamMemberRoleResponse::createFromDiscriminatorValue);
    }
    /**
     * Sets a team member&apos;s role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param body Set a team member&apos;s role.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final SetTeamMemberRoleBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Sets a team member&apos;s role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
     * @param body Set a team member&apos;s role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final SetTeamMemberRoleBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.PATCH, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PatchRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link RoleRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RoleRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RoleRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PatchRequestConfiguration extends BaseRequestConfiguration {
    }
}

package gg.teambattles.sdk.generated.orgs.item.members.item.role;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.SetOrgMemberRoleBody;
import gg.teambattles.sdk.generated.models.SetOrgMemberRoleResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /orgs/{identifier}/members/{userId}/role
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RoleRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RoleRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoleRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/{identifier}/members/{userId}/role", pathParameters);
    }
    /**
     * Instantiates a new {@link RoleRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoleRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/{identifier}/members/{userId}/role", rawUrl);
    }
    /**
     * Sets an organization member&apos;s role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
     * @param body Set an organization member&apos;s role.
     * @return a {@link SetOrgMemberRoleResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public SetOrgMemberRoleResponse patch(@jakarta.annotation.Nonnull final SetOrgMemberRoleBody body) {
        return patch(body, null);
    }
    /**
     * Sets an organization member&apos;s role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
     * @param body Set an organization member&apos;s role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link SetOrgMemberRoleResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public SetOrgMemberRoleResponse patch(@jakarta.annotation.Nonnull final SetOrgMemberRoleBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, SetOrgMemberRoleResponse::createFromDiscriminatorValue);
    }
    /**
     * Sets an organization member&apos;s role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
     * @param body Set an organization member&apos;s role.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final SetOrgMemberRoleBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Sets an organization member&apos;s role to ADMIN, MANAGER, or MEMBER. The caller (key owner) must be the organization owner. The owner role cannot be assigned or removed this way - use ownership transfer instead. Requires orgs.roster:read-write.
     * @param body Set an organization member&apos;s role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final SetOrgMemberRoleBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
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
